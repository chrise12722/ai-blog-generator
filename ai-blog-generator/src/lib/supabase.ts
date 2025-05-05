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

export async function getAllBlogs(userId: string) {
  const {data,error} = await supabase
    .from('blogs')
    .select()
    .eq('userId', userId)
    .order('created_at', {ascending: false})

  return data
}