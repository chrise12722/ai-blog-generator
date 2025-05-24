'use client'

import React, { useState } from 'react';
import { toast } from 'sonner';
import { useRouter } from 'next/navigation';
import { handleLike, handleUnlike } from '@/app/actions';

interface LikeButtonProps {
  blogId: number;
  userId: string;
  liked: boolean;
  likes: number;
}

export const LikeButton = ({ blogId, userId, liked, likes }: LikeButtonProps) => {
  const router = useRouter()
  const [isLoading, setIsLoading] = useState(false)


  // useEffect(() => {
  //   const checkLiked = async () => {
  //     console.log('Checking if blog is liked...')
  //     const isLiked = await checkIfLiked(blogId, user_id)
  //     console.log('Is blog liked?', isLiked)
  //     setLiked(!!isLiked)
  //   }
  //   checkLiked()
  // }, [blogId, user_id])

  const handleLikeClick = async () => {
    if (isLoading) return;

    setIsLoading(true)
    try {
      if (liked) {
        await handleUnlike(blogId, userId)
        toast('Blog has been unliked')
      } else {
        await handleLike(blogId, userId)
        toast('Blog has been liked')
      }
      router.refresh()
    } finally {
      setIsLoading(false)
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
  )
}
