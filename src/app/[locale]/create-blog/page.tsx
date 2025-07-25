"use client";

import React from 'react';
import { useActionState } from 'react';
import { useState } from 'react';
import { useTranslations } from 'next-intl'
import Image from 'next/image';
import { toast } from 'sonner';
import { createCompletion } from '../../actions';
import { FormSubmitButton } from '@/components/FormSubmitButton';

export default function CreateBlog() {
  const t = useTranslations("CreateBlog");
  const [blogContent, setBlogContent] = useState<string>('');
  const [blogImage, setBlogImage] = useState<string>('');

  // Handles form submission state
  const [, formAction] = useActionState(action, null);

  // Handles blog generation through server action
  async function action(prevState: unknown, formData: FormData) {
    const topic = formData.get('blogTopic');
    const keywords = formData.get('blogKeywords');
    const length = formData.get('blogLength');
    // Call server action
    const result = await createCompletion(topic as string, keywords as string, length as string);
    if (result && 'error' in result) {
      toast.error(result.error);
    }

    if (result && Array.isArray(result)) {
      setBlogContent(result[0]?.content || '');
      setBlogImage(result[0].image_url || '');
      toast('Blog has been generated and saved');
    }

    return {};

  }

  return (
    <>
      <div className=' mt-10 ml-2 sm:ml-4 flex flex-col sm:flex-row gap-4'>
        <div className={`flex-1 ${blogContent ? '' : 'sm:flex sm:flex-col sm:items-center'}`}>
          <h1 className='font-bold text-4xl'>{t('Create a Blog')}</h1>
          <form className='flex flex-col max-w-100 sm:w-100 sm:gap-1' action={formAction}>
            <p className='mb-2 mt-5' >{t('Blog Topic')}</p>
            <input type='text' name='blogTopic' required className='border p-2 mr-3 bg-gray-100 text-black-700' />
            <p className='mb-2 mt-2'>{t('Keywords(optional)')}</p>
            <input type='text' name='blogKeywords' className='border p-2 mr-3 bg-gray-100 text-black-700' />
            <p className='mb-2 mt-2'>{t('Length')}</p>
            <select className='border p-1 mr-3 bg-gray-100' required name='blogLength'>
              <option value='short'>{t('Short')} &#60;{t('300 words')}</option>
              <option value='medium'>{t('Medium')} &#60;{t('600 words')}</option>
              <option value='long'>{t('Long')} &#60;{t('1000 words')}</option>
            </select>
            <div>
              <FormSubmitButton />
            </div>
          </form>
        </div>
        {blogContent && (
          <div className='flex-1 p-6 mr-2 border rounded-lg bg-gray-800 text-white'>
            <h2 className='text-2xl font-bold mb-4'>{t('Generated Blog')}:</h2>
            <div className='mb-4'>
              <Image
                src={blogImage}
                width={500}
                height={500}
                alt="Blog Picture"
              />
            </div>
            <div className='whitespace-pre-wrap'>{blogContent}</div>
          </div>
        )}
      </div>
    </>
  );
}