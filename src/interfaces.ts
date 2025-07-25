export interface BlogStructure {
  id: number;
  created_at: EpochTimeStamp;
  title: string;
  content: string;
  image_url: string;
  userId: string;
}

export interface LikeStructure {
  blog_id: number;
  id: number;
  user_id: string;
}