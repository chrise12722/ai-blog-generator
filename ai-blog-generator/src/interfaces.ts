export interface BlogStructure {
  id: number;
  created_at: EpochTimeStamp;
  title: string;
  content: string;
  imageUrl: string;
  userId: string;
}