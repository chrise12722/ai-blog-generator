"use client";

import { useState } from "react";
import { createCompletion } from "../actions";
import { toast } from "sonner";
import Image from "next/image";
import { useFormStatus } from "react-dom";
import { useActionState } from "react";
import { FormSubmitButton } from "@/components/FormSubmitButton";

export default function CreateBlog() {
  const [blogContent, setBlogContent] = useState<string>("");
  const [blogImage, setBlogImage] = useState<string>("");


  const [state, formAction] = useActionState(action, {});

  async function action(_previousState: Object, formData: FormData) {
    const topic = formData.get("blog-topic")
    const keywords = formData.get("blog-keywords")
    const length = formData.get("blog-length")
    //call server action
    const result = await createCompletion(topic as string, keywords as string, length as string)
    if (result?.error) {
      toast.error(result.error)
    }
    console.log(result)

    if (result && Array.isArray(result)) {
      setBlogContent(result[0]?.content || '')
      setBlogImage(result[0].imageUrl || '')
    }

    return {}

  }




  return (
    <>
      <div className="mt-10 ml-5 flex flex-row gap-4">
        <div className="flex-1">
          <h1 className="text-3xl">Create a Blog</h1>
          <form className="flex flex-col max-w-md" action={formAction}>
            <p className="mb-2 mt-5" >Blog Topic</p>
            <input type="text" name="blog-topic" required className="border p-2 mr-2 bg-white text-black-700" />
            <p className="mb-2 mt-2">Keywords(optional)</p>
            <input type="text" name="blog-keywords" className="border p-2 mr-2 bg-white text-black-700" />
            <p className="mb-2 mt-2">Length</p>
            <select className="border p-1" required name="blog-length">
              <option value="short">Short &#60;300 words</option>
              <option value="medium">Medium &#60;600 words</option>
              <option value="long">Long &#60;1000 words</option>
            </select>
            <FormSubmitButton />
          </form>
        </div>
        {blogContent && (
          <div className="flex-1 p-6 border rounded-lg bg-gray-800 text-white">
            <h2 className="text-2xl font-bold mb-4">Generated Blog:</h2>
            <div className="mb-4">
              <Image
                src={blogImage}
                width={500}
                height={500}
                alt="Blog Picture"
              />
            </div>
            <div className="whitespace-pre-wrap">{blogContent}</div>
          </div>
        )}
      </div>
    </>
  );
}