import { NextRequest, NextResponse } from 'next/server';
import openai from "../../../utils/openai";

export async function POST(request: NextRequest) {
  try {
    console.log("API route called");
    const body = await request.json();
    const topic = body.topic;
    const keywords = body.keywords;
    const length = body.length;
    console.log("Inputs received: ", topic, keywords, length);
    
    const completion = await openai.chat.completions.create({
      model: 'gpt-4o-mini',
      messages: [
        {
          role: 'user',
          content: `Create a blog post about the following topic: ${topic}. The blog should properly explain the topic 
                    and include any information that a blog post about the topic would have. These are the keywords that 
                    should be included and discussed(ignore if empty): ${keywords}. The length provided, ${length}, 
                    indicates how long the blog post should be: "Short" should be at or under 300 words, "Medium" should be between 
                    300 words and 600 words, "Long" should be between 600 words and 1000 words.`,
        }
      ],
    });
    
    const response = completion.choices[0].message.content;
    console.log("OpenAI Responded")
    
    return NextResponse.json({ response });
  } catch (error) {
    console.error("Error in API route:", error);
    return NextResponse.json({ error: "Failed to generate blog" }, { status: 500 });
  }
} 