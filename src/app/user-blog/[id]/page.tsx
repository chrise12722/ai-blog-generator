import Link from 'next/link'
import Image from 'next/image'
import Markdown from 'react-markdown'
import { getBlogById, isBlogShared } from '@/lib/supabase'
import { ChevronLeft } from 'lucide-react'
import { currentUser } from '@clerk/nextjs/server'
import { ShareButtons } from '@/components/ShareButtons'
import { DeleteButton } from '@/components/DeleteButton'


export default async function User_Blog({ params }: { params: { id: string } }) {
  const user = await currentUser()
  if (!user) {
    return <div>User not authenticated</div>
  }

  const blogId = Number(await params.id)
  const { created_at, title, content, image_url } = await getBlogById(blogId, user.id)

  if (!content || !image_url) {
    return <div>Blog not found</div>
  }

  const currentBlog = { id: blogId, created_at: created_at, title, content, image_url, userId: user.id }
  const sharedBlog = await isBlogShared(blogId)

  return (
    <section>
      <div className='flex justify-between mr-2 mt-2'>
        <Link
          href='/saved-blogs'
          className='ml-2 inline-flex items-center text-sm font-light text-gray'
        >
          <ChevronLeft strokeWidth={1} size={20} />
          <span>Go Back</span>
        </Link>
        <div className='flex flex-row gap-1'>
          <ShareButtons blog={currentBlog} isShared={!!sharedBlog} userId={user.id} />
          <DeleteButton blogId={blogId} userId={user.id} />
        </div>
      </div>
      <section className='prose mt-6 ml-6 mr-6 flex flex-col min-h-full'>
        <Image className='self-center' src={image_url} width={1000} height={500} alt='' />
        <div className='mt-4 text-base'>
          <Markdown>{content}</Markdown>
        </div>
      </section>
    </section>
  )
}