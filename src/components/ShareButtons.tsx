'use client'
import React from 'react';
import { shareBlog, unshareBlog } from '@/app/actions'
import { BlogStructure } from "@/interfaces";
import { useRouter } from 'next/navigation';
import { toast } from 'sonner';
import { useTranslations } from 'next-intl';

interface ShareButtonsProps {
  blog: BlogStructure;
  isShared: boolean;
  userId: string;
}

export const ShareButtons = ({ blog, isShared, userId }: ShareButtonsProps) => {
  const t = useTranslations('ShareButtons');
  const router = useRouter();
  const handleShare = async () => {
    const result = await shareBlog({ ...blog, userId });
    if (result && result.error) {
      toast(result.error);
    } else {
      router.refresh();
      toast(t('Blog has been shared'));
    }
  }
  const handleUnshare = async () => {
    const result = await unshareBlog({ ...blog, userId });
    if (result && result.error) {
      toast(result.error);
    } else {
      toast(t('Blog has been made private'));
    }
    router.refresh();
  }
  return (
    <>
      {!isShared && (
        <button className='rounded-xl bg-blue-500 hover:bg-blue-400 text-white p-2 sm:p-3 cursor-pointer' onClick={handleShare}>
          {t('Share Blog')}
        </button>
      )}

      {isShared && (
        <button className='rounded-xl bg-blue-500 hover:bg-blue-400 text-white p-2 sm:p-3 cursor-pointer' onClick={handleUnshare}>
          {t('Unshare Blog')}
        </button>
      )}
    </>
  );
} 