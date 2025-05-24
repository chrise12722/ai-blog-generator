export interface BlogStructure {
  id: number;
  created_at: EpochTimeStamp;
  title: string;
  content: string;
  imageUrl: string;
  userId: string;
}

export interface LikeStructure {
  blogId: number;
  id: number;
  userId: string;
}