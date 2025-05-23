'use client'

import { shareBlog, unshareBlog } from '@/app/actions'
import { BlogStructure } from "@/interfaces";
import { useRouter } from 'next/navigation';
import { toast } from 'sonner';

interface ShareButtonsProps {
  blog: BlogStructure;
  isShared: boolean;
  userId: string;
}

export const ShareButtons = ({ blog, isShared, userId }: ShareButtonsProps) => {
  const router = useRouter()

  const handleShare = async () => {
    await shareBlog({ ...blog, userId })
    router.refresh()
    toast('Blog has been shared')
  }

  const handleUnshare = async () => {
    await unshareBlog({ ...blog, userId })
    router.refresh()
    toast('Blog has been made private')
  }

  return (
    <>
      {!isShared && (
        <button className="rounded-xl bg-blue-500 hover:bg-blue-400 text-white p-2 sm:p-3 cursor-pointer" onClick={handleShare}>
          Share Blog
        </button>
      )}

      {isShared && (
        <button className="rounded-xl bg-blue-500 hover:bg-blue-400 text-white p-2 sm:p-3 cursor-pointer" onClick={handleUnshare}>
          Unshare Blog
        </button>
      )}
    </>
  )
} 