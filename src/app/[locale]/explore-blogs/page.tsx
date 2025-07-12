import React from 'react';
import Image from 'next/image';
import Link from 'next/link';
import clsx from 'clsx';
import { currentUser } from '@clerk/nextjs/server';
import { getTranslations } from 'next-intl/server';
import { Search } from '@/components/Search';
import { LikeStructure } from '@/interfaces';
import { formatDate } from '@/utils/utils';
import { LikeButton } from '@/components/LikeButton';
import { Card, CardContent } from '@/components/ui/card';
import { getAllSharedBlogs } from '@/utils/supabase';


export default async function ExploreBlogs({
  searchParams,
}: {
  searchParams: Promise<{ [key: string]: string | string[] | undefined }>,
}) {
  const params = await searchParams;
  // Params for getAllSharedBlogs function
  const page = typeof params.page === 'string' ? Number(params.page) : 1;
  const limit = typeof params.limit === 'string' ? Number(params.limit) : 12;
  const search = Array.isArray(params.search) ? params.search[0] : params.search;

  const t = await getTranslations('ExploreBlogs');

  const user = await currentUser();
  if (!user) {
    return (
      <div className="flex items-center justify-center min-h-[50vh]">
        <h1 className="text-2xl text-red-600">{t('Please sign in to view this page')}</h1>
      </div>
    );
  }
  const blogs = await getAllSharedBlogs({ query: search, page, limit });
  const hitLimit = !blogs || blogs.length < limit;

  return (
    <>
      <div className='mt-5 ml-5 sm:flex sm:justify-between mr-2'>
        <h1 className='font-bold text-2xl md:text-4xl'>{t('Explore Shared Blogs')}</h1>
        <div className='flex flex-col gap-2 sm:flex-row mt-4'>
          <Search search={search} />
          <div className='flex flex-row justify-center gap-2'>
            <Link
              href={{
                pathname: `/explore-blogs`,
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
                pathname: `/explore-blogs`,
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
      </div >
      <div className='flex flex-row flex-wrap m-2 relative min-h-[50vh]'>
        {Array.isArray(blogs) && blogs.length > 0 ? (
          blogs.map(blog => (
            <Card key={blog.id} className='overflow-hidden w-full sm:w-1/2 xl:w-1/3 2xl:w-1/4'>
              <CardContent className='p-0'>
                <Link href={`/nonuser-blog/${blog.id}`} key={blog.id}>
                  <Image
                    alt=''
                    src={blog.image_url}
                    width={400}
                    height={400}
                    className='w-full'
                  />

                  <div className='px-4 pb-3 pt-2'>
                    <h3 className='font-medium'>{blog.title}</h3>
                    <p className='text-sm'>
                      👤: {blog.username}
                    </p>
                    <p className='text-xs text-gray-600'>
                      {formatDate(blog.created_at)}
                    </p>
                    <LikeButton
                      blogId={blog.id}
                      userId={user.id}
                      liked={blog.user_likes?.some((like: LikeStructure) => like.user_id === user.id) ?? false}
                      likes={blog.likes}
                    />
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