import Link from 'next/link'
import Image from 'next/image'
import Markdown from 'react-markdown'
import { getBlogById } from '@/lib/supabase'
import { ChevronLeft } from 'lucide-react'
import { auth, currentUser } from '@clerk/nextjs/server'

export default async function Blog({ params }: { params: { id: string } }) {
  const user = await currentUser()
  if (!user) {
    return <div>User not authenticated</div>
  }

  const blogId = Number(params.id)
  const { content, imageUrl } = await getBlogById(blogId, user.id)

  if (!content || !imageUrl) {
    return <div>Blog not found</div>
  }

  return (
    <section>
      <Link
        href='/saved-blogs'
        className='ml-2 inline-flex items-center text-sm font-light text-gray'
      >
        <ChevronLeft strokeWidth={1} size={20} />
        <span>Go Back</span>
      </Link>

      <section className='prose mt-6 ml-6 mr-6 flex flex-col'>
        <Image className='self-center' src={imageUrl} width={1000} height={500} alt='' />
        <Markdown>{content}</Markdown>
      </section>
    </section>
  )
}