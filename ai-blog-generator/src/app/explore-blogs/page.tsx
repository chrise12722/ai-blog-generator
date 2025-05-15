import { Card, CardContent } from '@/components/ui/card';
import { getAllSharedBlogs } from '@/lib/supabase';
import { currentUser } from '@clerk/nextjs/server';
import Image from 'next/image';
import Link from 'next/link';
import { formatDate } from '@/lib/utils';
import { LikeButton } from '@/components/likeButton/LikeButton';

export default async function Explore_Blogs() {
  const user = await currentUser()
  if (!user) {
    return { error: 'User not authenticated' }
  }
  const blogs = await getAllSharedBlogs();

  return (
    <>
      <div className="mt-5 ml-5">
        <h1 className="font-bold text-4xl">Explore Shared Blogs</h1>
      </div>
      <div className='flex flex-row flex-wrap m-2'>
        {blogs?.map(blog => (
          <Card key={blog.id} className='overflow-hidden w-1/2'>
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
        ))}
      </div>
    </>
  );
}