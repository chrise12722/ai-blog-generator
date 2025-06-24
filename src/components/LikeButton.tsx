'use client'

import React, { useState } from 'react';
import { toast } from 'sonner';
import { useRouter } from 'next/navigation';
import { useTranslations } from 'next-intl';
import { handleLike, handleUnlike } from '@/app/actions';

interface LikeButtonProps {
  blogId: number;
  userId: string;
  liked: boolean;
  likes: number;
}

export const LikeButton = ({ blogId, userId, liked, likes }: LikeButtonProps) => {
  const t = useTranslations('LikeButton')
  const router = useRouter();
  const [isLoading, setIsLoading] = useState(false);

  const handleLikeClick = async () => {
    if (isLoading) return;

    setIsLoading(true)
    try {
      if (liked) {
        const result = await handleUnlike(blogId, userId);
        if (result && result.error) {
          toast(result.error);
        } else {
          toast(t('Blog has been unliked'));
        }
      } else {
        const result = await handleLike(blogId, userId);
        if (result && result.error) {
          toast(result.error);
        } else {
          toast(t('Blog has been liked'));
        }
      }
      router.refresh();
    } finally {
      setIsLoading(false);
    }
  }

  return (
    <button
      onClick={handleLikeClick}
      disabled={isLoading}
      className={`flex items-center gap-2 ${liked ? 'text-red-500' : 'text-gray-500'} ${isLoading ? 'opacity-50 cursor-not-allowed' : 'cursor-pointer'}`}
    >
      <span>{likes}</span>
      <span>{liked ? '❤️' : '🤍'}</span>
    </button>
  );
}
