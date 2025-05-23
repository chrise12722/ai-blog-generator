'use client'

import React, { useState, useEffect } from 'react';
import { toast } from 'sonner';
import { useRouter } from 'next/navigation';
import { handleLike, handleUnlike, checkIfLiked, getLikes } from '@/app/actions';

interface LikeButtonProps {
  blogId: number;
  userId: string;
  liked: boolean;
  likes: number;
}

export const LikeButton = ({ blogId, userId, liked, likes }: LikeButtonProps) => {
  const router = useRouter()
  const [isLoading, setIsLoading] = useState(false)
  const [isLiked, setIsLiked] = useState(false)


  // useEffect(() => {
  //   const checkLiked = async () => {
  //     console.log('Checking if blog is liked...')
  //     const isLiked = await checkIfLiked(blogId, userId)
  //     console.log('Is blog liked?', isLiked)
  //     setLiked(!!isLiked)
  //   }
  //   checkLiked()
  // }, [blogId, userId])

  const handleLikeClick = async () => {
    if (isLoading) return;

    setIsLoading(true)
    try {
      if (liked) {
        await handleUnlike(blogId, userId)
        const newLikes = await getLikes(blogId)
        toast('Blog has been unliked')
      } else {
        await handleLike(blogId, userId)
        console.log("Blog was liked")
        const newLikes = await getLikes(blogId)
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
