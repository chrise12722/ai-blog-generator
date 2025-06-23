import Link from 'next/link';
import Image from 'next/image';
import Markdown from 'react-markdown';
import React from 'react';
import { getBlogById, isBlogShared } from '@/utils/supabase';
import { ChevronLeft } from 'lucide-react';
import { currentUser } from '@clerk/nextjs/server';
import { ShareButtons } from '@/components/ShareButtons';
import { DeleteButton } from '@/components/DeleteButton';
import { getTranslations } from 'next-intl/server';
import { notFound } from 'next/navigation';


export default async function UserBlog({ params }: { params: Promise<{ id: string }> }) {
  const t = await getTranslations('NonuserBlog/UserBlog')
  const user = await currentUser()
  if (!user) {
    return <div>User not authenticated</div>;
  }

  const resolvedParams = await params;
  const blogId = Number(resolvedParams.id);
  // Fetch blog data
  const currentBlog = await getBlogById(blogId, user.id);

  if (!currentBlog.content || !currentBlog.image_url) {
    return notFound();
  }

  return (
    <section>
      <div className='flex justify-between mr-2 mt-2'>
        <Link
          href='/saved-blogs'
          className='ml-2 inline-flex items-center text-sm font-light text-gray'
        >
          <ChevronLeft strokeWidth={1} size={20} />
          <span>{t('Go Back')}</span>
        </Link>
        <div className='flex flex-row gap-1'>
          <ShareButtons blog={currentBlog} isShared={!!(await isBlogShared(blogId))} userId={user.id} />
          <DeleteButton blogId={blogId} userId={user.id} />
        </div>
      </div>
      <section className='prose mt-6 ml-6 mr-6 flex flex-col min-h-full'>
        <Image className='self-center' src={currentBlog.image_url} width={1000} height={500} alt='' />
        <div className='mt-4 pb-8 text-base'>
          <Markdown>{currentBlog.content}</Markdown>
        </div>
      </section>
    </section>
  );
}