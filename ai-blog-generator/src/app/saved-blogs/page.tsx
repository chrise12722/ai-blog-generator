//import Form from '@/components/form'
import { Card, CardContent } from '@/components/ui/card';
import { getAllUserBlogs, isBlogShared } from '@/lib/supabase';
import { auth, currentUser } from '@clerk/nextjs/server';
import Image from 'next/image';
import Link from 'next/link';
import { formatDate } from '@/lib/utils';
import clsx from 'clsx';
import Search from '@/components/Search';

export default async function Saved_Blogs({
  searchParams }: {
    searchParams: { [key: string]: string | string[] | undefined }
  }) {
  const params = await searchParams;
  const page = typeof params.page === 'string' ? Number(params.page) : 1
  const limit = typeof params.limit === 'string' ? Number(params.limit) : 10
  const search = typeof params.search === 'string' ? params.search : undefined
  const url = 'saved-blogs'

  const user = await currentUser()
  if (!user) {
    return { error: 'User not authenticated' }
  }
  const blogs = await getAllUserBlogs({ userId: user.id, query: search, page, limit });
  const hitLimit = !blogs || Array.isArray(blogs) && blogs.length < limit;


  return (
    <>
      <div className="mt-5 ml-5 flex justify-between mr-2">
        <h1 className="font-bold text-4xl">View All of Your Saved Blogs</h1>
        <div className='flex flex-row gap-2'>
          <Search search={search} url={url} />

          <Link
            href={{
              pathname: '/saved-blogs',
              query: {
                ...(search ? { search } : {}),
                page: page > 1 ? page - 1 : 1
              }
            }}
            className={clsx('rounded border bg-gray-100 px-3 py-1 text-sm text-gray-800',
              page <= 1 && 'pointer-events-none opacity-50'
            )}>
            Previous
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
            Next
          </Link>
        </div>
      </div>
      <div className='flex flex-row flex-wrap m-2'>
        {Array.isArray(blogs) && blogs.map((blog: any) => (
          <Card key={blog.id} className='overflow-hidden w-1/2'>
            <CardContent className='p-0'>
              <Link href={`/user-blog/${blog.id}`} key={blog.id}>
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
                </div>
              </Link>
            </CardContent>
          </Card>
        ))}
      </div>
    </>


  );
}