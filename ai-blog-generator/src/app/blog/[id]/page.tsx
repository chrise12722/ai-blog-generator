import Link from 'next/link'
import Image from 'next/image'
import Markdown from 'react-markdown'
import { getBlogById } from '@/lib/supabase'
import { ChevronLeft } from 'lucide-react'
import { auth, currentUser } from '@clerk/nextjs/server'

export default async function Blog({ params }: { params: { id: string } }) {

  const user = await currentUser()
  if (!user) {
    return { error: 'User not authenticated' }
  }
  const { content, imageUrl } = await getBlogById(Number(params.id), user.id)
  console.log(imageUrl)

  return (
    <section>
      <Link
        href='/saved-blogs'
        className='ml-2 inline-flex items-center text-sm font-light text-gray'
      >
        <ChevronLeft strokeWidth={1} size={20} />
        <span>Go Back</span>
      </Link>

      <section className='prose mt-6'>
        <Image src={imageUrl} width={1792} height={1024} alt='' />
        <Markdown>{content}</Markdown>
      </section>
    </section>
  )
}