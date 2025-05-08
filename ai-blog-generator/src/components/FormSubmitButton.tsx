'use client'
import { useFormStatus } from 'react-dom';

export const FormSubmitButton = () => {

  const { pending } = useFormStatus();

  return (
    <button type="submit" className="mt-5 bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded cursor-pointer">
      {pending ? "Generating..." : "Generate Blog"}
    </button>
  )
}