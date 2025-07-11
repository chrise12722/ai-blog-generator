import React from "react";
import type { Metadata } from "next";
import { NextIntlClientProvider, hasLocale } from 'next-intl';
import { notFound } from 'next/navigation';
import { routing } from '../../../i18n/routing';
import { Geist, Geist_Mono } from "next/font/google";
import { Navigation } from "../../components/Navigation";
import { ClerkProvider } from "@clerk/nextjs";
import { Toaster } from "@/components/ui/sonner";
import "../globals.css";


const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "NeuroBlog",
  description: "AI Blog Generator",
};

export default async function LocaleLayout({
  children,
  params
}: {
  children: React.ReactNode;
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;
  if (!hasLocale(routing.locales, locale)) {
    notFound();
  }

  let messages;
  try {
    messages = (await import(`../../../messages/${locale}.json`)).default;
  } catch {
    notFound();
  }

  return (
    <NextIntlClientProvider locale={locale} messages={messages}>
      <ClerkProvider>
        <html lang={locale}>
          <body
            className={`${geistSans.variable} ${geistMono.variable} antialiased`}
          >
            <header className="bg-blue-400 text-white p-4 text-center">
              <Navigation />
            </header>
            <main>
              {children}
            </main>
            <Toaster />
          </body>
        </html>
      </ClerkProvider>
    </NextIntlClientProvider>
  );
}
