"use client";

import { useState } from "react";

export default function Create_Blog() {
  const [blogContent, setBlogContent] = useState<string>("");
  const [isLoading, setIsLoading] = useState<boolean>(false);

  async function generateBlog(event: React.FormEvent<HTMLFormElement>): Promise<void> {
    event.preventDefault();
    const formData = new FormData(event.currentTarget);
    setIsLoading(true);
    try {
      const res = await fetch("/api/generate", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          topic: formData.get("blog-topic"),
          keywords: formData.get("blog-keywords"),
          length: formData.get("blog-length")
        })
      });

      if (!res.ok) {
        throw new Error(`API error: ${res.status}`);
      }

      const data = await res.json();
      setBlogContent(data.response);
    }
    catch (error) {
      console.error("Error generating blog:", error);
      setBlogContent("Error generating blog. Please try again.");
    }
    finally {
      setIsLoading(false);
    }
  }

  return (
    <>
      <div className="mt-10 ml-5 flex flex-row gap-4">
        <div className="flex-1">
          <h1 className="text-3xl">Create a Blog</h1>
          <form className="flex flex-col max-w-md" onSubmit={generateBlog}>
            <p className="mb-2 mt-5" >Blog Topic</p>
            <input type="text" name="blog-topic" required className="border p-2 mr-2 bg-black text-white-700" />
            <p className="mb-2 mt-2">Keywords(optional)</p>
            <input type="text" name="blog-keywords" className="border p-2 mr-2 bg-black text-white-700" />
            <p className="mb-2 mt-2">Length</p>
            <select className="border p-1" required name="blog-length">
              <option value="short">Short &#60;300 words</option>
              <option value="medium">Medium &#60;600 words</option>
              <option value="long">Long &#60;1000 words</option>
            </select>
            <button type="submit" className="mt-5 bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
              {isLoading ? "Generating..." : "Generate Blog"}
            </button>
          </form>
        </div>

        {blogContent && (
          <div className="flex-1 p-6 border rounded-lg bg-gray-800 text-white">
            <h2 className="text-2xl font-bold mb-4">Generated Blog:</h2>
            <div className="whitespace-pre-wrap">{blogContent}</div>
          </div>
        )}
      </div>
    </>
  );
}