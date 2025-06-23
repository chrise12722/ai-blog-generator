import {NextConfig} from 'next';
import createNextIntlPlugin from 'next-intl/plugin';
 
/** @type {import('next').NextConfig} */
const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'nfnvvrtdmfxntevegtyn.supabase.co',
        pathname: '/storage/v1/object/public/aiimage/**'
      }
    ],
  },
}

const withNextIntl = createNextIntlPlugin();

export default withNextIntl(nextConfig);
