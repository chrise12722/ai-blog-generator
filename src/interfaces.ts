export interface BlogStructure {
  id: number;
  createdAt: EpochTimeStamp;
  title: string;
  content: string;
  imageUrl: string;
  userId: string;
}

export interface LikeStructure {
  blogId: number;
  id: number;
  user_id: string;
}