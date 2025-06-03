/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'http',
        hostname: 
          '127.0.0.1',
        pathname: '/storage/v1/object/public/aiimage/**'

      }],
  },
  experimental: {
    serverComponentsHmrCache: false, // defaults to true
  },
}
 
module.exports = nextConfig
