'use server'
import openai from "../utils/openai";
import { supabase } from "../lib/supabase";
import { auth, currentUser } from '@clerk/nextjs/server'
import { BlogStructure } from "@/interfaces";
import { incrementLikes, decrementLikes, isBlogLiked, viewLikes } from "@/lib/supabase";

export async function createCompletion(topic: string, keywords: string, length: string){
  const user = await currentUser()
  if (!user) {
    return { error: 'User not authenticated' }
  }

  // Generate blog post using openai
  const completion: any = await openai.chat.completions.create({
    model: 'gpt-4o-mini',
    messages: [
      {
        role: 'user',
        content: `Create a blog post about the following topic: ${topic}. The blog should properly explain the topic 
                  and include any information that a blog post about the topic would have. These are the keywords that 
                  should be included and discussed(ignore if empty): ${keywords}. The length provided, ${length}, 
                  indicates how long the blog post should be: "Short" should be at or under 300 words, "Medium" should be between 
                  301 words and 600 words, "Long" should be between 601 words and 1000 words. Return the blog post in a markdown format with only the title being in bold letters.`,
      }
    ],
  });

  const response = completion.choices[0].message.content;
  console.log(response)

  // Generate image using openai
  const image = await openai.images.generate({
    model: "dall-e-3",
    prompt: `Create a high-quality blog cover image that visually represents this topic: "${topic}"`,
    n: 1,
    size: '1792x1024'
  })

  const imageUrl = image?.data?.[0]?.url
  if (!imageUrl) {
    return {error: 'Unable to generate the blog image.'}
  }

  // Download the image from DALL-E 3
  const imageResponse = await fetch(imageUrl)
  const imageBuffer = Buffer.from(await imageResponse.arrayBuffer());

  // Upload to supabase storage
  const imageName = `blog-${Date.now()}.png`
  const { data, error } = await supabase.storage
    .from('aiimage')
    .upload(imageName, imageBuffer, {
      contentType: 'image/png'
    })

  if (error) {
    return(error)
    console.log({error})
  }

  const path = data?.path
  const permanentImageUrl = `${process.env.SUPABASE_URL}/storage/v1/object/public/aiimage/${path}`

  // Create a new blog post in supabase
  const { data: blog, error: blogError } = await supabase
    .from('blogs')
    .insert([{ title: topic, content: response, imageUrl: permanentImageUrl, userId: user.id }])
    .select()

  if (blogError) {
    console.log(blogError)
    return { error: 'Unable to create blog post.' }
  }

  return blog;
}

//Make blog publicly available

export async function shareBlog(blog: BlogStructure) {
  const {data: sharedBlog, error: blogError} = await supabase
    .from('shared-blogs')
    .insert([{ id: blog.id, created_at: blog.created_at, title: blog.title, content: blog.content, imageUrl: blog.imageUrl, userId: blog.userId }])
  
  if(blogError) {
    console.log(blogError)
    return {error: 'Unable to create blog post.'}
  }
  return sharedBlog;
}

//Make blog private
export async function unshareBlog(blog: BlogStructure) {
  const { error: unshareError } = await supabase
    .from('shared-blogs')
    .delete()
    .eq('id', blog.id)
    .eq('userId', blog.userId)
  
  if (unshareError) {
    console.log(unshareError)
    return { error: 'Unable to private blog post. Please try again' }
  }
  
  return { success: true }
}

//Delete blog post
export async function deleteBlog(blogId: number, userId: string) {
  const { error: deleteError } = await supabase
    .from('blogs')
    .delete()
    .eq('id', blogId)
    .eq('userId', userId)
  
  if (deleteError) {
    console.log(deleteError)
    return { error: 'Unable to delete blog post. Please try again'}
  }
  
  const { data: sharedBlog} = await supabase
    .from('shared-blogs')
    .select()
    .eq('id', blogId)
    .eq('userId', userId)
    .single()

  if (sharedBlog) {
    const { error: deleteError } = await supabase
      .from('shared-blogs')
      .delete()
      .eq('id', blogId)
  

  if (deleteError) {
    console.log(deleteError)
    return {error: 'Blog deleted but failed to remove from the shared blogs. Please try again'}
    }
  }

  return { success: true }
}

export async function handleLike(blogId: number, userId: string) {
  const result = await incrementLikes(blogId, userId)
  return result
}

export async function handleUnlike(blogId: number, userId: string) {
  const result = await decrementLikes(blogId, userId)
  return result
}

export async function checkIfLiked(blogId: number, userId: string) {
  console.log('Server: Checking if blog', blogId, 'is liked by user', userId)
  const result = await isBlogLiked(blogId, userId)
  console.log('Server: Is blog liked?', result)
  return result
}

export async function getLikes(blogId: number) {
  const result = await viewLikes(blogId)
  return result
}