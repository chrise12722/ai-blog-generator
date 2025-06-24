'use client'
import React from "react";
import { useRouter } from "next/navigation";
import { toast } from 'sonner';
import { useTranslations } from "next-intl";
import { deleteBlog } from "@/app/actions";

interface DeleteButtonProps {
  blogId: number;
  userId: string;
}

export const DeleteButton = ({ blogId, userId }: DeleteButtonProps) => {
  const t = useTranslations('DeleteButton')
  const router = useRouter();

  const deleteUserBlog = async () => {
    const result = await deleteBlog(blogId, userId);
    if (result && result.error) {
      toast(result.error);
    } else {
      router.push('/saved-blogs');
      toast(t("Blog has been successfully deleted"));
    }
  }
  return (
    <button className='rounded-xl bg-red-500 hover:bg-red-400 text-white p-2 sm:p-3 cursor-pointer' onClick={deleteUserBlog}>
      {t('Delete Blog')}
    </button>
  );
}