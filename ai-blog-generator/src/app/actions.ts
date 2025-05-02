'use server'
import openai from "../utils/openai";
import { supabase } from "../lib/supabase";
import { decode } from 'base64-arraybuffer';
import { auth, currentUser } from '@clerk/nextjs/server'


export async function createCompletion(topic: string, keywords: string, length: string){


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
                301 words and 600 words, "Long" should be between 601 words and 1000 words.`,
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
const user = await currentUser()
if (!user) {
  return { error: 'User not authenticated' }
}

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