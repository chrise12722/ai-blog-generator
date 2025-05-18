"use client"

import Link from "next/link";
import { usePathname } from "next/navigation";
import { SignInButton, UserButton, SignedIn, SignedOut } from "@clerk/nextjs";

export const Navigation = () => {
  const pathname = usePathname();
  return (
    <nav className="flex justify-center items-center p-1">
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
        Create New Blog
      </Link>
      <SignedOut>
        <SignInButton mode="modal">
          <button className="font-bold cursor-pointer">Sign In</button>
        </SignInButton>
      </SignedOut>
      <SignedIn>
        <UserButton />
      </SignedIn>
    </nav>
  );
}