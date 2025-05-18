'use client'

import React, { useState, useEffect } from 'react';
import { toast } from 'sonner';
import { useRouter } from 'next/navigation';
import { handleLike, handleUnlike, checkIfLiked, getLikes } from '@/app/actions';

interface LikeButtonProps {
  blogId: number;
  userId: string;
}

export const LikeButton = ({ blogId, userId }: LikeButtonProps) => {
  const router = useRouter()
  const [liked, setLiked] = useState(false)
  const [likes, setLikes] = useState(0)

  useEffect(() => {
    const checkLiked = async () => {
      console.log('Checking if blog is liked...')
      const isLiked = await checkIfLiked(blogId, userId)
      console.log('Is blog liked?', isLiked)
      setLiked(!!isLiked)
    }
    checkLiked()
  }, [blogId, userId])

  useEffect(() => {
    const fetchLikes = async () => {
      const likeCount = await getLikes(blogId)
      setLikes(likeCount)
    }
    fetchLikes()
  }, [blogId])

  const handleLikeClick = async () => {
    if (liked) {
      await handleUnlike(blogId, userId)
      setLiked(false)
      const newLikes = await getLikes(blogId)
      setLikes(newLikes)
      toast('Blog has been unliked')
    } else {
      await handleLike(blogId, userId)
      setLiked(true)
      const newLikes = await getLikes(blogId)
      setLikes(newLikes)
      toast('Blog has been liked')
    }
    router.refresh()
  }

  return (
    <button
      onClick={handleLikeClick}
      className={`flex items-center gap-2 ${liked ? 'text-red-500' : 'text-gray-500'} cursor-pointer`}
    >
      <span>{likes}</span>
      <span>{liked ? '❤️' : '🤍'}</span>
    </button>
  )
}
