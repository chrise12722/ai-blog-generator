import {createClient} from '@supabase/supabase-js'
import { redirect } from 'next/navigation'
import { toast } from "sonner"

const supabaseUrl = process.env.SUPABASE_URL as string
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY as string

export const supabase = createClient(supabaseUrl, supabaseKey)

export async function getBlogById(id: number, userId: string) {
  const {data, error} = await supabase
    .from('blogs')
    .select()
    .eq('id', id)
    .eq('userId', userId)
    .single()
  if (!data){
    redirect('/')
  }
  return data
}

export async function getSharedBlogById(id: number) {
  const {data, error} = await supabase
    .from('shared-blogs')
    .select(`
      id,
      created_at,
      title,
      content,
      imageUrl,
      userId,
      likes,
      user_likes (
        id,
        user_id,
        blog_id
        )`
    )
    .eq('id', id)
    .single()
  
  if (error) {
    console.error('Error fetching shared blog:', error)
    redirect('/')
  }
  
  if (!data){
    redirect('/')
  }
  return data
}

export async function getAllUserBlogs({
  userId,
  query,
  page = 1,
  limit = 12
}: {
  userId: string
  query?: string
  page?: number
  limit?: number
}) {
  if(query) {
    const {data: searchUserBlogs, error} = await supabase
      .from('blogs')
      .select()
      .eq('userId', userId)
      .ilike('title', query)
      .order('created_at', {ascending: false})
      .range((page - 1) * limit, page * limit - 1)
    
    if(error) {
      console.log(error)
      return undefined
    }

    return searchUserBlogs
  }
  else {
    const {data: userBlogs,error} = await supabase
      .from('blogs')
      .select()
      .eq('userId', userId)
      .order('created_at', {ascending: false})
      .range((page - 1) * limit, page * limit - 1)

    if (error) {
      console.log(error)
      return error
      }
    
    return userBlogs
  }
}

export async function getAllSharedBlogs({
  query,
  page = 1,
  limit = 12
}: {
  query?: string
  page?: number
  limit?: number
} = {}) {
  if(query) {
    const {data: searchBlogs, error} = await supabase
      .from('shared-blogs')
      .select()
      .ilike('title', query)
      .order('likes', {ascending: false})
      .range((page - 1) * limit, page * limit - 1)

     if (error) {
      console.log(error)
      return undefined
      }

    return searchBlogs
  }
  else {
    const {data: allBlogs, error} = await supabase
      .from('shared-blogs')
      .select(`
        id,
        created_at,
        title,
        content,
        imageUrl,
        userId,
        likes,
        user_likes (
          id,
          user_id,
          blog_id
          )`
      )
      .order('likes', {ascending: false})
      .range((page - 1) * limit, page * limit - 1)

    if (error) {
      console.log(error)
      return undefined
    }

    return allBlogs
  }
}

export async function isBlogShared(id: number) {
  const { data } = await supabase
    .from('shared-blogs')
    .select()
    .eq('id', id)

  return data && data.length > 0
}

export async function viewLikes(blogId: number) {
  const { data, error } = await supabase
    .from('shared-blogs')
    .select('likes')
    .eq('id', blogId)
    .single()

  if (error) {
    console.log(error)
  }
  else if (!data) {
    return 0
  }

  return data?.likes || 0
}

//Add like to database

export async function incrementLikes(blogId: number, userId: string) {
  const { data: likeData, error: likeError } = await supabase.rpc('increment_likes', {row_id: blogId})


  if (likeError) {
    console.log("Failed to add like")
  }

  const { data: recordData, error: recordError } = await supabase
    .from('user_likes')
    .insert([{ user_id: userId, blog_id: blogId }])
  
  if (recordError) {
    console.log(recordError)
  }
  
  return { success: true }
}

//Remove like from database

export async function decrementLikes(blogId: number, userId: string) {
  const { data: likeData, error: likeError } = await supabase.rpc('decrement_likes', {row_id: blogId})

  if (likeError) {
    console.log('Failed to decrease likes')
  }

  const { data: recordData, error: recordError } = await supabase
    .from('user_likes')
    .delete()
    .eq('user_id', userId)
    .eq('blog_id', blogId)
  
  if (recordError) {
   console.log('Failed to delete like')
  }

  return { success: true }
}

//Check if user has liked a blog

export async function isBlogLiked(blogId: number, userId: string) {
  const { data, error } = await supabase
  .from('user_likes')
  .select()
  .eq('user_id', userId)
  .eq('blog_id', blogId)
  

if (error) {
  console.log(error)
}

return data && data.length > 0
}