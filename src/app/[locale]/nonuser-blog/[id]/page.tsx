import React from 'react'
import { getTranslations } from 'next-intl/server'
import { notFound } from 'next/navigation'
import Image from 'next/image'
import Markdown from 'react-markdown'
import { ChevronLeft } from 'lucide-react'
import { currentUser } from '@clerk/nextjs/server'
import { getSharedBlogById } from '@/utils/supabase'
import { LikeButton } from '@/components/LikeButton'
import { Link } from '../../../../../i18n/navigation'




export default async function NonuserBlog({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const t = await getTranslations('NonuserBlog/UserBlog')
  const user = await currentUser();
  if (!user) {
    return <div>User not authenticated</div>;
  }

  const blogId = Number(id);
  const blog = await getSharedBlogById(blogId);

  if (!blog.content || !blog.image_url) {
    notFound();
  }

  return (
    <section>
      <div className='flex justify-between mr-2 mb-2'>
        <Link
          href={`/explore-blogs`}
          className='ml-2 inline-flex items-center text-sm font-light text-gray'
        >
          <ChevronLeft strokeWidth={1} size={20} />
          <span>{t('Go Back')}</span>
        </Link>
        <div className='rounded-xl p-2'>
          <LikeButton blogId={blogId} userId={user.id} liked={blog.user_likes.some((like) => like.user_id === user.id)} likes={blog.likes} />
        </div>
      </div>
      <section className='prose mt-6 ml-6 mr-6 flex flex-col min-h-full'>
        <Image className='self-center' src={blog.image_url} width={1000} height={500} alt='' />
        <div className='mt-4 pb-8 text-base'>
          <Markdown>{blog.content}</Markdown>
        </div>
      </section>
    </section>
  );
}