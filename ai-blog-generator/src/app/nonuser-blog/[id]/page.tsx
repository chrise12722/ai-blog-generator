import Link from 'next/link'
import Image from 'next/image'
import Markdown from 'react-markdown'
import { getSharedBlogById, isBlogShared } from '@/lib/supabase'
import { ChevronLeft } from 'lucide-react'
import { auth, currentUser } from '@clerk/nextjs/server'
import { BlogStructure } from "@/interfaces";
import { LikeButton } from '@/components/likeButton/LikeButton'


export default async function NonUser_Blog({ params }: { params: { id: string } }) {
  const user = await currentUser()
  if (!user) {
    return <div>User not authenticated</div>
  }

  const blogId = Number(params.id)
  const { content, imageUrl } = await getSharedBlogById(blogId)

  if (!content || !imageUrl) {
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
          <LikeButton blogId={blogId} userId={user.id} />
        </div>
      </div>
      <section className='prose mt-6 ml-6 mr-6 flex flex-col'>
        <Image className='self-center' src={imageUrl} width={1000} height={500} alt='' />
        <Markdown>{content}</Markdown>
      </section>
    </section>
  )
}