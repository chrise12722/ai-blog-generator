/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 
          'nfnvvrtdmfxntevegtyn.supabase.co',
        pathname: '/storage/v1/object/public/aiimage/**'

      }],
  },
  experimental: {
    serverComponentsHmrCache: false, // defaults to true
  },
}
 
module.exports = nextConfig
