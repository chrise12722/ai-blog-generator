import Image from "next/image";
import { getAllSharedBlogs } from "@/lib/supabase";
import { Card, CardContent } from "@/components/ui/card";
import Link from 'next/link';
import { formatDate } from "@/lib/utils";
import { viewLikes } from '@/lib/supabase';
import { SignInButton } from "@clerk/nextjs";
import { currentUser } from '@clerk/nextjs/server';
import React from "react";

export default async function Home() {
  const user = await currentUser()
  const blogs = await getAllSharedBlogs({ limit: 3 })
  return (
    <>
      <div className="mx-4 mt-4">
        <h1 className='font-bold text-4xl'>NeuroBlog</h1>
        <div className='bg-gray-300 h-40 mt-16 flex flex-col gap-4 justify-center items-center '>
          <h2 className='text-center text-xl md:text-3xl pt-4'>Get Started With Generating AI Blogs Today</h2>
          <div className='pb-4'>
            {!user && (
              <SignInButton>
                <button className='py-2 px-4 rounded hover:bg-blue-500 border-solid border-black hover:border-blue-500 text-black hover:text-white font-bold .transition duration-750 cursor-pointer'>Sign In</button>
              </SignInButton>
            )}
            {user && (
              <Link className='py-2 px-4 rounded hover:bg-blue-500 border-solid border-black hover:border-blue-500 text-black hover:text-white font-bold .transtion duration-750 cursor-pointer'
                href='/create-blog'
              >
                Create a Blog
              </Link>
            )}
          </div>
        </div>
        <div className="mt-8">
          <h2 className="text-xl min-[400px]:text-2xl md:text-3xl font-bold mb-4">Check Out The Most Popular Generated Blogs</h2>
          <div className="flex flex-row flex-wrap m-2 relative">
            {Array.isArray(blogs) && blogs.length > 0 ? (
              blogs.map(blog => (
                <Card key={blog.id} className='overflow-hidden w-full mb-1 sm:w-1/2 md:w-1/3'>
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
                        <p className='text-xs text-gray-600'>
                          {formatDate(blog.created_at)}
                        </p>
                        <p className='text-s'>{viewLikes(blog.id)} ❤️</p>
                      </div>
                    </Link>
                  </CardContent>
                </Card>))
            ) : (
              <p>Content Not Found</p>
            )
            }
          </div>
        </div>
      </div>
    </>
  )
}
