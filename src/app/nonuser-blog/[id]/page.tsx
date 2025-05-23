import Link from 'next/link'
import Image from 'next/image'
import Markdown from 'react-markdown'
import { getSharedBlogById, isBlogShared } from '@/lib/supabase'
import { ChevronLeft } from 'lucide-react'
import { auth, currentUser } from '@clerk/nextjs/server'
import { BlogStructure } from "@/interfaces";
import { LikeButton } from '@/components/LikeButton'
import { LikeStructure } from '@/interfaces'


export default async function Nonuser_Blog({ params }: { params: { id: string } }) {
  const user = await currentUser()
  if (!user) {
    return <div>User not authenticated</div>
  }

  const blogId = Number(params.id)
  const blog = await getSharedBlogById(blogId)

  if (!blog.content || !blog.imageUrl) {
    return <div>Blog not found</div>
  }

  // const currentBlog = { id: blogId, created_at, title, content, imageUrl, userId: user.id }
  // const sharedBlog = await isBlogShared(blogId)

  return (
    <section>
      <div className="flex justify-between mr-2 mb-2">
        <Link
          href='/explore-blogs'
          className='ml-2 inline-flex items-center text-sm font-light text-gray'
        >
          <ChevronLeft strokeWidth={1} size={20} />
          <span>Go Back</span>
        </Link>
        <div className='rounded-xl p-2'>
          <LikeButton blogId={blogId} userId={user.id} liked={blog.user_likes.some((like: LikeStructure) => like.user_id === user.id)} likes={blog.likes} />
        </div>
      </div>
      <section className='prose mt-6 ml-6 mr-6 flex flex-col min-h-full'>
        <Image className='self-center ' src={blog.imageUrl} width={1000} height={500} alt='' />
        <div className='mt-4 text-base'>
          <Markdown>{blog.content}</Markdown>
        </div>
      </section>
    </section>
  )
}