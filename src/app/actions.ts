'use server'
import openai from '../utils/openai';
import { supabase } from '../utils/supabase';
import { currentUser } from '@clerk/nextjs/server'
import { ChatCompletion } from 'openai/resources/chat/completions';
import { BlogStructure } from '@/interfaces';
import { incrementLikes, decrementLikes, isBlogLiked, viewLikes } from '@/utils/supabase';
import { redirect } from 'next/navigation';

export async function createCompletion(topic: string, keywords: string, length: string){
  const user = await currentUser();
  if (!user) {
    return { error: 'User not authenticated' };
  }

  // Generate blog post using openai
  const completion: ChatCompletion = await openai.chat.completions.create({
    model: 'gpt-4o-mini',
    messages: [
      {
        role: 'user',
        content: `Write an SEO-optimized blog post about the following topic: ${topic}. The blog should clearly explain the topic and include relevant information, context,
                  and insights typical of a high-quality blog post. If any keywords are provided, be sure to incorporate and discuss them naturally: ${keywords} (ignore if empty).
                  The desired length is: ${length}. Use the following guidelines: Short: ≤ 300 words; Medium: 301 to 600 words; Long: 601 to 1000 words
                  Format the response in Markdown, and make only the blog title bold. Do not include any extra text before or after the post.`,
      }
    ],
  });

  const response = completion.choices[0].message.content;
  
  // Generate image using openai
  const image = await openai.images.generate({
    model: 'dall-e-3',
    prompt: `Create a high-quality blog cover image that visually represents this topic: "${topic}"`,
    n: 1,
    size: '1792x1024'
  });
  
  const imageUrl = image?.data?.[0]?.url;
  if (!imageUrl) {
    return {error: 'Unable to generate the blog image.'};
  }
  // Download the image from DALL-E 3
  const imageResponse = await fetch(imageUrl);
  const imageBuffer = Buffer.from(await imageResponse.arrayBuffer());

  // Upload to supabase storage
  const imageName = `blog-${Date.now()}.png`;
  const { data, error } = await supabase.storage
    .from('aiimage')
    .upload(imageName, imageBuffer, {
      contentType: 'image/png'
    });

  if (error) {
    return(error);
  }

  const path = data?.path;
  const permanentimage_url = `${process.env.SUPABASE_URL}/storage/v1/object/public/aiimage/${path}`;

  // Create a new blog post in supabase
  const { data: blog, error: blogError } = await supabase
    .from('blogs')
    .insert([{ title: topic, content: response, image_url: permanentimage_url, user_id: user.id, username: user.username }])
    .select()

  if (blogError) {
    return { error: 'Unable to create blog post.' };
  }

  return blog;
}

//Make blog publicly available
export async function shareBlog(blog: BlogStructure) {

  const { error: blogError } = await supabase
    .from('blogs')
    .update({ is_shared: true })
    .eq('id', blog.id)

  if (blogError) {
    return {error: "Failed to share blog. Please try again"};
  }

  return { success: true };
}

//Make blog private
export async function unshareBlog(blog: BlogStructure) {
  const { error: unshareError } = await supabase
    .from('blogs')
    .update( { is_shared: false })
    .eq('id', blog.id)
  
  if (unshareError) {
    console.log(unshareError);
    return {error: "Unable to unshare blog. Please try again"};
  }

  return { success: true };
}

export async function deleteBlog(blogId: number, user_id: string) {
  const { error: deleteError } = await supabase
    .from('blogs')
    .delete()
    .eq('id', blogId)
    .eq('user_id', user_id)
  
  if (deleteError) {
    console.log(deleteError);
    return { error: 'Unable to delete blog post. Please try again'};
  }
}

export async function handleLike(blogId: number, user_id: string) {
  const result = await incrementLikes(blogId, user_id);
  return result;
}

export async function handleUnlike(blogId: number, user_id: string) {
  const result = await decrementLikes(blogId, user_id);
  return result;
}

export async function checkIfLiked(blogId: number, user_id: string) {
  const result = await isBlogLiked(blogId, user_id);
  return result;
}

export async function getLikes(blogId: number) {
  const result = await viewLikes(blogId);
  return result;
}

export async function changeLanguage( formData: FormData) {
  const locale = formData.get('locale') as string;
  const pathname = formData.get('pathname') as string;
  redirect(`/${locale}${pathname}`);

}