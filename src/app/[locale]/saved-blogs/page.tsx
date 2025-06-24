import React from 'react';
import clsx from 'clsx';
import { getTranslations } from 'next-intl/server';
import { currentUser } from '@clerk/nextjs/server';
import { toast } from 'sonner';
import Image from 'next/image';
import Link from 'next/link';
import Search from '@/components/Search';
import { formatDate } from '@/utils/utils';
import { Card, CardContent } from '@/components/ui/card';
import { getAllUserBlogs, isBlogShared, viewLikes } from '@/utils/supabase';
import { BlogStructure } from '@/interfaces';


export default async function SavedBlogs({
  searchParams
}: {
  searchParams: Promise<{ [key: string]: string | string[] | undefined }>,
}) {
  const searchParamsObj = await searchParams;
  // Params for getAllSharedBlogs function
  const page = typeof searchParamsObj.page === 'string' ? Number(searchParamsObj.page) : 1;
  const limit = typeof searchParamsObj.limit === 'string' ? Number(searchParamsObj.limit) : 12;
  const search = Array.isArray(searchParamsObj.search) ? searchParamsObj.search[0] : searchParamsObj.search;

  const t = await getTranslations('SavedBlogs')

  const user = await currentUser();
  if (!user) {
    return { error: 'User not authenticated' };
  }
  const blogs = await getAllUserBlogs({ user_id: user.id, query: search, page, limit });
  if (!Array.isArray(blogs) && blogs.error) {
    toast(blogs.error);
  }
  const hitLimit = !blogs || Array.isArray(blogs) && blogs.length < limit;

  // Display like count if blog is shared
  const sharedStatuses = Array.isArray(blogs) ? await Promise.all(blogs.map(blog => isBlogShared(blog.id))) : [];
  const likesArray = Array.isArray(blogs) ? await Promise.all(blogs.map(blog => viewLikes(blog.id))) : [];

  return (
    <>
      <div className='mt-5 ml-5 sm:flex sm:justify-between mr-2'>
        <h1 className='font-bold text-2xl/6 md:text-3xl lg:text-4xl'>{t('View All of Your Saved Blogs')}</h1>
        <div className='flex flex-col gap-2 sm:flex-row mt-4'>
          <Search search={search} />
          <div className='flex flex-row justify-center gap-2'>
            <Link
              href={{
                pathname: '/saved-blogs',
                query: {
                  ...(search ? { search } : {}),
                  page: page > 1 ? page - 1 : 1
                }
              }}
              className={clsx('rounded border bg-gray-100 px-2 py-1 text-sm text-gray-800',
                page <= 1 && 'pointer-events-none opacity-50'
              )}>
              {t('Previous')}
            </Link>
            <Link
              href={{
                pathname: '/saved-blogs',
                query: {
                  ...(search ? { search } : {}),
                  page: page + 1
                }
              }}
              className={clsx('rounded border bg-gray-100 px-3 py-1 text-sm text-gray-800',
                hitLimit && 'pointer-events-none opacity-50'
              )}
            >
              {t('Next')}
            </Link>
          </div>
        </div>
      </div>
      <div className='flex flex-row flex-wrap m-2 relative min-h-[50vh]'>
        {Array.isArray(blogs) && blogs.length > 0 ? (
          blogs.map((blog: BlogStructure, index: number) => (
            <Card key={blog.id} className='overflow-hidden w-full sm:w-1/2 xl:w-1/3 2xl:w-1/4'>
              <CardContent className='p-0'>
                <Link href={`/user-blog/${blog.id}`} key={blog.id}>
                  <Image
                    alt=''
                    src={blog.image_url}
                    width={400}
                    height={400}
                    className='w-full'
                  />

                  <div className='px-4 pb-3 pt-2'>
                    <h3 className='font-medium'>{blog.title}</h3>
                    <p className='text-xs text-gray-600'>
                      {formatDate(String(blog.created_at))}
                    </p>
                    {sharedStatuses[index] &&
                      <p>
                        {likesArray[index]} {likesArray[index] === 1 ? 'Like' : 'Likes'}
                      </p>
                    }
                  </div>
                </Link>
              </CardContent>
            </Card>
          ))
        ) : (
          <div className='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2'>
            <h1 className='text-2xl'>{t('Content Not Found')}</h1>
          </div>
        )}
      </div>
    </>
  );
}