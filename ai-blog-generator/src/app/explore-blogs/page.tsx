import { Card, CardContent } from '@/components/ui/card';
import { getAllSharedBlogs } from '@/lib/supabase';
import { currentUser } from '@clerk/nextjs/server';
import Image from 'next/image';
import Link from 'next/link';
import { formatDate } from '@/lib/utils';
import { LikeButton } from '@/components/LikeButton';
import Search from '@/components/Search';
import clsx from 'clsx';

export default async function Explore_Blogs({
  searchParams }: { searchParams: { [key: string]: string | string[] | undefined } }
) {
  const params = await searchParams;
  const page = typeof params.page === 'string' ? Number(params.page) : 1
  const limit = typeof params.limit === 'string' ? Number(params.limit) : 12
  const search = typeof params.search === 'string' ? params.search : undefined
  const url = 'explore-blogs'

  const user = await currentUser()
  if (!user) {
    return { error: 'User not authenticated' }
  }
  const blogs = await getAllSharedBlogs({ query: search, page, limit });
  const hitLimit = !blogs || blogs.length < limit;

  return (
    <>
      <div className="mt-5 ml-5 sm:flex sm:justify-between mr-2">
        <h1 className="font-bold text-2xl md:text-4xl">Explore Shared Blogs</h1>
        <div className='flex flex-col gap-2 sm:flex-row mt-4'>
          <Search search={search} url={url} />
          <div className='flex flex-row justify-center gap-2'>
            <Link
              href={{
                pathname: '/explore-blogs',
                query: {
                  ...(search ? { search } : {}),
                  page: page > 1 ? page - 1 : 1
                }
              }}
              className={clsx('rounded border bg-gray-100 px-2 py-1 text-sm text-gray-800',
                page <= 1 && 'pointer-events-none opacity-50'
              )}>
              Previous
            </Link>
            <Link
              href={{
                pathname: '/explore-blogs',
                query: {
                  ...(search ? { search } : {}),
                  page: page + 1
                }
              }}
              className={clsx('rounded border bg-gray-100 px-3 py-1 text-sm text-gray-800',
                hitLimit && 'pointer-events-none opacity-50'
              )}
            >
              Next
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
                    src={blog.imageUrl}
                    width={400}
                    height={400}
                    className='w-full'
                  />

                  <div className='px-4 pb-3 pt-2'>
                    <h3 className='font-medium'>{blog.title}</h3>
                    <p className='text-xs text-gray-600'>
                      {formatDate(blog.created_at)}
                    </p>
                    <LikeButton blogId={blog.id} userId={user.id} />
                  </div>
                </Link>
              </CardContent>
            </Card>
          ))
        ) : (
          <div className='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2'>
            <h1 className='text-2xl'>Content Not Found</h1>
          </div>
        )}
      </div>
    </>
  );
}