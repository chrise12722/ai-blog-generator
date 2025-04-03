"use client"

import Link from "next/link";
import { usePathname } from "next/navigation";

export const Navigation = () => {
  const pathname = usePathname();
  return (
    <nav className="flex justify-center items-center p-4">
      <Link href="/" className={pathname === "/" ? "font-bold mr-8" : "mr-8 text-blue-500"}>
        Home
      </Link>
      <Link href="/explore-blogs" className={pathname === "/explore-blogs" ? "font-bold mr-8" : "mr-8 text-blue-500"}>
        Explore Blogs
      </Link>
      <Link href="/saved-blogs" className={pathname === "/saved-blogs" ? "font-bold mr-8" : "mr-8 text-blue-500"}>
        View Saved Blogs
      </Link>
      <Link href="/create-blog" className={pathname === "/create-blog" ? "font-bold mr-8" : "mr-8 text-blue-500"}>
        Create a New Blog
      </Link>
    </nav>
  );
}