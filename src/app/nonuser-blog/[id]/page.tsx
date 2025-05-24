import Link from 'next/link'
import Image from 'next/image'
import Markdown from 'react-markdown'
import { getSharedBlogById } from '@/lib/supabase'
import { ChevronLeft } from 'lucide-react'
import { currentUser } from '@clerk/nextjs/server'
import { LikeButton } from '@/components/LikeButton'
import { LikeStructure } from '@/interfaces'


export default async function Nonuser_Blog({ params }: { params: { id: string } }) {
  const user = await currentUser()
  if (!user) {
    return <div>User not authenticated</div>
  }

  const blogId = Number(params.id)
  const blog = await getSharedBlogById(blogId)

  if (!blog.content || !blog.image_url) {
    return <div>Blog not found</div>
  }

  return (
    <section>
      <div className='flex justify-between mr-2 mb-2'>
        <Link
          href='/explore-blogs'
          className='ml-2 inline-flex items-center text-sm font-light text-gray'
        >
          <ChevronLeft strokeWidth={1} size={20} />
          <span>Go Back</span>
        </Link>
        <div className='rounded-xl p-2'>
          <LikeButton blogId={blogId} userId={user.id} liked={blog.user_likes.some((like) => like.user_id === user.id)} likes={blog.likes} />
        </div>
      </div>
      <section className='prose mt-6 ml-6 mr-6 flex flex-col min-h-full'>
        <Image className='self-center' src={blog.image_url} width={1000} height={500} alt='' />
        <div className='mt-4 text-base'>
          <Markdown>{blog.content}</Markdown>
        </div>
      </section>
    </section>
  )
}