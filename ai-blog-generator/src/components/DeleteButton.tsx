'use client'

import { deleteBlog } from "@/app/actions";
import { useRouter } from "next/navigation";
import { toast } from 'sonner';

interface DeleteButtonProps {
  blogId: number;
  userId: string;
}

export default function DeleteButton({ blogId, userId }: DeleteButtonProps) {
  const router = useRouter()

  const deleteUserBlog = async () => {
    await deleteBlog(blogId, userId)
    router.push('/saved-blogs')
    toast("Blog has been successfully deleted")
  }
  return (
    <button className="rounded-xl bg-red-500 hover:bg-red-400 text-white p-3 cursor-pointer" onClick={deleteUserBlog}>
      Delete Blog
    </button>
  )
}