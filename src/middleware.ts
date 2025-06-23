import { clerkMiddleware } from "@clerk/nextjs/server";
import { createRouteMatcher } from "@clerk/nextjs/server";
import {routing} from '../i18n/routing';
import createIntlMiddleware from 'next-intl/middleware';

const isProtectedRoute = createRouteMatcher([
  "/:locale/explore-blogs",
  "/:locale/saved-blogs",
  "/:locale/create-blog",
  "/:locale/user-blog/(.*)",
  "/:locale/nonuser-blog/(.*)"
]);

const intMiddleware = createIntlMiddleware(routing);

export default clerkMiddleware(async (auth, req) => {
  // Protect routes from being accessed by unauthorized users
  if(isProtectedRoute(req)) await auth.protect();

  // Run internationalization middleware
  return intMiddleware(req)
});

export const config = {
  matcher: [
    // Skip Next.js internals and all static files, unless found in search params
    '/((?!_next|[^?]*\\.(?:html?|css|js(?!on)|jpe?g|webp|png|gif|svg|ttf|woff2?|ico|csv|docx?|xlsx?|zip|webmanifest)).*)',
    // Always run for API routes
    '/(api|trpc)(.*)',
    // Match all pathnames except for if they start with `/api`, `/trpc`, `/_next` or `/_vercel` the ones containing a dot (e.g. `favicon.ico`)
    '/((?!api|trpc|_next|_vercel|.*\\..*).*)'
  ],
};
