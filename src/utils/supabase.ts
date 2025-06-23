import {createClient} from '@supabase/supabase-js'
import { redirect } from 'next/navigation'

const supabaseUrl = process.env.SUPABASE_URL as string
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY as string

export const supabase = createClient(supabaseUrl, supabaseKey)

//Fetch individual user blog
export async function getBlogById(id: number, userId: string) {
  const {data, error} = await supabase
    .from('blogs')
    .select()
    .eq('id', id)
    .eq("user_id", userId)
    .single()
  if (!data){
    redirect('/')
  }
  if (error){
    return { error: "Blog not found. Please try again"}
  }
  return data
}

//Fetch shared blog along with users who've liked the blog
export async function getSharedBlogById(id: number) {
  const {data, error} = await supabase
    .from('blogs')
    .select(`
      id,
      created_at,
      title,
      content,
      image_url,
      user_id,
      is_shared,
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

//Fetch all user blogs
export async function getAllUserBlogs({
  user_id,
  query,
  page = 1,
  limit = 12
}: {
  user_id: string
  query?: string
  page?: number
  limit?: number
}) {
  if(query) {
    const {data: searchUserBlogs, error} = await supabase
      .from('blogs')
      .select()
      .eq('user_id', user_id)
      .ilike('title', query)
      .order('created_at', {ascending: false})
      .range((page - 1) * limit, page * limit - 1)
    
    if(error) {
      console.log(error)
      return {error: "Failed to get all user blogs. Try again"}
    }

    return searchUserBlogs
  }
  else {
    const {data: userBlogs,error} = await supabase
      .from('blogs')
      .select()
      .eq('user_id', user_id)
      .order('created_at', {ascending: false})
      .range((page - 1) * limit, page * limit - 1)

    if (error) {
      console.log(error)
      return {error: "Failed to get all user blogs. Try again"}
      }
    
    return userBlogs
  }
}

//Fetch all shared blogs
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
      .from('blogs')
      .select()
      .eq('is_shared', true)
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
      .from('blogs')
      .select(`
        id,
        created_at,
        title,
        content,
        image_url,
        user_id,
        is_shared,
        likes,
        user_likes(
          id,
          user_id,
          blog_id
        )`
      )
      .eq('is_shared', true)
      .order('likes', {ascending: false})
      .range((page - 1) * limit, page * limit - 1)

    if (error) {
      console.log(error)
      return undefined
    }

    return allBlogs
  }
}

//Checks if blog is marked as shared
export async function isBlogShared(id: number) {
  const { data } = await supabase
    .from('blogs')
    .select()
    .eq('id', id)
    .eq('is_shared', true)

  return data && data.length > 0
}

//Checks blog's like count
export async function viewLikes(blogId: number) {
  const { data, error } = await supabase
    .from('blogs')
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
  const { error: likeError } = await supabase.rpc('increment_likes', {row_id: blogId})


  if (likeError) {
    console.log(likeError)
    return { error: 'Unable to like blog post. Please try again' }
  }

  const { error: recordError } = await supabase
    .from('user_likes')
    .insert([{ user_id: userId, blog_id: blogId }])
  
  if (recordError) {
    console.log(recordError)
  }
  
  return { success: true }
}

//Remove like from database
export async function decrementLikes(blogId: number, userId: string) {
  const { error: likeError } = await supabase.rpc('decrement_likes', {row_id: blogId})

  if (likeError) {
    console.log('Failed to decrease likes')
    return { error: 'Failed to decrease like. Please try again' }
  }

  const { error: recordError } = await supabase
    .from('user_likes')
    .delete()
    .eq('user_id', userId)
    .eq('blog_id', blogId)
  
  if (recordError) {
   console.log(recordError)
   return { error: "Failed to delete like. Please try again" }
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