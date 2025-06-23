SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."blogs" ("id", "created_at", "title", "content", "image_url", "user_id", "is_shared", "likes") VALUES
	(68, '2025-06-07 20:00:54.925045+00', 'Jobs', '**Understanding the Global Job Market: Trends and Opportunities**

In today’s dynamic world, jobs are more than just a means of earning a living; they play a crucial role in shaping one''s identity and the economy. Understanding the job market is essential for both job seekers and employers.

### The Changing Landscape of Jobs

The job market is constantly evolving due to technological advancements, globalization, and changing societal norms. Traditional jobs are being transformed by artificial intelligence (AI) and automation, prompting a shift toward more specialized fields. Industries like technology, healthcare, and renewable energy are witnessing a robust increase in job opportunities, reflecting a global drive towards innovation and sustainability.

### Job Types and Categories

Jobs can be broadly classified into several categories:

1. **Full-Time vs. Part-Time:** Full-time jobs offer stability and benefits, while part-time positions offer flexibility.
2. **Remote vs. Onsite:** The COVID-19 pandemic has accelerated the trend of remote work, making it a preferred choice for many employees.
3. **Freelance vs. Permanent:** Freelancing allows for independence and variety, whereas permanent jobs provide job security and career growth.

### Skills in Demand

Today''s job market places a premium on skills that promote adaptability and problem-solving. Critical thinking, effective communication, and proficiency in technology are vital. Furthermore, soft skills like emotional intelligence are increasingly recognized as essential for collaboration and leadership.

### Finding a Job

Job searching can be daunting, but leveraging online platforms like LinkedIn, Indeed, and Glassdoor can ease the process. Networking, both online and offline, remains a powerful tool for discovering hidden opportunities.

### Conclusion

As the job market continues to evolve, staying informed about trends and developing relevant skills will ensure that individuals are not only employable but also positioned for long-term career success. Embracing change and being open to new opportunities are key to thriving in this ever-competitive landscape. Whether you’re a recent graduate or a seasoned professional, understanding these dynamics can enhance your ability to navigate today’s job market effectively.', 'https://nfnvvrtdmfxntevegtyn.supabase.co/storage/v1/object/public/aiimage/blog-1749326453218.png', 'user_2y9DxMMv8cVAvRdOURWivAwsTLa', true, 11),
	(69, '2025-06-07 20:47:58.370611+00', 'NextJS', '**Understanding Next.js: The Future of React Applications**

Next.js is a powerful and popular React framework that simplifies the development of web applications. Launched by Vercel, Next.js provides developers with a comprehensive toolkit for building fast, user-friendly applications while leveraging the rich features of React.

One of the standout features of Next.js is its ability to perform server-side rendering (SSR). This means that HTML is generated on the server for each request, which can significantly improve page load times and SEO (Search Engine Optimization). Search engines can easily crawl and index the page because the content is available on the initial load, providing an edge over single-page applications (SPAs) that rely solely on client-side rendering.

Next.js also supports Static Site Generation (SSG). This allows developers to pre-render pages at build time, delivering static HTML files that can be served efficiently. This is particularly useful for sites that don''t change often or require fast loading times. Combining SSR and SSG gives developers the flexibility to choose the best method based on each page''s specific requirements.

Routing in Next.js is intuitive. Developers can create routes simply by adding files to the `pages` directory. Each file corresponds to a route in the application, making it easier to manage complex applications. Dynamic routing is also supported, allowing developers to create routes based on data.

Next.js boasts built-in CSS and Sass support, optimizing styles for performance. Developers can import styles from CSS or Sass files directly into their components, making it easier to manage styles across large projects.

Another advantage of Next.js is its API routes feature. Developers can create backend API endpoints within the same project, simplifying the process of building full-stack applications. This allows for a cohesive development experience without the need to manage a separate backend service.

In conclusion, Next.js is an excellent framework for developers looking to streamline their React applications. With its focus on performance, flexibility in rendering methods, and intuitive routing, it stands out as a robust option for modern web development. Whether you''re building a blog, an e-commerce site, or a complex web application, Next.js provides the tools necessary to create efficient, high-performance user experiences.', 'https://nfnvvrtdmfxntevegtyn.supabase.co/storage/v1/object/public/aiimage/blog-1749329276466.png', 'user_2y9DxMMv8cVAvRdOURWivAwsTLa', true, 15),
	(67, '2025-06-06 19:43:02.861241+00', 'Samsung', '**Samsung: A Tech Giant Shaping the Future**

Samsung, a name synonymous with innovation and technology, has solidified its position as a global leader in consumer electronics, mobile devices, and various other technological sectors. Established in 1938 in South Korea, the company initially started as a trading business, but over the decades, it has pivoted towards manufacturing and technology solutions.

One of the most notable aspects of Samsung is its diverse product range. Samsung is perhaps best known for its Galaxy series of smartphones, which have consistently held their ground against competitors like Apple. The Galaxy S and Galaxy Note lines are particularly popular for their cutting-edge features, vibrant displays, and user-friendly interfaces.

Beyond smartphones, Samsung has a strong presence in the television market. Their QLED technology enables stunning picture quality that enhances the viewing experience, solidifying their place as a top choice for consumers seeking the best in home entertainment. Additionally, Samsung''s Smart TV line integrates seamlessly with various streaming services, featuring intuitive interfaces and voice recognition.

Samsung''s commitment to innovation is evident in its investment in research and development. The company spends billions annually to stay at the forefront of technology. Their advancements in semiconductors, displays, and artificial intelligence exemplify their dedication to pushing boundaries. The company is also exploring the realms of smart home technologies and wearables, such as the Galaxy Watch, expanding its ecosystem.

Sustainability is increasingly important in today’s market, and Samsung has taken steps to integrate eco-friendly practices into its operations. From energy-efficient appliances to sustainable packaging, the company is focused on reducing its environmental impact.

As Samsung continues to evolve, it remains an influential player in shaping our technological landscape. With a commitment to innovation, quality, and sustainability, Samsung is undoubtedly a brand to watch in the coming years, as it continues to push the boundaries of what technology can achieve.', 'https://nfnvvrtdmfxntevegtyn.supabase.co/storage/v1/object/public/aiimage/blog-1749238979619.png', 'user_2y9DxMMv8cVAvRdOURWivAwsTLa', true, 6);


--
-- Data for Name: user_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_likes" ("id", "created_at", "user_id", "blog_id") VALUES
	(66, '2025-06-06 19:44:02.096135+00', 'user_2y9DxMMv8cVAvRdOURWivAwsTLa', 67);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('aiimage', 'aiimage', NULL, '2025-04-23 20:02:29.092424+00', '2025-04-23 20:02:29.092424+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('4db6f523-223a-45ed-b12e-f921346cbd25', 'aiimage', 'blog-1747937454059.png', NULL, '2025-05-22 18:10:55.817259+00', '2025-05-22 18:10:55.817259+00', '2025-05-22 18:10:55.817259+00', '{"eTag": "\"393e7090ffe73c715b4c99a3dfd14a6f\"", "size": 3066454, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T18:10:56.000Z", "contentLength": 3066454, "httpStatusCode": 200}', '207ce1f1-f99e-4336-9c6a-9a390914cc20', NULL, '{}'),
	('dbfe687a-b8d2-4a3c-ae8f-c9455e2f121f', 'aiimage', 'blog-1746216468956.png', NULL, '2025-05-02 20:07:51.652168+00', '2025-05-02 20:07:51.652168+00', '2025-05-02 20:07:51.652168+00', '{"eTag": "\"9a36676e2a79f13bdc3b542df0b1e84e\"", "size": 3783882, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:07:52.000Z", "contentLength": 3783882, "httpStatusCode": 200}', '148bfd4c-1c54-49c8-96d9-838fccae918e', NULL, '{}'),
	('62c80a11-2f31-43e0-b470-66659bb303b6', 'aiimage', 'blog-1746216626055.png', NULL, '2025-05-02 20:10:27.740478+00', '2025-05-02 20:10:27.740478+00', '2025-05-02 20:10:27.740478+00', '{"eTag": "\"6a46241a702f891e977e94bf71fb6b8c\"", "size": 2873538, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:10:28.000Z", "contentLength": 2873538, "httpStatusCode": 200}', '4bc37068-c9d3-486d-9e36-4ca2bc98e7c7', NULL, '{}'),
	('62752229-5c14-4a81-8049-d151f2e288f0', 'aiimage', 'blog-1746216787212.png', NULL, '2025-05-02 20:13:09.16387+00', '2025-05-02 20:13:09.16387+00', '2025-05-02 20:13:09.16387+00', '{"eTag": "\"04e261c0613c49673c69667a82bf27f0\"", "size": 3359024, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:13:09.000Z", "contentLength": 3359024, "httpStatusCode": 200}', '1d5a2839-ae04-4dce-9ab6-5ff485b5dd5b', NULL, '{}'),
	('25224aa4-4186-4446-ba7d-0016912204bb', 'aiimage', 'blog-1746217058085.png', NULL, '2025-05-02 20:17:40.070582+00', '2025-05-02 20:17:40.070582+00', '2025-05-02 20:17:40.070582+00', '{"eTag": "\"e8d0cd970bbe90759f1ef4da4623e5e7\"", "size": 2891289, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:17:40.000Z", "contentLength": 2891289, "httpStatusCode": 200}', 'cc51253d-9481-484f-9577-e1c63e3b347f', NULL, '{}'),
	('fa0eb646-c88a-4ded-ba42-017257b475a9', 'aiimage', 'blog-1746217224957.png', NULL, '2025-05-02 20:20:26.738402+00', '2025-05-02 20:20:26.738402+00', '2025-05-02 20:20:26.738402+00', '{"eTag": "\"8ea594598506e5c4f5ef0af7e78d7261\"", "size": 2877747, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:20:27.000Z", "contentLength": 2877747, "httpStatusCode": 200}', '548031a8-0899-449b-bd3f-5f22089a9c44', NULL, '{}'),
	('e49ccd0f-1771-4b77-80ac-e4f1202bc881', 'aiimage', 'blog-1746217359812.png', NULL, '2025-05-02 20:22:42.183918+00', '2025-05-02 20:22:42.183918+00', '2025-05-02 20:22:42.183918+00', '{"eTag": "\"0e1beb6f41c91022edb719ad3f201d08\"", "size": 2858593, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:22:42.000Z", "contentLength": 2858593, "httpStatusCode": 200}', 'e9263e4c-9a91-4706-b50d-b15184b852af', NULL, '{}'),
	('c5977449-85fd-40bf-b693-bd76cb15deab', 'aiimage', 'blog-1746217972103.png', NULL, '2025-05-02 20:32:54.069009+00', '2025-05-02 20:32:54.069009+00', '2025-05-02 20:32:54.069009+00', '{"eTag": "\"8cc718abd30f4387ea271a2abe8ba5cd\"", "size": 3481195, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:32:54.000Z", "contentLength": 3481195, "httpStatusCode": 200}', '38f0a9bc-c941-4da5-9049-1862766970cb', NULL, '{}'),
	('0eb0eaf6-d062-4a45-b4ad-f8d9ae9b87d3', 'aiimage', 'blog-1746218038702.png', NULL, '2025-05-02 20:34:00.724844+00', '2025-05-02 20:34:00.724844+00', '2025-05-02 20:34:00.724844+00', '{"eTag": "\"59f731a44c6a8a0b92ee40bd22d8a059\"", "size": 3247634, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:34:01.000Z", "contentLength": 3247634, "httpStatusCode": 200}', 'ce28ceea-9cc5-476c-991d-66404e8db0d4', NULL, '{}'),
	('941b7744-9d25-45f6-9b8a-0586ed65d207', 'aiimage', 'blog-1746218176662.png', NULL, '2025-05-02 20:36:18.318921+00', '2025-05-02 20:36:18.318921+00', '2025-05-02 20:36:18.318921+00', '{"eTag": "\"64c21a573e79598dff727c3fac127c25\"", "size": 3353298, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:36:19.000Z", "contentLength": 3353298, "httpStatusCode": 200}', 'e4050634-6939-4b13-8de2-d5068623c05f', NULL, '{}'),
	('189f0af9-dd0c-4c40-89ed-357536ccf0a8', 'aiimage', 'blog-1746219141088.png', NULL, '2025-05-02 20:52:24.629574+00', '2025-05-02 20:52:24.629574+00', '2025-05-02 20:52:24.629574+00', '{"eTag": "\"ee071c5c6eb915bd50748b486629d1ca\"", "size": 3760546, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:52:25.000Z", "contentLength": 3760546, "httpStatusCode": 200}', 'dd24d40b-975f-4810-b89d-dce94bf45487', NULL, '{}'),
	('023cfa20-9cc8-47f1-93b2-6c6612e27e39', 'aiimage', 'blog-1746219262530.png', NULL, '2025-05-02 20:54:24.870046+00', '2025-05-02 20:54:24.870046+00', '2025-05-02 20:54:24.870046+00', '{"eTag": "\"dbbb273415c74429b855101188d40857\"", "size": 2431473, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T20:54:25.000Z", "contentLength": 2431473, "httpStatusCode": 200}', '0e0e0667-5c23-4372-9bdc-4138fe6d2abb', NULL, '{}'),
	('54dfe56d-6856-4207-9cc1-a1a3b8a8d722', 'aiimage', 'blog-1746219819069.png', NULL, '2025-05-02 21:03:40.719781+00', '2025-05-02 21:03:40.719781+00', '2025-05-02 21:03:40.719781+00', '{"eTag": "\"847197863579dd11c6abfed454c0f734\"", "size": 3035000, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T21:03:41.000Z", "contentLength": 3035000, "httpStatusCode": 200}', '652f79df-4d92-49fe-9e52-600c905a5722', NULL, '{}'),
	('e099278f-8c43-47e8-9b35-5b3fa5eb1da0', 'aiimage', 'blog-1746220933177.png', NULL, '2025-05-02 21:22:16.732508+00', '2025-05-02 21:22:16.732508+00', '2025-05-02 21:22:16.732508+00', '{"eTag": "\"87bdaf3e394261370d00cb1000bfa8fb\"", "size": 3425447, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T21:22:17.000Z", "contentLength": 3425447, "httpStatusCode": 200}', '413d985b-bd23-45aa-8b6a-0f2bc129672f', NULL, '{}'),
	('78462ae4-48f9-48c0-807b-f457530ca0ea', 'aiimage', 'blog-1746221268121.png', NULL, '2025-05-02 21:27:54.887925+00', '2025-05-02 21:27:54.887925+00', '2025-05-02 21:27:54.887925+00', '{"eTag": "\"e154a675d3e501e60e037b1d03d9c2a9\"", "size": 3832820, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T21:27:55.000Z", "contentLength": 3832820, "httpStatusCode": 200}', 'bdc3e2bc-1762-4d8a-a9d5-55eb1a716951', NULL, '{}'),
	('a861fbd1-6a1b-4b46-9948-17b92ba858c8', 'aiimage', 'blog-1746223082574.png', NULL, '2025-05-02 21:58:04.992395+00', '2025-05-02 21:58:04.992395+00', '2025-05-02 21:58:04.992395+00', '{"eTag": "\"ac63d99c79f458d38563d5ed9f9d9e50\"", "size": 2127405, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T21:58:05.000Z", "contentLength": 2127405, "httpStatusCode": 200}', 'f0b6dec5-3265-409a-a528-13b355e4b7d7', NULL, '{}'),
	('5dcea152-4cfa-405a-870c-dc71ab19ea80', 'aiimage', 'blog-1746224262162.png', NULL, '2025-05-02 22:17:43.807316+00', '2025-05-02 22:17:43.807316+00', '2025-05-02 22:17:43.807316+00', '{"eTag": "\"f982c4ce43f97b71c53be1bf56b69b87\"", "size": 2720222, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T22:17:44.000Z", "contentLength": 2720222, "httpStatusCode": 200}', '97486eb9-6c76-4459-b341-4dd3b9d5112f', NULL, '{}'),
	('78e2a69b-0f44-4818-872f-c09dd825c7c0', 'aiimage', 'blog-1746389838437.png', NULL, '2025-05-04 20:17:20.847491+00', '2025-05-04 20:17:20.847491+00', '2025-05-04 20:17:20.847491+00', '{"eTag": "\"6130a1b71fb2e4a0b7fc549bf3337b86\"", "size": 3158033, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-04T20:17:21.000Z", "contentLength": 3158033, "httpStatusCode": 200}', 'b14566d0-0a73-4ef5-b68e-128372daaa66', NULL, '{}'),
	('ee2e6335-c45b-46b2-aeeb-0a0c2bf99194', 'aiimage', 'blog-1747937821237.png', NULL, '2025-05-22 18:17:03.27197+00', '2025-05-22 18:17:03.27197+00', '2025-05-22 18:17:03.27197+00', '{"eTag": "\"75201e5986dffd9dbb2258b52953890b\"", "size": 2340214, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T18:17:03.000Z", "contentLength": 2340214, "httpStatusCode": 200}', '2bd82b81-287b-47db-9493-ab5c7d11540e', NULL, '{}'),
	('7e8a75f9-5fb4-4d72-9f32-3a3fede3b78d', 'aiimage', 'blog-1746390311280.png', NULL, '2025-05-04 20:25:13.260068+00', '2025-05-04 20:25:13.260068+00', '2025-05-04 20:25:13.260068+00', '{"eTag": "\"d6ebe3ca490d936323b02410c5db8b18\"", "size": 2185137, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-04T20:25:14.000Z", "contentLength": 2185137, "httpStatusCode": 200}', '6a47d88b-1167-40b0-a2ce-828e03a806d0', NULL, '{}'),
	('226391eb-1051-4ea8-8ee0-6af28ca76a2f', 'aiimage', 'blog-1747957321405.png', NULL, '2025-05-22 23:42:05.307169+00', '2025-05-22 23:42:05.307169+00', '2025-05-22 23:42:05.307169+00', '{"eTag": "\"3d8fbe793cf509510932544a6d9f4a87\"", "size": 4025573, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:42:06.000Z", "contentLength": 4025573, "httpStatusCode": 200}', '8aa55f69-8fb5-46e3-b6ce-0b5a3ea06ac6', NULL, '{}'),
	('aa775c3d-f7bf-4ba4-8822-f728579bb151', 'aiimage', 'blog-1746562613699.png', NULL, '2025-05-06 20:16:55.608639+00', '2025-05-06 20:16:55.608639+00', '2025-05-06 20:16:55.608639+00', '{"eTag": "\"684c0589ac99cdd453b53921243376d8\"", "size": 3968812, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-06T20:16:56.000Z", "contentLength": 3968812, "httpStatusCode": 200}', '5f32ca66-eb1d-4e38-9db0-9c052e2c654c', NULL, '{}'),
	('2669387d-f8cc-4f85-a2e8-d6a8ff12d393', 'aiimage', 'blog-1746716115437.png', NULL, '2025-05-08 14:55:17.596259+00', '2025-05-08 14:55:17.596259+00', '2025-05-08 14:55:17.596259+00', '{"eTag": "\"f4cfcd09464808c5b0fb21c2298cb2a4\"", "size": 2742746, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-08T14:55:17.000Z", "contentLength": 2742746, "httpStatusCode": 200}', '0fbdd74a-65ee-447b-a592-60dfd4b37269', NULL, '{}'),
	('7dacf5aa-7dd7-41c7-a5df-27863a640b26', 'aiimage', 'blog-1747957460023.png', NULL, '2025-05-22 23:44:24.925008+00', '2025-05-22 23:44:24.925008+00', '2025-05-22 23:44:24.925008+00', '{"eTag": "\"b3a3384d26f32b221c9fddcfc80d84d7\"", "size": 3745707, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:44:25.000Z", "contentLength": 3745707, "httpStatusCode": 200}', '213b54d8-2f5b-435d-bb9a-4e24ecd8e438', NULL, '{}'),
	('21017879-906a-440a-ae83-3483b3e3b5ae', 'aiimage', 'blog-1746716304558.png', NULL, '2025-05-08 14:58:26.526326+00', '2025-05-08 14:58:26.526326+00', '2025-05-08 14:58:26.526326+00', '{"eTag": "\"a703c2cdecda2f0cfbe44bedd28a66af\"", "size": 3575458, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-08T14:58:27.000Z", "contentLength": 3575458, "httpStatusCode": 200}', 'bc6fd9ba-854d-46d4-bbb0-ced9e303ba18', NULL, '{}'),
	('ad04a9f2-c0bd-49b3-8b59-eb8cf3f6d9a4', 'aiimage', 'blog-1746741052151.png', NULL, '2025-05-08 21:50:59.086701+00', '2025-05-08 21:50:59.086701+00', '2025-05-08 21:50:59.086701+00', '{"eTag": "\"6abf547cf961689f57116ac236b408b4\"", "size": 3763056, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-08T21:50:59.000Z", "contentLength": 3763056, "httpStatusCode": 200}', '26b3069f-f7b2-44b7-bd59-8caea83d298c', NULL, '{}'),
	('0b6e3c99-4a03-404a-88a1-ca00299c70dc', 'aiimage', 'blog-1747957613284.png', NULL, '2025-05-22 23:46:54.893782+00', '2025-05-22 23:46:54.893782+00', '2025-05-22 23:46:54.893782+00', '{"eTag": "\"789589cf79513c272c00fe720db3f092\"", "size": 2019114, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:46:55.000Z", "contentLength": 2019114, "httpStatusCode": 200}', 'd11d38d8-b302-4f8c-bfc3-f60793249a79', NULL, '{}'),
	('2f30edaf-96a4-4763-affa-1a3798c71744', 'aiimage', 'blog-1747328657091.png', NULL, '2025-05-15 17:04:19.053315+00', '2025-05-15 17:04:19.053315+00', '2025-05-15 17:04:19.053315+00', '{"eTag": "\"198d3e5e81c8e8e2d04af9c3ea8a252a\"", "size": 3004135, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-15T17:04:19.000Z", "contentLength": 3004135, "httpStatusCode": 200}', '45cb28a8-85ba-4f65-ba3f-bd5ed5ed5c39', NULL, '{}'),
	('d22c97a3-a479-4905-be46-f505191efd1b', 'aiimage', 'blog-1747347552866.png', NULL, '2025-05-15 22:19:16.70803+00', '2025-05-15 22:19:16.70803+00', '2025-05-15 22:19:16.70803+00', '{"eTag": "\"91b2619e486d7497fd00dd408a9f19a0\"", "size": 3650403, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-15T22:19:17.000Z", "contentLength": 3650403, "httpStatusCode": 200}', 'a2366e4e-9b06-40a9-847f-4b6e5bc3f820', NULL, '{}'),
	('db6de83e-47ed-42d8-82fb-ac62b677f50f', 'aiimage', 'blog-1747427866405.png', NULL, '2025-05-16 20:37:48.435992+00', '2025-05-16 20:37:48.435992+00', '2025-05-16 20:37:48.435992+00', '{"eTag": "\"7f10b431b138d042694b38a8f6b0d727\"", "size": 3250860, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-16T20:37:49.000Z", "contentLength": 3250860, "httpStatusCode": 200}', 'd02e28e6-00fe-438a-94a8-d0c65e3dc60c', NULL, '{}'),
	('cc1148af-9b03-40d9-96ec-c107b26751fa', 'aiimage', 'blog-1747427903169.png', NULL, '2025-05-16 20:38:25.690483+00', '2025-05-16 20:38:25.690483+00', '2025-05-16 20:38:25.690483+00', '{"eTag": "\"310d3d9a693c716725aca4261204abc4\"", "size": 2566061, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-16T20:38:26.000Z", "contentLength": 2566061, "httpStatusCode": 200}', 'a8282185-5ec5-4c50-8542-a444f2d46402', NULL, '{}'),
	('888f34e7-d323-4c92-8dec-c2946ad9ac14', 'aiimage', 'blog-1747428001831.png', NULL, '2025-05-16 20:40:04.094985+00', '2025-05-16 20:40:04.094985+00', '2025-05-16 20:40:04.094985+00', '{"eTag": "\"eeadb76d57a2eb66a669d9ea90ccd608\"", "size": 3508208, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-16T20:40:04.000Z", "contentLength": 3508208, "httpStatusCode": 200}', 'b311509e-6470-4a4f-87fe-c06b5be15396', NULL, '{}'),
	('1a537dae-c831-44e7-a33c-868febdba202', 'aiimage', 'blog-1747578689725.png', NULL, '2025-05-18 14:31:31.36405+00', '2025-05-18 14:31:31.36405+00', '2025-05-18 14:31:31.36405+00', '{"eTag": "\"94394f5caac6acf67cbd8f1ad1760e90\"", "size": 2699779, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T14:31:32.000Z", "contentLength": 2699779, "httpStatusCode": 200}', '645af32c-4a33-4dd8-ab85-67c7a5a2c55a', NULL, '{}'),
	('a9e15a81-8122-440f-9817-3f0a564c3fa8', 'aiimage', 'blog-1747578861208.png', NULL, '2025-05-18 14:34:24.264244+00', '2025-05-18 14:34:24.264244+00', '2025-05-18 14:34:24.264244+00', '{"eTag": "\"8f6b769397c0b53d811b22f84c24215f\"", "size": 3388222, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T14:34:25.000Z", "contentLength": 3388222, "httpStatusCode": 200}', '0b06b6c0-5ab1-4adf-af3a-e9359b574457', NULL, '{}'),
	('7a4fef33-38ed-44dd-a93b-61b14bf424b4', 'aiimage', 'blog-1747578994395.png', NULL, '2025-05-18 14:36:36.355545+00', '2025-05-18 14:36:36.355545+00', '2025-05-18 14:36:36.355545+00', '{"eTag": "\"eaf2e58c253951945740e4cecc62564c\"", "size": 2496848, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T14:36:37.000Z", "contentLength": 2496848, "httpStatusCode": 200}', '733aea9f-c4c7-4adc-b071-f9580591a586', NULL, '{}'),
	('cc020cbc-98c8-46a4-b097-7d8d573db330', 'aiimage', 'blog-1747584992279.png', NULL, '2025-05-18 16:16:33.925428+00', '2025-05-18 16:16:33.925428+00', '2025-05-18 16:16:33.925428+00', '{"eTag": "\"cf009168ac309d7f10e4f0c80775c7a5\"", "size": 2916044, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T16:16:34.000Z", "contentLength": 2916044, "httpStatusCode": 200}', '819e09a8-c9bd-41de-8554-9e3f43a3b1d6', NULL, '{}'),
	('f6debe60-a3c0-4f60-8644-10e8311d6c56', 'aiimage', 'blog-1747939175409.png', NULL, '2025-05-22 18:39:37.788463+00', '2025-05-22 18:39:37.788463+00', '2025-05-22 18:39:37.788463+00', '{"eTag": "\"e52a5cbd60fdf651348d6c0488b76bd0\"", "size": 3331055, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T18:39:38.000Z", "contentLength": 3331055, "httpStatusCode": 200}', '2bc2a71a-5036-495e-b942-bf140a65fca8', NULL, '{}'),
	('fdce9ffe-3afe-4105-9cc1-56c2aefe550a', 'aiimage', 'blog-1747585029154.png', NULL, '2025-05-18 16:17:11.220172+00', '2025-05-18 16:17:11.220172+00', '2025-05-18 16:17:11.220172+00', '{"eTag": "\"399fa642974f7a0427a0098ea7161c3d\"", "size": 4092489, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T16:17:12.000Z", "contentLength": 4092489, "httpStatusCode": 200}', 'd1d75814-dc6c-4366-87f3-7fecd36ec115', NULL, '{}'),
	('1c35b34b-b4cc-47a1-814e-5e58eb428e11', 'aiimage', 'blog-1747585069168.png', NULL, '2025-05-18 16:17:50.98037+00', '2025-05-18 16:17:50.98037+00', '2025-05-18 16:17:50.98037+00', '{"eTag": "\"a6d74d3b2d0db1f8891eb0f4e2d35bad\"", "size": 3077652, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T16:17:51.000Z", "contentLength": 3077652, "httpStatusCode": 200}', '916c4f5b-45ce-4bd6-9775-45337229eb1b', NULL, '{}'),
	('b7e09836-221b-4eda-9e73-226d59430d3f', 'aiimage', 'blog-1748014695146.png', NULL, '2025-05-23 15:38:16.628514+00', '2025-05-23 15:38:16.628514+00', '2025-05-23 15:38:16.628514+00', '{"eTag": "\"a802f732c5ae8be13fcd8b2c60f54fb5\"", "size": 2909689, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-23T15:38:17.000Z", "contentLength": 2909689, "httpStatusCode": 200}', '5d83c1ff-7367-4a23-986c-55ba3e5c2155', NULL, '{}'),
	('ee927856-7375-4ede-9111-228ac16bc670', 'aiimage', 'blog-1747585114905.png', NULL, '2025-05-18 16:18:36.965236+00', '2025-05-18 16:18:36.965236+00', '2025-05-18 16:18:36.965236+00', '{"eTag": "\"05adac21def5a8462b42b1446f8159ee\"", "size": 3010171, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T16:18:37.000Z", "contentLength": 3010171, "httpStatusCode": 200}', 'c052029e-7c4c-418d-9015-0717adeeaaad', NULL, '{}'),
	('e5644319-c647-41c4-ae29-089332035ff5', 'aiimage', 'blog-1747585159213.png', NULL, '2025-05-18 16:19:21.376557+00', '2025-05-18 16:19:21.376557+00', '2025-05-18 16:19:21.376557+00', '{"eTag": "\"c6ca71560f439495cf1d6df7162e6752\"", "size": 4134702, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T16:19:22.000Z", "contentLength": 4134702, "httpStatusCode": 200}', '2ce23746-a104-4cf8-8d3d-7f5d42264f57', NULL, '{}'),
	('7d6f454f-ade8-4c01-98c5-3cab3a5d8e73', 'aiimage', 'blog-1748014831324.png', NULL, '2025-05-23 15:40:32.864004+00', '2025-05-23 15:40:32.864004+00', '2025-05-23 15:40:32.864004+00', '{"eTag": "\"6bea805c1c7e420bc786073fd7870cac\"", "size": 3841414, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-23T15:40:33.000Z", "contentLength": 3841414, "httpStatusCode": 200}', '2a1364db-0871-4e60-af77-bcfe33ba56f2', NULL, '{}'),
	('67b78ff1-49e7-41af-9661-5e0fa2502704', 'aiimage', 'blog-1747585213078.png', NULL, '2025-05-18 16:20:14.735793+00', '2025-05-18 16:20:14.735793+00', '2025-05-18 16:20:14.735793+00', '{"eTag": "\"9022b952ddda7b3a3927248e6f90117c\"", "size": 3730860, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T16:20:15.000Z", "contentLength": 3730860, "httpStatusCode": 200}', '8d94dfb7-5a2d-4d4a-8f8b-daade37f63dc', NULL, '{}'),
	('7eaf8ba3-dd29-4783-a004-84523de442ab', 'aiimage', 'blog-1747591675296.png', NULL, '2025-05-18 18:07:58.365441+00', '2025-05-18 18:07:58.365441+00', '2025-05-18 18:07:58.365441+00', '{"eTag": "\"6db5b5ccf138fa4bffb10738f0fc0c26\"", "size": 3491405, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:07:59.000Z", "contentLength": 3491405, "httpStatusCode": 200}', 'f0ab431b-eca8-44f4-aaed-129a87e6401d', NULL, '{}'),
	('a4effa7f-da6e-4d9e-b5e8-9a8020428db5', 'aiimage', 'blog-1747591743491.png', NULL, '2025-05-18 18:09:04.979861+00', '2025-05-18 18:09:04.979861+00', '2025-05-18 18:09:04.979861+00', '{"eTag": "\"89cec664dd02b2df4fedb9ed79b1cd28\"", "size": 2889386, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:09:05.000Z", "contentLength": 2889386, "httpStatusCode": 200}', 'b61503eb-6814-4e93-91e7-00f0299d69cb', NULL, '{}'),
	('0844efb1-a3df-4aa1-b7cd-8a49a18895fe', 'aiimage', 'blog-1747591832531.png', NULL, '2025-05-18 18:10:36.930633+00', '2025-05-18 18:10:36.930633+00', '2025-05-18 18:10:36.930633+00', '{"eTag": "\"73c8a67b761ed8409b73d57717f91982\"", "size": 3736658, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:10:37.000Z", "contentLength": 3736658, "httpStatusCode": 200}', '041b4f0b-ff00-4c93-a0c2-db4c0ec6ec97', NULL, '{}'),
	('d240595e-4ab0-4ebb-b1e1-5f7bb5e1a5b9', 'aiimage', 'blog-1747591938503.png', NULL, '2025-05-18 18:12:20.812536+00', '2025-05-18 18:12:20.812536+00', '2025-05-18 18:12:20.812536+00', '{"eTag": "\"095c1f533855efbc2ebdbd32f69f5282\"", "size": 3704285, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:12:21.000Z", "contentLength": 3704285, "httpStatusCode": 200}', 'c0a14b38-fb4f-42c8-bdf9-fcd88a34dda1', NULL, '{}'),
	('deaad8e6-2884-4349-8655-b1c492d85475', 'aiimage', 'blog-1747592037502.png', NULL, '2025-05-18 18:13:59.382864+00', '2025-05-18 18:13:59.382864+00', '2025-05-18 18:13:59.382864+00', '{"eTag": "\"fa57dbb4f9a44d8eb861c09a3df20cc8\"", "size": 3579714, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:14:00.000Z", "contentLength": 3579714, "httpStatusCode": 200}', '536edf2c-4adf-427c-9391-d750da5346f8', NULL, '{}'),
	('127c4b47-dfb1-4489-94d9-c75158c00174', 'aiimage', 'blog-1747592138881.png', NULL, '2025-05-18 18:15:40.942241+00', '2025-05-18 18:15:40.942241+00', '2025-05-18 18:15:40.942241+00', '{"eTag": "\"298e858541c3b414f3b6634d7c9b96df\"", "size": 3508750, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:15:41.000Z", "contentLength": 3508750, "httpStatusCode": 200}', 'e7b3389a-9f21-4fd9-9f6f-0e394b6be8e1', NULL, '{}'),
	('a9a4e121-c0fe-4af3-8f52-7aba0a718578', 'aiimage', 'blog-1747592222867.png', NULL, '2025-05-18 18:17:04.989807+00', '2025-05-18 18:17:04.989807+00', '2025-05-18 18:17:04.989807+00', '{"eTag": "\"978f8f6042281b45f197bfdd81340680\"", "size": 3778569, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:17:05.000Z", "contentLength": 3778569, "httpStatusCode": 200}', 'f1a927fc-2267-4fa3-9170-8c466ed9130e', NULL, '{}'),
	('4b9890e0-750f-45ec-bed5-0970102b0d41', 'aiimage', 'blog-1747593000703.png', NULL, '2025-05-18 18:30:03.317651+00', '2025-05-18 18:30:03.317651+00', '2025-05-18 18:30:03.317651+00', '{"eTag": "\"3569b71ebf55a0ae51f925c13bc63044\"", "size": 4019597, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T18:30:04.000Z", "contentLength": 4019597, "httpStatusCode": 200}', 'ed880da9-d024-4e53-a19a-b517d9c97dca', NULL, '{}'),
	('fe58d421-223b-4edf-b64b-fad391c7dd63', 'aiimage', 'blog-1747956722397.png', NULL, '2025-05-22 23:32:06.131473+00', '2025-05-22 23:32:06.131473+00', '2025-05-22 23:32:06.131473+00', '{"eTag": "\"4b8f2e1ff1f909c067855379f1b335d6\"", "size": 3971624, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:32:06.000Z", "contentLength": 3971624, "httpStatusCode": 200}', 'be087a8d-38fc-4946-bd8b-354866dd013f', NULL, '{}'),
	('799edf4a-225d-46fb-b2f1-0c35bc5530ce', 'aiimage', 'blog-1747770008865.png', NULL, '2025-05-20 19:40:10.547833+00', '2025-05-20 19:40:10.547833+00', '2025-05-20 19:40:10.547833+00', '{"eTag": "\"5aa7346a85386737408ed1ae5a83d30b\"", "size": 2103827, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-20T19:40:11.000Z", "contentLength": 2103827, "httpStatusCode": 200}', '2e2785c6-a9f3-44f9-a036-c8c8afb830d8', NULL, '{}'),
	('25040dc3-7709-44c5-9929-c2898ea4a2ab', 'aiimage', 'blog-1747772666954.png', NULL, '2025-05-20 20:24:29.86987+00', '2025-05-20 20:24:29.86987+00', '2025-05-20 20:24:29.86987+00', '{"eTag": "\"1463b35021a89466cce3531696440db7\"", "size": 3190371, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-20T20:24:30.000Z", "contentLength": 3190371, "httpStatusCode": 200}', 'b51cdd28-8afb-4ac7-971a-d509ef6ddb90', NULL, '{}'),
	('e27c5fea-ccd3-408b-a8ed-3427c96a9aea', 'aiimage', 'blog-1747956957518.png', NULL, '2025-05-22 23:35:59.591943+00', '2025-05-22 23:35:59.591943+00', '2025-05-22 23:35:59.591943+00', '{"eTag": "\"abc2de5a582b20f7922ccea1f88c4f48\"", "size": 3208201, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:36:00.000Z", "contentLength": 3208201, "httpStatusCode": 200}', '6935fc9a-64a1-4f2a-8466-50736c34d121', NULL, '{}'),
	('51b549fc-4209-4957-993d-0e9c710dea9d', 'aiimage', 'blog-1747772711041.png', NULL, '2025-05-20 20:25:13.297426+00', '2025-05-20 20:25:13.297426+00', '2025-05-20 20:25:13.297426+00', '{"eTag": "\"a4c9c231cd59a0421a99c3035f881c11\"", "size": 2800235, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-20T20:25:14.000Z", "contentLength": 2800235, "httpStatusCode": 200}', '82356ddd-834e-4812-964c-75b8fa53ab9a', NULL, '{}'),
	('f7776533-5649-49bb-b75c-8825650b44c7', 'aiimage', 'blog-1747772831716.png', NULL, '2025-05-20 20:27:14.177998+00', '2025-05-20 20:27:14.177998+00', '2025-05-20 20:27:14.177998+00', '{"eTag": "\"02cc5abdb58acd1a4d8419992445749e\"", "size": 2649706, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-20T20:27:14.000Z", "contentLength": 2649706, "httpStatusCode": 200}', 'b7e78511-b4eb-41cf-80c7-d2e7f372827f', NULL, '{}'),
	('45f51fdd-5c0e-4c16-af72-96c6f68923b6', 'aiimage', 'blog-1747957025329.png', NULL, '2025-05-22 23:37:08.116581+00', '2025-05-22 23:37:08.116581+00', '2025-05-22 23:37:08.116581+00', '{"eTag": "\"c10ca616a925b33460d67c1918f2bb04\"", "size": 3338627, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:37:08.000Z", "contentLength": 3338627, "httpStatusCode": 200}', '626c3049-5681-4b69-ba70-fd0e46fc03a7', NULL, '{}'),
	('33114c6e-b8aa-4ffc-b743-b0b273839050', 'aiimage', 'blog-1747935720353.png', NULL, '2025-05-22 17:42:02.674825+00', '2025-05-22 17:42:02.674825+00', '2025-05-22 17:42:02.674825+00', '{"eTag": "\"10625af544df8d71a17e86ea353589aa\"", "size": 3253291, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T17:42:03.000Z", "contentLength": 3253291, "httpStatusCode": 200}', 'b5473869-eae9-4fa6-9793-2d3be073eb0a', NULL, '{}'),
	('8f7498b9-4ed7-4ca2-ac64-32222e5a87dd', 'aiimage', 'blog-1747957053411.png', NULL, '2025-05-22 23:37:36.271835+00', '2025-05-22 23:37:36.271835+00', '2025-05-22 23:37:36.271835+00', '{"eTag": "\"81bb2f57ef31401e1c9d14eb936cfd72\"", "size": 3852684, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:37:37.000Z", "contentLength": 3852684, "httpStatusCode": 200}', 'f763ae70-6070-413a-87e0-e5ba2a30d450', NULL, '{}'),
	('9ac15b75-b53b-489a-9611-534abef650b4', 'aiimage', 'blog-1747957088519.png', NULL, '2025-05-22 23:38:11.766816+00', '2025-05-22 23:38:11.766816+00', '2025-05-22 23:38:11.766816+00', '{"eTag": "\"d01c199a0043b3aae14716521f3c75bf\"", "size": 3864881, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:38:12.000Z", "contentLength": 3864881, "httpStatusCode": 200}', 'f88c2dd6-30a4-441c-8fc1-f99b9c11d410', NULL, '{}'),
	('fb27af00-0a03-46cd-b7d9-28e62ae65b08', 'aiimage', 'blog-1747957127391.png', NULL, '2025-05-22 23:38:50.01357+00', '2025-05-22 23:38:50.01357+00', '2025-05-22 23:38:50.01357+00', '{"eTag": "\"b54fb828c6e02b2f4a4553c7ce01e633\"", "size": 3125416, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:38:50.000Z", "contentLength": 3125416, "httpStatusCode": 200}', 'e5fe22e8-2bec-451f-97e2-95ad60309b79', NULL, '{}'),
	('9ed93750-db2e-4226-ada8-043a5c461068', 'aiimage', 'blog-1747957147491.png', NULL, '2025-05-22 23:39:10.454344+00', '2025-05-22 23:39:10.454344+00', '2025-05-22 23:39:10.454344+00', '{"eTag": "\"323bc211bff6404e71f23df2e9c587ab\"", "size": 3268589, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:39:11.000Z", "contentLength": 3268589, "httpStatusCode": 200}', '63cc974f-20d2-4bd2-be90-d7854bf743e6', NULL, '{}'),
	('b15cb1f7-a769-48eb-b78a-919bf852a1c8', 'aiimage', 'blog-1747957204823.png', NULL, '2025-05-22 23:40:08.168591+00', '2025-05-22 23:40:08.168591+00', '2025-05-22 23:40:08.168591+00', '{"eTag": "\"ebe992ff591077046770884eb3d2652a\"", "size": 3630927, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-22T23:40:08.000Z", "contentLength": 3630927, "httpStatusCode": 200}', '9657de26-35c4-4bd9-982a-3721bcbd27e1', NULL, '{}'),
	('85bef42a-916c-429a-bb6b-a1c577459c98', 'aiimage', 'blog-1748882282532.png', NULL, '2025-06-02 16:38:04.765831+00', '2025-06-02 16:38:04.765831+00', '2025-06-02 16:38:04.765831+00', '{"eTag": "\"2b35129980709b7565a14fe61eee65db\"", "size": 2749672, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-02T16:38:05.000Z", "contentLength": 2749672, "httpStatusCode": 200}', 'b2e8dcdc-d741-4a16-8cfb-6b969bd15e0e', NULL, '{}'),
	('bbe8688e-624a-43a9-9e6a-4d807821f554', 'aiimage', 'blog-1749238188801.png', NULL, '2025-06-06 19:29:50.765495+00', '2025-06-06 19:29:50.765495+00', '2025-06-06 19:29:50.765495+00', '{"eTag": "\"8cc43dbb7ef08b1e9ebf138b7287c329\"", "size": 2397663, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-06T19:29:51.000Z", "contentLength": 2397663, "httpStatusCode": 200}', 'ba153914-d4c3-4e71-8482-c99d167b70f6', NULL, '{}'),
	('ee843a0c-e06c-4c04-8457-9ac44b4f96a9', 'aiimage', 'blog-1749238383043.png', NULL, '2025-06-06 19:33:05.287622+00', '2025-06-06 19:33:05.287622+00', '2025-06-06 19:33:05.287622+00', '{"eTag": "\"19d99f6e7720383a5005207576a1aa7d\"", "size": 2850784, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-06T19:33:06.000Z", "contentLength": 2850784, "httpStatusCode": 200}', 'cbc686c2-6b1c-429d-b27a-3f038777a685', NULL, '{}'),
	('49304b88-9a4f-41c9-8517-c8644528719e', 'aiimage', 'blog-1749238979619.png', NULL, '2025-06-06 19:43:02.661124+00', '2025-06-06 19:43:02.661124+00', '2025-06-06 19:43:02.661124+00', '{"eTag": "\"d4087ffc06a484067f51eb3583bc4eb4\"", "size": 2795801, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-06T19:43:03.000Z", "contentLength": 2795801, "httpStatusCode": 200}', 'c9ce57de-46b2-48af-882c-4c35fee128cd', NULL, '{}'),
	('c64b00e3-c3e9-4635-b13f-c62a9adc96cb', 'aiimage', 'blog-1749326453218.png', NULL, '2025-06-07 20:00:54.689251+00', '2025-06-07 20:00:54.689251+00', '2025-06-07 20:00:54.689251+00', '{"eTag": "\"9f3957471a790883af9a584e8ff10dd3\"", "size": 3399202, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-07T20:00:55.000Z", "contentLength": 3399202, "httpStatusCode": 200}', 'c1523ad5-f0a2-466b-ac68-477fbe55e86f', NULL, '{}'),
	('f2169b64-5d96-4e12-a6c3-54ce06ae7171', 'aiimage', 'blog-1749329276466.png', NULL, '2025-06-07 20:47:58.16325+00', '2025-06-07 20:47:58.16325+00', '2025-06-07 20:47:58.16325+00', '{"eTag": "\"650190980f8b3b8d63d9b053794e31e1\"", "size": 2996392, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-07T20:47:58.000Z", "contentLength": 2996392, "httpStatusCode": 200}', '211918a7-f4c5-4454-8e6d-304aa4a08ab6', NULL, '{}'),
	('49d160b8-3cac-47b8-9b59-5a5340aec27b', 'aiimage', 'blog-1749423048070.png', NULL, '2025-06-08 22:50:49.969222+00', '2025-06-08 22:50:49.969222+00', '2025-06-08 22:50:49.969222+00', '{"eTag": "\"dc6d7c43f97e40d0d40f2e78f723b990\"", "size": 3280433, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-08T22:50:50.000Z", "contentLength": 3280433, "httpStatusCode": 200}', '40f113b3-4146-421e-be61-12a6884cf581', NULL, '{}');


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."blogs_id_seq"', 70, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

-- SELECT pg_catalog.setval('"public"."likes_id_seq"', 66, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
