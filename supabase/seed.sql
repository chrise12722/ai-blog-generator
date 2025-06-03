SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
	(33, '2025-05-18 16:19:21.595107+00', 'Anime', '**Understanding Anime: A Cultural Phenomenon**

Anime is a style of animation that originated in Japan and has since gained immense popularity worldwide. Characterized by vibrant art, fantastical themes, and colorful characters, anime encompasses a wide variety of genres and appeals to audiences of all ages.

The term "anime" itself is derived from the English word "animation" and refers specifically to the animation techniques that are unique to Japanese culture. Unlike Western animation, which often targets a younger audience, anime spans genres, ranging from action and adventure to romance and horror, allowing for a diverse viewership.

One primary aspect that sets anime apart is its storytelling. Many anime series delve into complex narratives that explore philosophical themes, societal issues, and character development, often drawing upon elements of Japanese folklore and mythology. Series like "Attack on Titan" and "Naruto" not only entertain but also provoke thought and reflection on deeper social constructs.

Visual style is another critical element of anime. Distinctive features such as exaggerated facial expressions, vibrant colors, and intricate backgrounds create a visually engaging experience. Viewers are often captivated by the anime aesthetic, which varies significantly between different series and films.

Anime is not limited to television; it has also made remarkable strides in film. Renowned filmmakers like Hayao Miyazaki have contributed to the global appreciation of anime through masterpieces such as "Spirited Away," which introduces viewers to the beauty and depth of Japanese animation.

The rise of streaming platforms like Crunchyroll and Funimation has further propelled anime into mainstream culture, providing easy access to both classic and new titles. Conventions and communities dedicated to anime have blossomed, fostering friendships and a sense of belonging among fans worldwide.

In conclusion, anime is not just a form of entertainment; it is a rich cultural tapestry that reflects the intricacies of life, art, and storytelling. Whether you are a long-time fan or a curious newcomer, there is always something new to discover in the vibrant world of anime.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585159213.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', false, 0),
	(30, '2025-05-18 16:17:11.466876+00', 'Airplanes', '**All About Airplanes: A Journey Through the Skies**

Airplanes have transformed the way we travel, making global distances feel smaller and connecting people from every corner of the world. They are marvels of engineering, capable of soaring through the skies, and they play a significant role in both commercial aviation and personal leisure.

### History of Airplanes

The journey of airplanes began with pioneers like the Wright brothers. On December 17, 1903, Orville and Wilbur Wright made their first powered flight in Kitty Hawk, North Carolina, successfully ushering in the age of aviation. Over the decades, aircraft design evolved from simple biplanes to the sophisticated jets we see today.

### How Airplanes Work

The basic principles of flight revolve around four forces: lift, weight, thrust, and drag. Lift is generated by the wings, allowing the airplane to rise into the air. Engines provide the necessary thrust to propel the aircraft forward, while weight, caused by gravity, pulls it downward. Finally, drag is the resistance an airplane experiences as it moves through the air.

### Types of Airplanes

Airplanes come in various types, including commercial airliners, cargo planes, military jets, and private aircraft. Commercial airliners are designed to transport passengers and cargo, while cargo planes are optimized for freight. Military jets serve defense purposes and can perform various roles, from surveillance to combat. Additionally, private airplanes cater to individual travelers, providing a more personalized flight experience.

### The Future of Aviation

Looking forward, the future of aviation is set to embrace technological advancements. Innovations such as electric and hybrid planes could revolutionize the industry, making air travel more sustainable. Furthermore, the development of urban air mobility vehicles, like drones and flying taxis, promises to reshape our commuting landscape.

### Conclusion

Airplanes have not only transformed transportation but have also facilitated globalization and cultural exchange. As we look to the future, the aviation industry is poised for exciting innovations that will continue to make the world more connected and accessible. Whether you’re a frequent flyer or someone dreaming of their first flight, the allure of airplanes remains timeless.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585029154.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', false, 0),
	(31, '2025-05-18 16:17:51.177482+00', 'American Revolution', '**The American Revolution: A Turning Point in History**

The American Revolution, which spanned from 1775 to 1783, marked a pivotal juncture in history as the thirteen American colonies broke free from British rule to establish the United States of America. This long-standing conflict was not merely a battle for independence but also a struggle with significant political, social, and economic implications.

The roots of the American Revolution can be traced back to the growing discontent among colonists towards British governance. After the French and Indian War (1754-1763), Britain sought to recoup debts incurred during the conflict by imposing taxes on the colonies, such as the Stamp Act and the Townshend Acts. These legislative measures incited outrage among colonists, who began to rally around the slogan, "No taxation without representation." 

As tensions escalated, skirmishes broke out, notably at Lexington and Concord in April 1775, marking the official start of armed conflict. Leaders such as George Washington, Thomas Jefferson, and Benjamin Franklin emerged, advocating for independence and rallying support. The Continental Congress was formed, ultimately adopting the Declaration of Independence on July 4, 1776. This document articulated the colonies'' desire for free governance, emphasizing unalienable rights such as life, liberty, and the pursuit of happiness.

The American Revolution comprised several key battles, including the Battle of Bunker Hill, Battle of Saratoga, and the Siege of Yorktown. The latter resulted in a decisive victory for the Americans and marked the beginning of the end for British territorial claims in America. Internationally, the revolution gained traction, with France entering the war as an ally to the colonies in 1778, viewing it as an opportunity to weaken British influence.

The conclusion of the Revolution came with the Treaty of Paris in 1783, which recognized American independence and established new borders. The aftermath of the conflict saw the emergence of the United States as a sovereign entity, leading to the drafting of the Constitution in 1787.

The American Revolution was not only a significant event in U.S. history but also inspired revolutionary movements worldwide. Its ideals of democracy and freedom continue to resonate today, reflecting the enduring legacy of a nation forged in the pursuit of liberty.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585069168.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', false, 0),
	(32, '2025-05-18 16:18:37.137307+00', 'AI', '**Understanding Artificial Intelligence: Transforming Our World**

Artificial Intelligence (AI) is revolutionizing various sectors, from healthcare to finance and beyond. At its core, AI refers to the simulation of human intelligence in machines programmed to think and learn like humans. 

### What is AI?

AI comprises several subfields, including machine learning, natural language processing, robotics, and computer vision. Machine learning, a prominent area within AI, enables systems to learn from data patterns without explicit programming. For example, algorithms can predict user preferences on streaming platforms or personalize marketing strategies based on consumer behavior.

### Types of AI

AI can be categorized into two main types: narrow AI and general AI. Narrow AI is designed for specific tasks, such as virtual assistants like Siri or chatbots that provide customer support. In contrast, general AI, which remains theoretical, would possess the ability to perform any intellectual task that a human can do.

### Applications of AI

AI is increasingly integrated into our daily lives. In healthcare, it aids in diagnosing diseases through imaging analysis and predicting patient outcomes. In finance, AI systems detect fraud by analyzing transaction patterns in real-time. Moreover, industries like transportation are seeing the emergence of autonomous vehicles that rely on AI to navigate safely.

### Ethical Considerations

Despite its benefits, the rise of AI also poses ethical challenges. Concerns about job displacement, data privacy, and decision-making transparency require attention as we integrate AI into society. Regulations and ethical frameworks are essential to ensure that AI serves humanity positively and equitably.

### The Future of AI

The future of AI is promising, with ongoing advancements expected to enhance its capabilities exponentially. As AI continues to develop, it will transform industries, create new job opportunities, and fundamentally alter how we interact with technology. The key is to harness its potential responsibly, ensuring that we create innovative solutions while safeguarding the values and rights of individuals.

In summary, AI is more than just a technological trend; it is an integral part of our evolving landscape. Recognizing its implications and fostering a balanced approach will be crucial as we advance into this AI-powered future.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585114905.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', true, 5),
	(34, '2025-05-18 16:20:14.966597+00', 'Florida Panthers', '**Florida Panthers: A Rising Force in the NHL**

The Florida Panthers, established in 1993, are a professional ice hockey team based in Sunrise, Florida. They compete in the Atlantic Division of the Eastern Conference in the National Hockey League (NHL). Over the years, the Panthers have built a passionate fan base despite facing challenges typical of expansion teams.

In terms of performance, the Panthers experienced their most significant success in the mid-1990s, when they reached the Stanley Cup Finals in 1996, only to be swept by the Colorado Avalanche. Although they struggled in the following years, the team has shown marked improvement in recent seasons, establishing itself as a contender in the league.

The Panthers play their home games at the BB&T Center, a modern arena that has undergone multiple renovations to enhance the fan experience. The atmosphere during a game is electric, with a committed fan base that engages deeply with the team, particularly during playoff runs.

The team''s logo, featuring a stylized panther ready to pounce, reflects the state’s wildlife and the aggressive style of play the Panthers strive for. Players like Aleksander Barkov and Jonathan Huberdeau have become fan favorites, showcasing skill and determination on the ice.

In recent years, the Panthers have embraced a more aggressive and fast-paced style of play, often characterized by high scoring and tight defense. The hiring of head coach Paul Maurice in 2022 marked a pivotal moment for the franchise, as he brought in experience and a fresh tactical approach to maximize player potential.

Looking ahead, the Florida Panthers are motivated to build on recent successes and are committed to winning their first Stanley Cup. With a solid roster and growing fan support, the Panthers are poised to make a lasting impact in the NHL, ensuring that Florida remains a hotbed for hockey enthusiasm. Whether you’re a long-time fan or a newcomer, the Panthers are an exciting team to follow as they pursue their championship dreams.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585213078.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', true, 101),
	(36, '2025-05-18 18:09:05.203648+00', 'NextJS', '**Exploring Next.js: The Powerful React Framework**

Next.js has emerged as a standout framework for building modern web applications with React. Developed by Vercel, it offers a range of features that simplify the development process while enhancing performance and scalability. Let''s delve into the core aspects that make Next.js a compelling choice for developers.

### What is Next.js?

Next.js is a React-based framework that allows developers to build server-side-rendered (SSR) or static web applications effortlessly. It provides a powerful set of tools that streamline the development process, enabling features like automatic code splitting, optimized loading, and easy integration with APIs.

### Key Features

1. **Server-side Rendering**: Next.js supports server-side rendering out of the box. This means the HTML is generated on the server, providing better SEO and faster initial load times compared to traditional client-side rendering.

2. **Static Site Generation**: With the ability to generate static pages at build time, Next.js allows for the creation of lightning-fast websites. Developers can choose between SSR and static site generation on a per-page basis, granting them flexibility based on project requirements.

3. **File-based Routing**: Next.js utilizes a straightforward file-based routing system. By simply creating files in the `pages` directory, developers can create routes without writing additional configuration.

4. **API Routes**: It’s possible to create API with Next.js, enabling backend features directly within your application. This reduces the complexity of setting up a separate server and allows developers to handle API requests alongside their React components.

5. **Image Optimization**: Next.js comes with built-in image optimization capabilities, automatically serving images in the most efficient format and size, which enhances performance and user experience.

### Advantages of Using Next.js

- **Improved SEO**: By offering SSR and static site generation, Next.js can render pages in a way that is more favorable for search engine indexing.
- **Faster Performance**: Optimized loading via automatic code splitting and image optimization leads to faster application performance.
- **Developer Experience**: With features like hot reloading and an easy-to-use routing system, Next.js greatly enhances the developer experience, allowing for efficient prototyping and iteration.

### Conclusion

Next.js has solidified its position as a leading framework in the React ecosystem, offering developers the tools they need to build efficient, scalable, and high-performing web applications. Whether you are starting a new project or updating an existing one, considering Next.js could provide significant benefits in terms of performance and development speed. With its robust features and ease of use, it''s clearly a framework worth exploring.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747591743491.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(37, '2025-05-18 18:10:37.193641+00', 'Akihabara', '**Exploring Akihabara: The Electric Town of Tokyo**

Nestled in the heart of Tokyo, Akihabara is a vibrant district known for its unique blend of modern pop culture, technology, and history. Often referred to as "Electric Town," it has become a haven for otaku culture and a paradise for anime, manga, and gaming enthusiasts. 

Originally, Akihabara was famous for its electronics stores, selling everything from appliances to high-end gadgets. While the area still boasts numerous shops dedicated to electronics, it has evolved into a bustling center for otaku culture since the 1990s. Today, the streets are lined with countless shops featuring anime merchandise, manga, and video games. Iconic stores like Animate, Mandarake, and Yodobashi Camera attract visitors from around the globe, eager to explore the latest in technology and fan gear.

One of Akihabara''s most unique aspects is its numerous themed cafes. Maid cafes, where waitresses dress in cute maid costumes, serve food and drinks with a playful twist, providing a distinctly immersive experience. Additionally, themed cafes dedicated to popular franchises, such as cat cafes or video game-inspired venues, offer a chance for fans to engage with their favorite characters in a cozy setting.

The area also hosts many events and pop-up shops, especially surrounding anime and gaming releases. These events often feature exclusive merchandise and appearances from voice actors, drawing considerable crowds. Visitors can immerse themselves in a variety of exhibitions and seasonal events, making each trip to Akihabara a unique experience.

For those looking to delve deeper into Japan''s pop culture, Akihabara is home to several museums and galleries. The Akihabara UDX and the nearby 3331 Arts Chiyoda often showcase art exhibits that explore various aspects of anime, including character design and production art.

Whether you are a die-hard otaku or just a curious traveler, Akihabara is not to be missed. Its eclectic mix of technology, pop culture, and distinct experiences makes it a must-visit destination for anyone exploring Tokyo. So grab your camera, prepare your wallet, and immerse yourself in the electric energy of Akihabara!', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747591832531.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(40, '2025-05-18 18:15:41.13265+00', 'Computers', '**Understanding Computers: An Overview of Their Functionality and Importance**

In today''s digital age, computers have become an integral part of our lives, transforming how we work, communicate, and access information. From basic calculations to complex data processing, computers serve various purposes, making them essential tools in both personal and professional realms.

### What is a Computer?

A computer is an electronic device that processes data, following a set of instructions known as software. It operates on binary code, using a series of 0s and 1s to perform calculations and execute commands. The main components of a computer include:

1. **Hardware**: This consists of the physical components, such as the CPU (central processing unit), memory (RAM), storage devices (HDD or SSD), and input/output devices (keyboard, mouse, monitor).
   
2. **Software**: These are the programs and operating systems that instruct the hardware on what tasks to perform. Examples include operating systems like Windows, macOS, and Linux, as well as applications like Microsoft Office and web browsers.

### Types of Computers

Computers come in various forms to cater to different needs:

- **Personal Computers (PCs)**: Designed for individual use, they can be desktops or laptops.
- **Tablets and Smartphones**: Portable devices that combine computing and telecommunication.
- **Servers**: Powerful machines designed to host services and manage networks.
- **Mainframes and Supercomputers**: High-performance computers used for complex computations, mostly in scientific research and large organizations.

### The Impact of Computers on Society

The evolution of computers has led to significant changes in many aspects of life:

1. **Communication**: Computers enable instant messaging, emails, and video conferencing, bridging gaps across distances.
2. **Education**: Online learning platforms and resources improve access to knowledge and education worldwide.
3. **Business**: Computers streamline processes, enhance productivity, and support data management and analysis.

In conclusion, understanding computers is fundamental in our increasingly technology-driven society. Their capabilities continue to expand, shaping our future and redefining everyday tasks. As we navigate this digital landscape, being aware of how computers function and their significance will empower us to harness their full potential.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747592138881.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(42, '2025-05-18 18:30:03.495102+00', 'Roman Empire', '**The Rise and Fall of the Roman Empire**

The Roman Empire stands as one of the most powerful and influential civilizations in history. At its zenith, it encompassed vast territories across Europe, North Africa, and parts of Asia, serving as a rigorously structured society that laid the groundwork for modern governance, law, engineering, and culture.

**Rise of the Empire**

The Roman Empire''s foundation dates back to 753 BC with the establishment of Rome itself. Initially a republic, Rome grew through military conquests, political alliances, and strategic colonization. The pivotal moment for the transformation into an empire occurred in 27 BC when Augustus (formerly known as Octavian) became the first emperor. His reign marked the beginning of the Pax Romana, a 200-year period of relative peace and stability across the empire.

**Governance and Legal Legacy**

Roman governance was characterized by a sophisticated legal system, with principles such as “innocent until proven guilty” that still resonate in modern law. The Codex Justinianus, compiled in the 6th century AD, remains a significant reference point for contemporary legal systems. The Senate, though diminished in power during the Empire, initially played a crucial role in governance, influencing political decisions and representing the aristocracy''s interests.

**Cultural Influences**

Roman culture was heavily influenced by the Greeks, especially in art, architecture, and philosophy. Structures like the Colosseum and aqueducts exemplify their architectural prowess, while Latin, the language of the Romans, is the root of many modern languages. Roman literature flourished with authors such as Virgil and Cicero, who contributed significantly to philosophy and poetry.

**Decline and Fall**

The decline of the Roman Empire was a complex process influenced by economic troubles, military overextension, and internal strife. The split into the Western and Eastern Roman Empires in AD 395 further weakened the empire. The Western Roman Empire ultimately fell in 476 AD when the last emperor, Romulus Augustulus, was deposed, while the Eastern half, known as the Byzantine Empire, continued for nearly another thousand years.

**Legacy**

The legacy of the Roman Empire is profound and enduring. Its contributions to law, government, and infrastructure continue to shape contemporary society. The empire’s rise and fall serve as a poignant reminder of the complexities of power, culture, and human achievement throughout history. Understanding the Romans invites us to reflect on our societal foundations and the continuous evolution of civilizations.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747593000703.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(43, '2025-05-20 19:40:10.6825+00', 'Dogs', '**The Incredible World of Dogs: Our Loyal Companions**

Dogs have been our companions for thousands of years, known for their loyalty, intelligence, and affectionate nature. As one of the first domesticated animals, they have evolved alongside humans, becoming integral to our daily lives. In this blog post, we''ll explore the fascinating world of dogs, their various breeds, their roles in society, and the joy they bring to our lives.

### The Rich History of Dogs

The domestication of dogs dates back to at least 15,000 years, when they were first bred from wolves. Their ability to form close bonds with humans made them ideal companions for hunting and herding. Over the centuries, selective breeding has resulted in the diverse range of dog breeds we see today, each with unique traits and characteristics.

### Understanding Breeds

Dogs come in a myriad of breeds, each with its own personality, size, and energy levels. Some popular breeds include:

- **Labrador Retriever**: Known for their friendly nature and intelligence, they excel as service dogs and family pets.
- **German Shepherd**: Highly intelligent and versatile, they make excellent working dogs for police and rescue operations.
- **Bulldog**: Gentle and affectionate, bulldogs have a distinct appearance and are known for their laid-back demeanor.
- **Poodle**: Available in three sizes (standard, miniature, and toy), poodles are intelligent, trainable, and hypoallergenic.

Each breed has specific needs, so it’s essential for potential dog owners to research and choose a breed that fits their lifestyle.

### The Role of Dogs in Society

Dogs serve various roles in modern society beyond just being pets. They work as:

- **Service Animals**: Assisting individuals with disabilities, particularly guide dogs for the visually impaired.
- **Therapy Dogs**: Providing comfort and emotional support in hospitals, schools, and nursing homes.
- **Search and Rescue Dogs**: Alerting authorities during natural disasters and locating missing persons.
- **Detection Dogs**: Used in law enforcement to detect drugs, explosives, and contraband.

### The Joy of Owning a Dog

Bringing a dog into your home can lead to an immensely rewarding experience. Studies suggest that owning a dog leads to improved mental health, increased physical activity, and enhanced social interactions. Dogs encourage their owners to participate in outdoor activities and create countless opportunities for social connections, whether at the dog park or during training classes.

### Training and Care

Training and socialization are crucial for any dog. Early training can help reinforce good behavior and alleviate potential issues. Basic commands such as sit, stay, and come are essential for building a strong bond between dog and owner, establishing trust and communication.

Caring for a dog involves providing proper nutrition, regular exercise, grooming, and routine veterinary check-ups. Ensuring your dog''s health and well-being is a lifelong responsibility that every dog owner must embrace.

### Conclusion

Dogs bring joy, companionship, and countless benefits into our lives. Their diverse breeds and unique personalities allow them to fit perfectly into varied households, making them beloved family members. Whether you''re considering adopting your first dog or looking to add to your pack, understanding the responsibilities and joy that come with dog ownership is essential. Embrace the bond with your furry friend, and enjoy the unconditional love and loyalty they offer! 

In a world that''s constantly changing, dogs remind us of the simple pleasures in life and the importance of companionship. Through thick and thin, they remain our ever-loyal friends.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747770008865.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(44, '2025-05-20 20:24:30.115928+00', 'Javascript', '**Understanding JavaScript: The Language of the Web**

JavaScript (JS) is a powerful, high-level programming language primarily used for creating dynamic and interactive content on the web. Alongside HTML and CSS, it forms the triumvirate of web technologies that power virtually all websites today. 

### A Brief History

Developed by Brendan Eich in 1995, JavaScript was initially designed to add simple interactivity to web pages. Over the years, it has evolved significantly. With the emergence of frameworks like Node.js, JavaScript is no longer limited to client-side scripting and is now widely used for server-side development as well.

### Core Features

1. **Dynamic and Versatile**: JavaScript can manipulate HTML documents (the Document Object Model), making real-time updates without a page reload. This leads to a better user experience.

2. **Event-Driven**: JS reacts to user interactions, such as clicks or keyboard inputs, enhancing the interactive experience of web applications.

3. **Asynchronous Programming**: JavaScript supports asynchronous operations through callbacks, promises, and async/await syntax, allowing for smoother execution and improved user experience.

### Modern Ecosystem

With a rich ecosystem of libraries and frameworks, such as React, Angular, and Vue.js, JavaScript empowers developers to create robust applications more efficiently. Additionally, package managers like npm enable easy management of code libraries and dependencies.

### Conclusion

JavaScript has cemented its place as a foundational element of web development. Whether you are building simple websites or complex web applications, mastering JavaScript is essential for any aspiring developer. Its versatility and broad applicability make it a must-learn language in today''s tech landscape. 

As the web continues to grow and evolve, so too will JavaScript, making it an exciting language to watch in the coming years.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747772666954.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(46, '2025-05-20 20:27:14.383853+00', 'Youtube', '**Exploring the Phenomenon of YouTube**

YouTube has transformed the way we consume and share video content since its launch in 2005. With over two billion logged-in monthly users, it is the world''s largest video-sharing platform, offering an eclectic mix of entertainment, education, news, and more.

### What is YouTube?

At its core, YouTube allows users to upload, view, and share videos. Content creators, known as YouTubers, can upload videos ranging from vlogs and tutorials to music videos and documentaries, catering to diverse interests and age groups. The platform is free to use, with the option for users to subscribe to channels, like videos, and leave comments, fostering a community around shared interests.

### Features of YouTube

YouTube includes several features that enhance user experience:

1. **YouTube Shorts**: Launched to compete with TikTok, Shorts allows creators to produce and share brief video clips (under 60 seconds), providing a rapid consumption method for viewers.

2. **Live Streaming**: Creators can broadcast live, interact with viewers in real-time, and engage their audience in a dynamic way.

3. **YouTube Premium**: This subscription service offers ad-free viewing, access to exclusive content, and offline viewing, creating a seamless experience for heavy users.

4. **Monetization**: Many creators earn revenue through ads, memberships, and merchandise sales, turning their passion into a viable career.

### The Cultural Impact

YouTube has not only changed individual entertainment experiences but also influenced culture and society. Viral challenges, music hits, and social movements often find their beginnings on this platform. Moreover, it serves as a powerful educational tool, with countless tutorials and educational channels available for free, making learning accessible to all.

### Conclusion

In summary, YouTube is more than just a video platform; it’s a global community with a profound impact on content creation, consumption, and culture. As it continues to evolve, it remains a place where creativity thrives, allowing anyone with access to a camera and an internet connection to share their voice and connect with millions around the world. Whether you’re a content creator or a passionate viewer, YouTube is shaping the digital landscape like never before.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747772831716.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(41, '2025-05-18 18:17:05.276739+00', 'Anime', '**The Vibrant World of Anime: A Cultural Phenomenon**

Anime, a style of animation that originated in Japan, has grown into a global cultural powerhouse, enchanting audiences of all ages and backgrounds. Characterized by colorful artwork, imaginative themes, and fantastic storytelling, anime spans a wide array of genres, making it a versatile medium for entertainment.

The origins of anime can be traced back to the early 20th century, with the first recognized works emerging in the 1910s. However, it wasn''t until the 1960s that anime began to flourish as a distinctive art form, thanks to pioneers like Osamu Tezuka, often referred to as the "God of Manga." His series "Astro Boy" laid the foundation for much of modern anime, popularizing its unique visual style.

Anime is not just a form of entertainment but a significant cultural export for Japan. It has influenced various aspects of global pop culture, inspiring countless artists, musicians, and storytellers outside of Japan. From the iconic "Naruto" to the emotionally charged "Your Name," anime has something for everyone, whether you’re a fan of action, romance, fantasy, or horror.

The impact of anime extends beyond mere entertainment; it fosters community. Anime conventions, cosplay events, and online forums enable fans to connect, share their passions, and celebrate their favorite series. Platforms like Crunchyroll and Funimation have made accessing anime easier than ever, allowing fans to enjoy both new releases and classic series from the comfort of their homes.

Moreover, anime often delves into complex themes, offering social commentary on issues like war, identity, and environmentalism. Series like "Attack on Titan" can spark thought-provoking discussions, making them not just sources of escapism but vehicles for deeper understanding.

In conclusion, anime represents much more than just animated content; it is a multifaceted cultural phenomenon that continues to captivate audiences around the world. Its rich history, diverse genres, and ability to foster community make it a significant part of modern entertainment and a vital piece of cultural exchange. Whether you''re a long-time aficionado or a newcomer, anime offers a unique lens through which to explore storytelling and artistry.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747592222867.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 22),
	(48, '2025-05-22 18:10:56.020617+00', 'Marvel', '**The Marvel Universe: A Journey Through Heroism and Imagination**

The Marvel Universe is a rich tapestry of storytelling that brings to life a vast array of characters, narratives, and adventures. Established in 1939, Marvel Comics has evolved from small comic book publications into a multi-faceted entertainment powerhouse, encompassing movies, television shows, merchandise, and more.

At the core of the Marvel Universe are its iconic characters. Superheroes like Spider-Man, Iron Man, Captain America, and Black Widow have not only captured the imaginations of comic book fans but also have become cultural symbols recognized around the globe. These characters are often depicted as flawed individuals who face personal challenges while fighting against formidable villains, making them relatable and human.

The interconnectedness of the Marvel Universe is another noteworthy aspect. Initially introduced through comic book series, Marvel successfully adapted its expansive universe into the Marvel Cinematic Universe (MCU) beginning with "Iron Man" in 2008. The MCU has since produced a plethora of films and TV shows, creating a shared world where characters from different stories intersect, collaborate, and sometimes clash. This intricate web of interconnections has kept fans engaged for over a decade, building anticipation for upcoming titles and crossovers.

In addition to films, Marvel has utilized various media to tell its stories. Animated series, video games, and even theatrical performances have expanded the reach of its narratives, allowing fans of all ages to engage with the characters in unique ways. Marvel also places a strong emphasis on diversity and representation, introducing characters from different backgrounds and cultures, thereby enriching its narrative landscape.

In conclusion, the Marvel Universe is much more than just a collection of comic books and movies; it''s a dynamic world filled with heroes, complex storylines, and cultural significance. As Marvel continues to evolve and expand into new frontiers, one thing remains certain: its influence on pop culture and storytelling will resonate for generations to come.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747937454059.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(50, '2025-05-22 18:39:38.017853+00', 'FIU', '**Florida International University: A Gateway to Academic Excellence**

Florida International University (FIU) stands as one of the most prominent public research universities in the United States. Established in 1965, FIU is located in Miami, Florida, and has grown to be a vibrant hub of academic innovation, community engagement, and multiculturalism.

FIU is known for offering a diverse range of degree programs from undergraduate to doctoral levels across various disciplines including business, engineering, health sciences, arts, and humanities. With more than 58,000 students from over 100 countries, the university fosters a multicultural environment that enriches the academic experience.

One of FIU’s standout features is its commitment to research. The university is classified as a “R1: Doctoral Universities – Very High Research Activity” institution, and it is a member of the Association of American Universities. This classification highlights FIU’s dedication to advancing knowledge and innovation, with research initiatives spanning critical areas like environmental science, public health, and cybersecurity.

In addition to its academic strengths, FIU is renowned for its lively campus life. The university boasts over 300 student organizations, ranging from cultural clubs to academic societies, ensuring that students can find their niche and engage socially and academically. FIU’s Division of Athletics also provides vibrant opportunities for students to showcase their talents in sports, fostering school spirit and community pride.

One of the driving forces behind FIU''s rapid growth and success is its commitment to providing access to education for all. Through various outreach programs and scholarships, FIU aims to break down barriers to higher education, making it a model of inclusiveness and accessibility.

In summary, Florida International University is more than just an educational institution; it is a community of diverse learners, a hub for groundbreaking research, and an advocate for accessible education. Whether you’re a prospective student considering your options or a community member looking to engage with a dynamic institution, FIU offers boundless opportunities for growth and exploration.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747939175409.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(51, '2025-05-22 23:32:06.377692+00', 'New York', '**Exploring the Vibrant City of New York**

New York City, often referred to as "The Big Apple," is one of the most iconic and dynamic cities in the world. Known for its towering skyscrapers, diverse culture, and vibrant arts scene, it serves as a global hub for finance, fashion, and entertainment.

Located in the northeastern United States, New York City is made up of five boroughs: Manhattan, Brooklyn, Queens, The Bronx, and Staten Island. Each borough boasts its own unique character and attractions, making the city a mosaic of cultures and experiences. Manhattan is famous for landmarks such as Times Square, Central Park, and the Statue of Liberty, while Brooklyn is celebrated for its picturesque neighborhoods and the iconic Brooklyn Bridge.

New York City is home to an array of world-class museums, including the Metropolitan Museum of Art and the Museum of Modern Art (MoMA). Art enthusiasts and history buffs alike can spend days exploring the vast collections and exhibits these institutions offer. Beyond museums, the city''s theater scene is unparalleled, epitomized by Broadway shows that attract millions of visitors each year.

Food lovers will find themselves in paradise as New York City offers a culinary landscape that reflects its multicultural population. From street food carts serving hot dogs and pretzels to upscale dining in Michelin-starred restaurants, the options are limitless. Don''t forget to indulge in classic New York-style pizza and bagels, both of which hold a special place in the city''s gastronomic culture.

Shopping in New York City is an adventure in itself, with everything from high-end designer boutiques on Fifth Avenue to unique finds in the bustling markets of Brooklyn. Visitors often flock to iconic department stores like Macy''s and Saks Fifth Avenue to experience the allure of retail in the heart of the city.

With its rich history, diverse population, and endless opportunities for exploration, New York City remains a top destination for travelers from all over the globe. Whether you''re visiting for a weekend or planning an extended stay, the electric energy of New York will leave a lasting impression. Embrace the adventure and immerse yourself in the vibrant culture that makes New York a true gem of America.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747956722397.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(55, '2025-05-22 23:38:12.056325+00', 'Hockey', '**Hockey: A Fast-Paced, Thrilling Sport on Ice**

Hockey, known for its speed, skill, and excitement, is a sport rich in history and tradition. Originating in the 18th century, hockey has evolved into one of the most popular sports worldwide, particularly in countries like Canada, the United States, Russia, and Sweden. This blog post delves into what makes hockey such an exhilarating sport and explores its rules, equipment, and the vibrant culture surrounding it.

At its core, hockey is played on an ice rink, where two teams compete to score goals by shooting a puck into the opposing team''s net. Each team consists of six players: three forwards, two defensemen, and a goaltender. The game is split into three periods, typically lasting 20 minutes each, with breaks between them. The objective is simple: score more goals than the opposing team.

One of the defining features of hockey is the unique equipment used by players. This includes skates, sticks, helmets, and protective gear such as shoulder pads, shin guards, and gloves. Skating skills are crucial, as players must move swiftly on ice while maintaining control of the puck. The stick, typically made of composite materials, allows players to shoot, pass, and handle the puck with remarkable precision.

The rules of hockey, while straightforward, can be complex. Penalties are commonly enforced for various infractions, such as tripping or high-sticking, which result in temporary player disadvantage. The quick pace of the game means that players must be agile, both physically and mentally, to adapt and strategize on-the-fly.

Hockey also boasts a rich cultural aspect, with fervent fan communities and passionate rivalries. In North America, leagues like the National Hockey League (NHL) dominate, featuring teams with storied histories and dedicated followings. The Stanley Cup playoffs, a highlight of the hockey calendar, showcase some of the sport''s most intense competition and exhilarating moments. 

In conclusion, hockey is more than just a game; it''s a thrilling experience that encapsulates speed, strategy, and a sense of community. Whether you''re a player, a fan, or a newcomer to the sport, there''s always something special about witnessing the graceful artistry and raw energy of a hockey match. So, grab your skates and stick, and embark on an adventure in the exhilarating world of hockey!', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957088519.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(53, '2025-05-22 23:37:08.327624+00', 'Hockey', '**The Thrilling World of Hockey**

Hockey is a dynamic sport that captivates millions around the globe with its blend of speed, skill, and strategy. Originating in the British Isles and evolving over centuries, hockey now comes in several formats, including ice hockey, field hockey, and roller hockey. Each version has its unique charm and challenges but shares a common goal: to score more goals than the opposing team.

### Ice Hockey

Ice hockey is perhaps the most popular variant, particularly in North America and Europe. Played on an ice rink, two teams of skaters use sticks to control and shoot a puck into the opponent''s net. The National Hockey League (NHL) is the premier professional league, showcasing incredible talent and fierce rivalries. Key elements of ice hockey include speed, teamwork, and physicality, making it a thrilling spectator sport. Players like Wayne Gretzky and Sidney Crosby have left an indelible mark on the game.

### Field Hockey

Field hockey, on the other hand, is predominantly played on grass or artificial turf. With its roots tracing back to the 12th century, this Olympic sport involves two teams of eleven players who aim to score goals using curved sticks. It’s particularly popular in countries like India, Pakistan, Australia, and the Netherlands. Unlike ice hockey, field hockey emphasizes cardiovascular endurance, precision passing, and tactical awareness.

### The Essence of the Game

At its core, hockey is about teamwork and strategy. Each player has a specific role, whether it’s the enforcer who protects teammates, the playmaker who sets up scoring opportunities, or the goalie who guards the net. The fast-paced nature of the game keeps fans on the edge of their seats, as split-second decisions can change the outcome.

### Conclusion

Whether you''re a fan of the slap shots of ice hockey or the intricate plays of field hockey, the sport offers excitement, athleticism, and a sense of community. Join the ranks of fans who celebrate this exhilarating game, and immerse yourself in the culture of hockey—a sport uniting players and spectators alike in its passionate pursuit of victory.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957025329.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 0),
	(54, '2025-05-22 23:37:36.459584+00', 'Hockey', '**The Thrilling World of Hockey: A Comprehensive Overview**

Hockey, often called "the fastest game on ice," is a dynamic and exhilarating team sport that captures the hearts of millions around the globe. This high-paced game involves two teams, each aiming to score goals by hitting a puck into their opponent''s net using sticks. While the most popular form of the sport is ice hockey, other variations such as field hockey and roller hockey also exist.

### A Brief History

Hockey''s origins are somewhat murky, but it is believed to have evolved from various stick-and-ball games played in Europe. The modern version of ice hockey began to take shape in late 19th century Canada, drawing inspiration from sports like lacrosse and rugby.

### The Game''s Structure

A standard ice hockey game consists of three periods, each lasting 20 minutes. Teams are comprised of six players, including a goaltender. The objective is simple: score more goals than the opposing team. The game''s fast pace is defined by skillful skating, strategic passing, and fierce competition.

### Key Skills

To excel in hockey, players must possess a diverse set of skills. These include:

- **Skating:** The ability to glide and maneuver quickly on the ice is essential.
- **Stickhandling:** Controlling the puck with a hockey stick to evade opponents.
- **Shooting:** Various shooting techniques, such as wrist shots and slap shots, are necessary to score goals.
- **Teamwork:** Coordinating plays with teammates is vital for success.

### Major Leagues and Tournaments

The National Hockey League (NHL) is the premier professional league in North America, showcasing the world''s top talent. Hockey tournaments, such as the Winter Olympics and the IIHF World Championships, further highlight the sport''s international appeal.

### Conclusion

Hockey is more than just a sport; it embodies a culture of passion, dedication, and camaraderie. Whether playing in your local rink or cheering on your favorite team at a massive arena, the excitement of hockey is infectious. As we continue to witness the evolution of this sport, it’s clear that hockey will remain a beloved pastime for generations to come.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957053411.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 0),
	(56, '2025-05-22 23:38:50.194356+00', 'Basketball', '**The Thrilling World of Basketball: A Comprehensive Overview**

Basketball, a fast-paced sport invented in 1891 by Dr. James Naismith, has transformed into one of the most popular games globally. Played on a rectangular court with two teams of five players each, the objective is simple: score points by shooting the basketball through the opponent’s hoop, which is mounted 10 feet high.

### The Basics of Basketball

A standard basketball game consists of four quarters, typically lasting 12 minutes each at the professional level, with variations in other leagues. Teams score by making field goals (worth two points) or three-point shots (worth three points), and free throws (worth one point), awarded after certain fouls. 

### Key Positions

Each team features specific player positions, including:

- **Point Guard**: Often seen as the team’s leader, responsible for directing plays and distributing the ball.
- **Shooting Guard**: Primarily focused on scoring points, adept at shooting from long ranges.
- **Small Forward**: Versatile players who can score, defend, and excel in multiple play positions.
- **Power Forward**: Powerful, often playing close to the basket, combining physical play with scoring ability.
- **Center**: Typically the tallest player, focused on blocking shots and rebounding.

### The Professional Scene

The NBA (National Basketball Association) is the premier professional basketball league, showcasing elite talent from around the world. With global stars like LeBron James and Stephen Curry, the league has broadened basketball’s appeal and fostered a dedicated fanbase. 

### Cultural Impact and Global Reach

Basketball has transcended the boundaries of sports. It’s not just a game; it’s a cultural phenomenon, influencing music, fashion, and social issues worldwide. From street basketball courts in urban neighborhoods to international competitions, the sport fosters community and showcases diversity.

In summary, basketball is not just an athletic pursuit; it’s a dynamic and influential cultural force that continues to captivate millions. Whether you''re a casual fan or a dedicated player, the beautiful game of basketball offers excitement, community, and a thrilling experience on and off the court.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957127391.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(59, '2025-05-22 23:42:05.622338+00', 'World War II', '**A Brief Overview of World War II**

World War II, one of the most significant events in modern history, lasted from 1939 to 1945 and involved many of the world’s great powers. This global conflict stemmed from unresolved issues from World War I and the rise of tyrannical regimes across Europe and Asia. 

The war began on September 1, 1939, when Germany, led by Adolf Hitler, invaded Poland. This aggressive act prompted Britain and France to declare war on Germany. They formed the Allies, which would grow to include countries like the United States, the Soviet Union, and China. On the opposing side were the Axis powers, primarily Germany, Italy, and Japan.

Throughout the war, numerous battles were fought, each marked by significant strategies and stakes. Major battles included the Battle of Britain, where the Royal Air Force defended the UK against the German Luftwaffe, and the Battle of Stalingrad, a turning point on the Eastern Front that saw the Soviet army defeat German forces.

The war extended beyond Europe, with significant campaigns in North Africa and the Pacific Theater. The attack on Pearl Harbor by Japan in December 1941 brought the United States into the conflict, significantly altering the momentum of the war. 

One of the most harrowing aspects of World War II was the Holocaust, where six million Jews, along with millions of others persecution victims, were systematically exterminated by the Nazi regime. This act of genocide serves as a solemn reminder of the horrors of war and intolerance.

The war concluded with the unconditional surrender of the Axis powers in 1945. Germany surrendered in May, followed by Japan in September after the U.S. dropped atomic bombs on Hiroshima and Nagasaki. 

World War II reshaped international relations, leading to the establishment of the United Nations and a new geopolitical landscape during the Cold War era. Its effects are still felt today, reminding us of the capacity for both destruction and resilience in humanity.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957321405.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(60, '2025-05-22 23:44:25.124001+00', 'Internet', '**The Internet: Connecting the World**

The Internet has transformed the way we live, work, and communicate. Initially developed in the late 1960s as a project for military communication, it has evolved into a global network that connects millions of devices, providing endless possibilities for information exchange and interaction.

At its core, the Internet is a network of networks that uses standardized protocols to allow computers and devices to communicate with each other. This infrastructure facilitates various services, including email, social media, websites, and real-time communication applications like video conferencing.

One of the most profound impacts of the Internet is its ability to democratize information. With just a few clicks, individuals can access vast amounts of data on almost any topic. This has led to an increase in educational opportunities and informed decision-making, empowering users to learn and share knowledge globally.

Social connectivity is another significant aspect of the Internet. Platforms like Facebook, Twitter, and Instagram enable people to maintain relationships regardless of geographical boundaries. Sharing experiences, collaborating on projects, and engaging in discussions are now more effortless than ever, shaping a new paradigm of social interaction.

However, the Internet is not without its challenges. Issues of privacy and security have emerged as significant concerns, with data breaches and cyber-attacks becoming more frequent. Users must navigate the digital space cautiously, understanding the importance of safeguarding their personal information.

Additionally, the digital divide remains a pressing issue. While many have access to the Internet, millions worldwide still lack basic connectivity. This disparity can exacerbate existing inequalities in education, healthcare, and economic opportunities.

In conclusion, the Internet is a powerful tool that has revolutionized the way we operate in countless aspects of our lives. While it offers tremendous benefits, it also presents challenges that require collective effort to address. As we continue to innovate and connect, it is crucial to embrace both the opportunities and responsibilities that come with being a part of this digital landscape.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957460023.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(61, '2025-05-22 23:46:55.068726+00', 'Geico', '**Understanding Geico: An Overview of the Insurance Giant**

Geico, short for Government Employees Insurance Company, has become a household name in the United States due to its innovative marketing strategies and competitive insurance rates. Established in 1936, Geico originally aimed to offer auto insurance primarily to federal employees and military personnel. Over the years, it has expanded its services to cover a broader audience.

### Focus on Affordability

One of Geico''s major selling points is its ability to provide affordable insurance options. By leveraging technology and direct sales methods, Geico has minimized overhead costs, allowing them to pass savings onto customers through lower premiums. Their famous slogan, "15 minutes could save you 15% or more on car insurance," highlights this focus on affordability and has contributed significantly to their brand recognition.

### Diverse Offerings

While auto insurance is the backbone of Geico''s business, the company also provides a myriad of other insurance products. These include homeowners, renters, motorcycle, and even pet insurance. This diversification not only enhances customer retention–offering a one-stop shop for various insurance needs–but also contributes to the company''s bottom line.

### Customer Service and Technology

In addition to competitive rates, Geico distinguishes itself through exceptional customer service and the use of technology. Their user-friendly website and mobile app allow customers to easily manage their policies, file claims, and access assistance whenever needed. Further, their commitment to customer satisfaction has earned them a loyal following, reflected in various industry awards and high ratings from organizations like J.D. Power.

### Unique Marketing Strategies

Geico''s advertising strategy is another key factor in its success. The company is known for its memorable commercials that often feature anthropomorphic characters such as the Geico Gecko and the infamous cavemen. These advertisements not only entertain but also consistently reinforce Geico''s brand messaging, enhancing consumer recall.

### Conclusion

In an ever-evolving insurance marketplace, Geico has managed to establish itself as a leader through its focus on affordability, diverse offerings, exceptional customer service, and inventive marketing techniques. As consumers continue to seek better rates and service, Geico is well-positioned to adapt and meet the needs of modern policyholders, ensuring its relevance for years to come.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957613284.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(57, '2025-05-22 23:39:10.637272+00', 'Football', '**The Fascinating World of Football**

Football, often referred to as soccer in some regions, is one of the most popular sports globally, captivating millions of fans and players alike. Originating from ancient games played in different cultures, modern football as we know it today took shape in the mid-19th century in England. The sport has evolved into a massive cultural phenomenon, encompassing local, national, and international competitions that draw enormous audiences.

At its core, football is a team sport where two teams, consisting of eleven players each, compete to score goals by getting a ball into the opposing team’s net. The game is played on a rectangular field, known as a pitch, with goals at each end. The simplicity of its rules and the minimal requirement of equipment—typically a ball and a pair of goals—makes it accessible to players of all ages and backgrounds.

One of the most significant tournaments in the sport is the FIFA World Cup, held every four years, where national teams from around the globe compete for the prestigious title. The World Cup not only showcases elite talent but also unites diverse cultures and communities, fostering a sense of global camaraderie.

In addition to the international stage, club football has gained tremendous popularity, with top-tier leagues like the English Premier League, La Liga in Spain, and Serie A in Italy attracting talent from all over the world. This allows fans to support their favorite clubs year-round, leading to fierce rivalries and memorable matches.

As football continues to grow in popularity, it also embraces innovation. Advances in technology, such as VAR (Video Assistant Referee), influence the game''s dynamics, ensuring better decision-making. Furthermore, with social media, fans can engage with the sport more than ever, sharing insights, opinions, and celebrating unforgettable moments.

In conclusion, football''s rich history, combined with its ability to connect people and inspire passion, secures its status as the world''s beautiful game. Whether played casually in local parks or on global stages, football thrives on its spirited competition and the joy it brings to players and fans alike.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747957147491.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 0),
	(62, '2025-05-23 15:38:16.903437+00', 'Tigers', '**The Majestic World of Tigers**

Tigers are among the most fascinating and magnificent creatures on our planet. These big cats, belonging to the species Panthera tigris, are renowned for their strength, beauty, and striking appearance. With their distinctive orange and black striped coats, tigers are not only visually stunning but also represent the true essence of wildlife.

### Physical Characteristics

Tigers are the largest members of the cat family and can weigh between 220 to 660 pounds. Their beautiful fur not only serves as camouflage in their natural habitat but also highlights their status as apex predators. One of the most interesting features is their stripes; no two tigers have the same pattern, making each individual unique.

### Habitat and Distribution

Historically, tigers roamed across Asia, from India to Siberia. Today, they have lost a significant portion of their habitat due to human activities such as deforestation and poaching. Tigers primarily inhabit grasslands, savannas, and forests, where they can effectively hunt their prey, including deer, boar, and other animals.

### Behavior and Social Structure

Unlike many other big cats, tigers are largely solitary animals. They establish large territories that they mark with scent and scratch marks to ward off rivals. Tigers are primarily nocturnal hunters, relying on their keen senses and stealth to stalk and ambush prey.

### Conservation Status

Tragically, tigers are classified as endangered, with an estimated population of only around 3,900 individuals left in the wild. Conservation efforts are crucial to their survival, focusing on habitat protection, anti-poaching laws, and supporting local communities to reduce human-wildlife conflict.

### Conclusion

Tigers are not just a symbol of strength and power but also a critical part of biodiversity. Protecting these magnificent creatures ensures not only their survival but also the health of the ecosystems they inhabit. Supporting conservation efforts can help ensure that future generations can admire and appreciate the beauty of tigers in the wild. Let''s work together to safeguard their future!', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1748014695146.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', false, 0),
	(39, '2025-05-18 18:13:59.515437+00', 'Chihuahuas', '**The Fascinating World of Chihuahuas**

Chihuahuas are one of the most popular dog breeds, known for their petite size and vibrant personality. Originating from Mexico, these tiny dogs are packed with energy and charm, making them beloved companions for many.

One of the key aspects to note about Chihuahuas is their **lifespan**. On average, these little dogs live between 12 to 20 years, with proper care and a healthy lifestyle significantly influencing their longevity. Factors such as diet, exercise, and regular veterinary check-ups can help them remain healthy and energetic throughout their lives. A well-cared-for Chihuahua can become a loving member of your family for many years.

In terms of **personality**, Chihuahuas are known for their bold and confident demeanor. Despite their small size, they often have larger-than-life personalities, exhibiting traits such as loyalty, playfulness, and intelligence. They can be quite protective of their owners, often forming strong bonds with them. However, this loyalty can sometimes manifest as a tendency to be territorial or wary of strangers. Socialization from an early age is key to nurturing a well-rounded Chihuahua that is comfortable around other pets and people.

Chihuahuas come in a variety of colors and coat types, offering a little something for everyone. Whether you prefer a short-haired or long-haired Chihuahua, each has its unique characteristics and care needs. Regular grooming, a balanced diet, and plenty of exercise are essential to keep your Chihuahua healthy and happy.

In conclusion, Chihuahuas are not just cute little dogs; they pack a lot of personality and charm into their small frames. With a long lifespan and a vibrant disposition, they make wonderful companions for those willing to understand their needs and quirks. If you’re considering adding a Chihuahua to your family, prepare for a loving and spirited companion that will fill your life with joy.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747592037502.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 8),
	(29, '2025-05-18 16:16:34.166213+00', 'Dogs', '**All About Dogs: Man''s Best Friend**

Dogs have been cherished companions to humans for thousands of years. As one of the first domesticated animals, dogs have evolved from wild wolves to loyal partners, serving various roles in our lives, from working dogs to beloved pets.

### The Breeds

With over 340 recognized dog breeds worldwide, each breed boasts unique characteristics, temperaments, and appearances. Breeds like the Golden Retriever are known for their friendly demeanor, making them excellent family pets, while German Shepherds are often employed in police work due to their intelligence and courage. Small breeds, such as Chihuahuas, provide companionship, and their size makes them suitable for urban living. Understanding the breed characteristics can significantly impact your experience as a dog owner.

### Health and Care

Proper care for a dog includes regular veterinary check-ups, vaccinations, and a balanced diet tailored to their age, size, and breed. Exercise is also crucial; most dogs require daily walks and playtime to stay healthy and happy. Grooming needs vary by breed, with long-haired dogs needing more frequent brushing.

### Training and Behavior

Training is essential for nurturing a well-behaved dog. Basic commands, socialization, and positive reinforcement lead to a trusting relationship. Training helps reduce behavioral issues and ensures your dog adapts well to various situations. 

### The Joys of Owning a Dog

The bond between humans and dogs is undeniably strong. Dogs provide emotional support, companionship, and even health benefits, such as reducing stress and encouraging physical activity. Their unconditional love and loyalty enrich our lives in ways we often can''t describe.

### Conclusion

Whether you''re considering adopting a dog or already have one, understanding their needs, characteristics, and behaviors will enhance your relationship. Dogs truly are remarkable creatures that bring joy, love, and a sense of purpose into our lives.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747584992279.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', true, 10),
	(45, '2025-05-20 20:25:13.48625+00', 'Typescript', '**Understanding TypeScript: A Comprehensive Overview**

TypeScript is an open-source programming language developed and maintained by Microsoft. It is a superset of JavaScript, meaning that any valid JavaScript code is also valid TypeScript code. TypeScript introduces static typing to JavaScript, allowing developers to add type annotations to their variables, function parameters, and return values. This feature is beneficial because it catches errors early in the development process, leading to more robust and maintainable code.

### Why Use TypeScript?

1. **Static Typing**: One of the most significant advantages of TypeScript is its static typing. By defining types, developers can avoid common runtime errors associated with type coercion in JavaScript. This improves code quality and readability.

2. **Enhanced Tooling**: TypeScript offers powerful tooling support. IDEs (Integrated Development Environments) provide better autocompletion, refactoring, and navigation features when working with TypeScript. This can boost developer productivity and reduce the time spent debugging.

3. **Support for Modern JavaScript Features**: TypeScript embraces new JavaScript features and syntax, allowing developers to use ES6+ features while still supporting older browsers through transpilation. 

4. **Improved Code Organization**: TypeScript allows for better organization of code through its module system, making it easier to manage large codebases. 

### Getting Started with TypeScript

To start using TypeScript, you need to install it globally using npm:

```bash
npm install -g typescript
```

Once installed, you can compile TypeScript files with the `tsc` command. Create a `.ts` file, write some TypeScript code, and compile it to JavaScript:

```bash
tsc filename.ts
```

### Conclusion

In summary, TypeScript enhances JavaScript by introducing static typing, improved tooling, and modern features, making it a valuable language for developers. Its ability to catch errors early and promote better code structure makes TypeScript an excellent choice for both small and large projects. As JavaScript continues to dominate web development, TypeScript is becoming increasingly popular among developers looking to improve their coding experience and output.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747772711041.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 2),
	(47, '2025-05-22 17:42:02.822775+00', 'Stanley Cup', '**The Stanley Cup: A Glorious Tradition in Ice Hockey**

The Stanley Cup is more than just a trophy; it is the pinnacle of achievement in professional ice hockey. Named after Lord Stanley of Preston, the Governor General of Canada who donated the trophy in 1892, the Cup has become a symbol of excellence in the National Hockey League (NHL).

Each year, the Stanley Cup playoffs begin after the regular NHL season, typically in April. Sixteen teams, eight from the Eastern Conference and eight from the Western Conference, qualify to compete for the coveted title. The playoffs consist of a series of best-of-seven rounds, where teams face off in a matrix of excitement, skill, and resilience. The journey to capturing the Cup is grueling, often testing the physical and mental fortitude of every player involved.

One of the unique aspects of the Stanley Cup is its rich history. Unlike many trophies in professional sports, the Cup has a rotating design, where the names of the players and staff of the winning team are engraved on it. This tradition creates a lasting legacy for the champions, allowing them to be remembered for years to come.

The Cup has been won by a multitude of teams over its long history, with the Montreal Canadiens holding the record for the most championships, followed closely by the Toronto Maple Leafs and the Detroit Red Wings. The intense rivalry amongst these teams adds to the allure of the Cup, making each playoff season an anticipation-filled event for fans.

Another interesting aspect of the Stanley Cup is its unique celebration ritual. When a team wins, the players are allowed to take the Cup to their hometowns, share it with their communities, and even enjoy a personal day with it. This exceptional privilege highlights both the trophy''s significance and the joyous occasion of becoming a champion.

In conclusion, the Stanley Cup represents not just victory in hockey, but a tradition steeped in history, competition, and community spirit. Whether you''re a hardcore hockey fan or a casual observer, the allure of the Cup is undeniably powerful, making each playoff season a thrilling spectacle in the world of sports.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747935720353.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 0),
	(52, '2025-05-22 23:35:59.793105+00', 'Siberian Husky', '**Understanding the Siberian Husky: A Majestic Breed**

The Siberian Husky is a strikingly beautiful breed known for its remarkable looks and friendly demeanor. Originally bred by the Chukchi people of Siberia for sledding and companionship, these dogs are characterized by their wolf-like appearances, with thick fur, erect ears, and captivating blue or multicolored eyes.

One of the most notable traits of the Siberian Husky is its energy level. Huskies are highly active and require plenty of exercise to stay healthy and happy. Daily walks, playtime in a secure yard, and interactive games are essential to fulfill their high energy needs. Without adequate exercise, Huskies can become bored, leading to undesirable behaviors such as excessive barking or destructive tendencies.

In addition to their physical needs, Siberian Huskies are known for their independent nature. They are intelligent dogs but possess a stubborn streak that can make training a bit of a challenge. Consistent and positive reinforcement is key to successful training. Early socialization is crucial, as it helps them grow into well-rounded adults.

Grooming a Siberian Husky is relatively manageable, thanks to their double coat which helps protect them from harsh weather. However, they do shed seasonally, requiring regular brushing to keep loose fur at bay. A proper grooming routine not only maintains their coat but also provides an opportunity for bonding.

When it comes to family life, Huskies are generally friendly and good-natured, making them excellent companions for active families. They tend to get along well with children and other pets if introduced properly. However, their strong prey drive means caution should be exercised when around smaller animals.

In summary, the Siberian Husky is a playful, energetic, and loving breed that thrives in an active environment. With adequate exercise, consistent training, and proper care, they make wonderful companions for those willing to embrace their spirited nature.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747956957518.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 0),
	(35, '2025-05-18 18:07:58.682711+00', 'GTA 6', '**All You Need to Know About GTA 6**

The anticipation surrounding Grand Theft Auto VI, popularly known as GTA 6, is palpable among gaming enthusiasts. Since the release of GTA V in 2013, fans have eagerly awaited the next installment in Rockstar Games'' iconic franchise, and recent developments have only heightened expectations.

### Release Date and Development

While an official release date for GTA 6 has not been confirmed, Rockstar has teased fans with updates that suggest the game is in active development. Following years of speculation and numerous leaks, the company finally acknowledged that they were working on a new title in early 2022. Recent rumors suggest a potential release in late 2024, but until Rockstar makes an official announcement, it''s mainly conjecture.

### Setting and Characters

One of the most exciting aspects of GTA 6 is its rumored setting. Speculation points towards a fictional version of Vice City, the series'' homage to Miami, along with various other regions. Additionally, sources have hinted at multiple protagonists, similar to the structure found in GTA V. This narrative style allows players to experience the plot from different perspectives, enhancing gameplay and storytelling.

### Gameplay Innovations

GTA 6 promises to bring groundbreaking gameplay improvements. While details remain scarce, fans are hoping for enhanced graphics, more realistic physics, and an expansive open world that encourages exploration and immersion. The addition of new features, including a day-night cycle and dynamic weather, are also expected to elevate the gaming experience.

### Online Component

Given the success of GTA Online, it’s reasonable to assume that GTA 6 will include a robust online component. Rockstar has dedicated substantial resources to expand and support GTA Online, which has continued to thrive years after its initial launch. Players can expect new multiplayer modes, activities, and possibly a reimagined approach to online interactions in the new game.

### Conclusion

GTA 6 presents an exciting opportunity for both new and returning players. With its anticipated release, players are eager to explore the innovative gameplay, engaging stories, and vast new landscapes that Rockstar has in store. As the gaming community buzzes with speculation, only time will tell how GTA 6 will redefine the open-world genre once again. Stay tuned for more updates as the story unfolds!', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747591675296.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', true, 4);


--
-- Data for Name: shared-blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."shared-blogs" ("id", "created_at", "title", "content", "image_url", "user_id", "likes") VALUES
	(40, '2025-05-18 18:15:41.13265+00', 'Computers', '**Understanding Computers: An Overview of Their Functionality and Importance**

In today''s digital age, computers have become an integral part of our lives, transforming how we work, communicate, and access information. From basic calculations to complex data processing, computers serve various purposes, making them essential tools in both personal and professional realms.

### What is a Computer?

A computer is an electronic device that processes data, following a set of instructions known as software. It operates on binary code, using a series of 0s and 1s to perform calculations and execute commands. The main components of a computer include:

1. **Hardware**: This consists of the physical components, such as the CPU (central processing unit), memory (RAM), storage devices (HDD or SSD), and input/output devices (keyboard, mouse, monitor).
   
2. **Software**: These are the programs and operating systems that instruct the hardware on what tasks to perform. Examples include operating systems like Windows, macOS, and Linux, as well as applications like Microsoft Office and web browsers.

### Types of Computers

Computers come in various forms to cater to different needs:

- **Personal Computers (PCs)**: Designed for individual use, they can be desktops or laptops.
- **Tablets and Smartphones**: Portable devices that combine computing and telecommunication.
- **Servers**: Powerful machines designed to host services and manage networks.
- **Mainframes and Supercomputers**: High-performance computers used for complex computations, mostly in scientific research and large organizations.

### The Impact of Computers on Society

The evolution of computers has led to significant changes in many aspects of life:

1. **Communication**: Computers enable instant messaging, emails, and video conferencing, bridging gaps across distances.
2. **Education**: Online learning platforms and resources improve access to knowledge and education worldwide.
3. **Business**: Computers streamline processes, enhance productivity, and support data management and analysis.

In conclusion, understanding computers is fundamental in our increasingly technology-driven society. Their capabilities continue to expand, shaping our future and redefining everyday tasks. As we navigate this digital landscape, being aware of how computers function and their significance will empower us to harness their full potential.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747592138881.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 1),
	(43, '2025-05-20 19:40:10.6825+00', 'Dogs', '**The Incredible World of Dogs: Our Loyal Companions**

Dogs have been our companions for thousands of years, known for their loyalty, intelligence, and affectionate nature. As one of the first domesticated animals, they have evolved alongside humans, becoming integral to our daily lives. In this blog post, we''ll explore the fascinating world of dogs, their various breeds, their roles in society, and the joy they bring to our lives.

### The Rich History of Dogs

The domestication of dogs dates back to at least 15,000 years, when they were first bred from wolves. Their ability to form close bonds with humans made them ideal companions for hunting and herding. Over the centuries, selective breeding has resulted in the diverse range of dog breeds we see today, each with unique traits and characteristics.

### Understanding Breeds

Dogs come in a myriad of breeds, each with its own personality, size, and energy levels. Some popular breeds include:

- **Labrador Retriever**: Known for their friendly nature and intelligence, they excel as service dogs and family pets.
- **German Shepherd**: Highly intelligent and versatile, they make excellent working dogs for police and rescue operations.
- **Bulldog**: Gentle and affectionate, bulldogs have a distinct appearance and are known for their laid-back demeanor.
- **Poodle**: Available in three sizes (standard, miniature, and toy), poodles are intelligent, trainable, and hypoallergenic.

Each breed has specific needs, so it’s essential for potential dog owners to research and choose a breed that fits their lifestyle.

### The Role of Dogs in Society

Dogs serve various roles in modern society beyond just being pets. They work as:

- **Service Animals**: Assisting individuals with disabilities, particularly guide dogs for the visually impaired.
- **Therapy Dogs**: Providing comfort and emotional support in hospitals, schools, and nursing homes.
- **Search and Rescue Dogs**: Alerting authorities during natural disasters and locating missing persons.
- **Detection Dogs**: Used in law enforcement to detect drugs, explosives, and contraband.

### The Joy of Owning a Dog

Bringing a dog into your home can lead to an immensely rewarding experience. Studies suggest that owning a dog leads to improved mental health, increased physical activity, and enhanced social interactions. Dogs encourage their owners to participate in outdoor activities and create countless opportunities for social connections, whether at the dog park or during training classes.

### Training and Care

Training and socialization are crucial for any dog. Early training can help reinforce good behavior and alleviate potential issues. Basic commands such as sit, stay, and come are essential for building a strong bond between dog and owner, establishing trust and communication.

Caring for a dog involves providing proper nutrition, regular exercise, grooming, and routine veterinary check-ups. Ensuring your dog''s health and well-being is a lifelong responsibility that every dog owner must embrace.

### Conclusion

Dogs bring joy, companionship, and countless benefits into our lives. Their diverse breeds and unique personalities allow them to fit perfectly into varied households, making them beloved family members. Whether you''re considering adopting your first dog or looking to add to your pack, understanding the responsibilities and joy that come with dog ownership is essential. Embrace the bond with your furry friend, and enjoy the unconditional love and loyalty they offer! 

In a world that''s constantly changing, dogs remind us of the simple pleasures in life and the importance of companionship. Through thick and thin, they remain our ever-loyal friends.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747770008865.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 0),
	(32, '2025-05-18 16:18:37.137307+00', 'AI', '**Understanding Artificial Intelligence: Transforming Our World**

Artificial Intelligence (AI) is revolutionizing various sectors, from healthcare to finance and beyond. At its core, AI refers to the simulation of human intelligence in machines programmed to think and learn like humans. 

### What is AI?

AI comprises several subfields, including machine learning, natural language processing, robotics, and computer vision. Machine learning, a prominent area within AI, enables systems to learn from data patterns without explicit programming. For example, algorithms can predict user preferences on streaming platforms or personalize marketing strategies based on consumer behavior.

### Types of AI

AI can be categorized into two main types: narrow AI and general AI. Narrow AI is designed for specific tasks, such as virtual assistants like Siri or chatbots that provide customer support. In contrast, general AI, which remains theoretical, would possess the ability to perform any intellectual task that a human can do.

### Applications of AI

AI is increasingly integrated into our daily lives. In healthcare, it aids in diagnosing diseases through imaging analysis and predicting patient outcomes. In finance, AI systems detect fraud by analyzing transaction patterns in real-time. Moreover, industries like transportation are seeing the emergence of autonomous vehicles that rely on AI to navigate safely.

### Ethical Considerations

Despite its benefits, the rise of AI also poses ethical challenges. Concerns about job displacement, data privacy, and decision-making transparency require attention as we integrate AI into society. Regulations and ethical frameworks are essential to ensure that AI serves humanity positively and equitably.

### The Future of AI

The future of AI is promising, with ongoing advancements expected to enhance its capabilities exponentially. As AI continues to develop, it will transform industries, create new job opportunities, and fundamentally alter how we interact with technology. The key is to harness its potential responsibly, ensuring that we create innovative solutions while safeguarding the values and rights of individuals.

In summary, AI is more than just a technological trend; it is an integral part of our evolving landscape. Recognizing its implications and fostering a balanced approach will be crucial as we advance into this AI-powered future.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585114905.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', 8),
	(29, '2025-05-18 16:16:34.166213+00', 'Dogs', '**All About Dogs: Man''s Best Friend**

Dogs have been cherished companions to humans for thousands of years. As one of the first domesticated animals, dogs have evolved from wild wolves to loyal partners, serving various roles in our lives, from working dogs to beloved pets.

### The Breeds

With over 340 recognized dog breeds worldwide, each breed boasts unique characteristics, temperaments, and appearances. Breeds like the Golden Retriever are known for their friendly demeanor, making them excellent family pets, while German Shepherds are often employed in police work due to their intelligence and courage. Small breeds, such as Chihuahuas, provide companionship, and their size makes them suitable for urban living. Understanding the breed characteristics can significantly impact your experience as a dog owner.

### Health and Care

Proper care for a dog includes regular veterinary check-ups, vaccinations, and a balanced diet tailored to their age, size, and breed. Exercise is also crucial; most dogs require daily walks and playtime to stay healthy and happy. Grooming needs vary by breed, with long-haired dogs needing more frequent brushing.

### Training and Behavior

Training is essential for nurturing a well-behaved dog. Basic commands, socialization, and positive reinforcement lead to a trusting relationship. Training helps reduce behavioral issues and ensures your dog adapts well to various situations. 

### The Joys of Owning a Dog

The bond between humans and dogs is undeniably strong. Dogs provide emotional support, companionship, and even health benefits, such as reducing stress and encouraging physical activity. Their unconditional love and loyalty enrich our lives in ways we often can''t describe.

### Conclusion

Whether you''re considering adopting a dog or already have one, understanding their needs, characteristics, and behaviors will enhance your relationship. Dogs truly are remarkable creatures that bring joy, love, and a sense of purpose into our lives.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747584992279.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', 2),
	(33, '2025-05-18 16:19:21.595107+00', 'Anime', '**Understanding Anime: A Cultural Phenomenon**

Anime is a style of animation that originated in Japan and has since gained immense popularity worldwide. Characterized by vibrant art, fantastical themes, and colorful characters, anime encompasses a wide variety of genres and appeals to audiences of all ages.

The term "anime" itself is derived from the English word "animation" and refers specifically to the animation techniques that are unique to Japanese culture. Unlike Western animation, which often targets a younger audience, anime spans genres, ranging from action and adventure to romance and horror, allowing for a diverse viewership.

One primary aspect that sets anime apart is its storytelling. Many anime series delve into complex narratives that explore philosophical themes, societal issues, and character development, often drawing upon elements of Japanese folklore and mythology. Series like "Attack on Titan" and "Naruto" not only entertain but also provoke thought and reflection on deeper social constructs.

Visual style is another critical element of anime. Distinctive features such as exaggerated facial expressions, vibrant colors, and intricate backgrounds create a visually engaging experience. Viewers are often captivated by the anime aesthetic, which varies significantly between different series and films.

Anime is not limited to television; it has also made remarkable strides in film. Renowned filmmakers like Hayao Miyazaki have contributed to the global appreciation of anime through masterpieces such as "Spirited Away," which introduces viewers to the beauty and depth of Japanese animation.

The rise of streaming platforms like Crunchyroll and Funimation has further propelled anime into mainstream culture, providing easy access to both classic and new titles. Conventions and communities dedicated to anime have blossomed, fostering friendships and a sense of belonging among fans worldwide.

In conclusion, anime is not just a form of entertainment; it is a rich cultural tapestry that reflects the intricacies of life, art, and storytelling. Whether you are a long-time fan or a curious newcomer, there is always something new to discover in the vibrant world of anime.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585159213.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', 13),
	(30, '2025-05-18 16:17:11.466876+00', 'Airplanes', '**All About Airplanes: A Journey Through the Skies**

Airplanes have transformed the way we travel, making global distances feel smaller and connecting people from every corner of the world. They are marvels of engineering, capable of soaring through the skies, and they play a significant role in both commercial aviation and personal leisure.

### History of Airplanes

The journey of airplanes began with pioneers like the Wright brothers. On December 17, 1903, Orville and Wilbur Wright made their first powered flight in Kitty Hawk, North Carolina, successfully ushering in the age of aviation. Over the decades, aircraft design evolved from simple biplanes to the sophisticated jets we see today.

### How Airplanes Work

The basic principles of flight revolve around four forces: lift, weight, thrust, and drag. Lift is generated by the wings, allowing the airplane to rise into the air. Engines provide the necessary thrust to propel the aircraft forward, while weight, caused by gravity, pulls it downward. Finally, drag is the resistance an airplane experiences as it moves through the air.

### Types of Airplanes

Airplanes come in various types, including commercial airliners, cargo planes, military jets, and private aircraft. Commercial airliners are designed to transport passengers and cargo, while cargo planes are optimized for freight. Military jets serve defense purposes and can perform various roles, from surveillance to combat. Additionally, private airplanes cater to individual travelers, providing a more personalized flight experience.

### The Future of Aviation

Looking forward, the future of aviation is set to embrace technological advancements. Innovations such as electric and hybrid planes could revolutionize the industry, making air travel more sustainable. Furthermore, the development of urban air mobility vehicles, like drones and flying taxis, promises to reshape our commuting landscape.

### Conclusion

Airplanes have not only transformed transportation but have also facilitated globalization and cultural exchange. As we look to the future, the aviation industry is poised for exciting innovations that will continue to make the world more connected and accessible. Whether you’re a frequent flyer or someone dreaming of their first flight, the allure of airplanes remains timeless.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585029154.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', 0),
	(34, '2025-05-18 16:20:14.966597+00', 'Florida Panthers', '**Florida Panthers: A Rising Force in the NHL**

The Florida Panthers, established in 1993, are a professional ice hockey team based in Sunrise, Florida. They compete in the Atlantic Division of the Eastern Conference in the National Hockey League (NHL). Over the years, the Panthers have built a passionate fan base despite facing challenges typical of expansion teams.

In terms of performance, the Panthers experienced their most significant success in the mid-1990s, when they reached the Stanley Cup Finals in 1996, only to be swept by the Colorado Avalanche. Although they struggled in the following years, the team has shown marked improvement in recent seasons, establishing itself as a contender in the league.

The Panthers play their home games at the BB&T Center, a modern arena that has undergone multiple renovations to enhance the fan experience. The atmosphere during a game is electric, with a committed fan base that engages deeply with the team, particularly during playoff runs.

The team''s logo, featuring a stylized panther ready to pounce, reflects the state’s wildlife and the aggressive style of play the Panthers strive for. Players like Aleksander Barkov and Jonathan Huberdeau have become fan favorites, showcasing skill and determination on the ice.

In recent years, the Panthers have embraced a more aggressive and fast-paced style of play, often characterized by high scoring and tight defense. The hiring of head coach Paul Maurice in 2022 marked a pivotal moment for the franchise, as he brought in experience and a fresh tactical approach to maximize player potential.

Looking ahead, the Florida Panthers are motivated to build on recent successes and are committed to winning their first Stanley Cup. With a solid roster and growing fan support, the Panthers are poised to make a lasting impact in the NHL, ensuring that Florida remains a hotbed for hockey enthusiasm. Whether you’re a long-time fan or a newcomer, the Panthers are an exciting team to follow as they pursue their championship dreams.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747585213078.png', 'user_2wh07JyMENCPXSdRA80R1sjBX20', 0),
	(39, '2025-05-18 18:13:59.515437+00', 'Chihuahuas', '**The Fascinating World of Chihuahuas**

Chihuahuas are one of the most popular dog breeds, known for their petite size and vibrant personality. Originating from Mexico, these tiny dogs are packed with energy and charm, making them beloved companions for many.

One of the key aspects to note about Chihuahuas is their **lifespan**. On average, these little dogs live between 12 to 20 years, with proper care and a healthy lifestyle significantly influencing their longevity. Factors such as diet, exercise, and regular veterinary check-ups can help them remain healthy and energetic throughout their lives. A well-cared-for Chihuahua can become a loving member of your family for many years.

In terms of **personality**, Chihuahuas are known for their bold and confident demeanor. Despite their small size, they often have larger-than-life personalities, exhibiting traits such as loyalty, playfulness, and intelligence. They can be quite protective of their owners, often forming strong bonds with them. However, this loyalty can sometimes manifest as a tendency to be territorial or wary of strangers. Socialization from an early age is key to nurturing a well-rounded Chihuahua that is comfortable around other pets and people.

Chihuahuas come in a variety of colors and coat types, offering a little something for everyone. Whether you prefer a short-haired or long-haired Chihuahua, each has its unique characteristics and care needs. Regular grooming, a balanced diet, and plenty of exercise are essential to keep your Chihuahua healthy and happy.

In conclusion, Chihuahuas are not just cute little dogs; they pack a lot of personality and charm into their small frames. With a long lifespan and a vibrant disposition, they make wonderful companions for those willing to understand their needs and quirks. If you’re considering adding a Chihuahua to your family, prepare for a loving and spirited companion that will fill your life with joy.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747592037502.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 0),
	(37, '2025-05-18 18:10:37.193641+00', 'Akihabara', '**Exploring Akihabara: The Electric Town of Tokyo**

Nestled in the heart of Tokyo, Akihabara is a vibrant district known for its unique blend of modern pop culture, technology, and history. Often referred to as "Electric Town," it has become a haven for otaku culture and a paradise for anime, manga, and gaming enthusiasts. 

Originally, Akihabara was famous for its electronics stores, selling everything from appliances to high-end gadgets. While the area still boasts numerous shops dedicated to electronics, it has evolved into a bustling center for otaku culture since the 1990s. Today, the streets are lined with countless shops featuring anime merchandise, manga, and video games. Iconic stores like Animate, Mandarake, and Yodobashi Camera attract visitors from around the globe, eager to explore the latest in technology and fan gear.

One of Akihabara''s most unique aspects is its numerous themed cafes. Maid cafes, where waitresses dress in cute maid costumes, serve food and drinks with a playful twist, providing a distinctly immersive experience. Additionally, themed cafes dedicated to popular franchises, such as cat cafes or video game-inspired venues, offer a chance for fans to engage with their favorite characters in a cozy setting.

The area also hosts many events and pop-up shops, especially surrounding anime and gaming releases. These events often feature exclusive merchandise and appearances from voice actors, drawing considerable crowds. Visitors can immerse themselves in a variety of exhibitions and seasonal events, making each trip to Akihabara a unique experience.

For those looking to delve deeper into Japan''s pop culture, Akihabara is home to several museums and galleries. The Akihabara UDX and the nearby 3331 Arts Chiyoda often showcase art exhibits that explore various aspects of anime, including character design and production art.

Whether you are a die-hard otaku or just a curious traveler, Akihabara is not to be missed. Its eclectic mix of technology, pop culture, and distinct experiences makes it a must-visit destination for anyone exploring Tokyo. So grab your camera, prepare your wallet, and immerse yourself in the electric energy of Akihabara!', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747591832531.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 0),
	(36, '2025-05-18 18:09:05.203648+00', 'NextJS', '**Exploring Next.js: The Powerful React Framework**

Next.js has emerged as a standout framework for building modern web applications with React. Developed by Vercel, it offers a range of features that simplify the development process while enhancing performance and scalability. Let''s delve into the core aspects that make Next.js a compelling choice for developers.

### What is Next.js?

Next.js is a React-based framework that allows developers to build server-side-rendered (SSR) or static web applications effortlessly. It provides a powerful set of tools that streamline the development process, enabling features like automatic code splitting, optimized loading, and easy integration with APIs.

### Key Features

1. **Server-side Rendering**: Next.js supports server-side rendering out of the box. This means the HTML is generated on the server, providing better SEO and faster initial load times compared to traditional client-side rendering.

2. **Static Site Generation**: With the ability to generate static pages at build time, Next.js allows for the creation of lightning-fast websites. Developers can choose between SSR and static site generation on a per-page basis, granting them flexibility based on project requirements.

3. **File-based Routing**: Next.js utilizes a straightforward file-based routing system. By simply creating files in the `pages` directory, developers can create routes without writing additional configuration.

4. **API Routes**: It’s possible to create API with Next.js, enabling backend features directly within your application. This reduces the complexity of setting up a separate server and allows developers to handle API requests alongside their React components.

5. **Image Optimization**: Next.js comes with built-in image optimization capabilities, automatically serving images in the most efficient format and size, which enhances performance and user experience.

### Advantages of Using Next.js

- **Improved SEO**: By offering SSR and static site generation, Next.js can render pages in a way that is more favorable for search engine indexing.
- **Faster Performance**: Optimized loading via automatic code splitting and image optimization leads to faster application performance.
- **Developer Experience**: With features like hot reloading and an easy-to-use routing system, Next.js greatly enhances the developer experience, allowing for efficient prototyping and iteration.

### Conclusion

Next.js has solidified its position as a leading framework in the React ecosystem, offering developers the tools they need to build efficient, scalable, and high-performing web applications. Whether you are starting a new project or updating an existing one, considering Next.js could provide significant benefits in terms of performance and development speed. With its robust features and ease of use, it''s clearly a framework worth exploring.', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747591743491.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 0),
	(35, '2025-05-18 18:07:58.682711+00', 'GTA 6', '**All You Need to Know About GTA 6**

The anticipation surrounding Grand Theft Auto VI, popularly known as GTA 6, is palpable among gaming enthusiasts. Since the release of GTA V in 2013, fans have eagerly awaited the next installment in Rockstar Games'' iconic franchise, and recent developments have only heightened expectations.

### Release Date and Development

While an official release date for GTA 6 has not been confirmed, Rockstar has teased fans with updates that suggest the game is in active development. Following years of speculation and numerous leaks, the company finally acknowledged that they were working on a new title in early 2022. Recent rumors suggest a potential release in late 2024, but until Rockstar makes an official announcement, it''s mainly conjecture.

### Setting and Characters

One of the most exciting aspects of GTA 6 is its rumored setting. Speculation points towards a fictional version of Vice City, the series'' homage to Miami, along with various other regions. Additionally, sources have hinted at multiple protagonists, similar to the structure found in GTA V. This narrative style allows players to experience the plot from different perspectives, enhancing gameplay and storytelling.

### Gameplay Innovations

GTA 6 promises to bring groundbreaking gameplay improvements. While details remain scarce, fans are hoping for enhanced graphics, more realistic physics, and an expansive open world that encourages exploration and immersion. The addition of new features, including a day-night cycle and dynamic weather, are also expected to elevate the gaming experience.

### Online Component

Given the success of GTA Online, it’s reasonable to assume that GTA 6 will include a robust online component. Rockstar has dedicated substantial resources to expand and support GTA Online, which has continued to thrive years after its initial launch. Players can expect new multiplayer modes, activities, and possibly a reimagined approach to online interactions in the new game.

### Conclusion

GTA 6 presents an exciting opportunity for both new and returning players. With its anticipated release, players are eager to explore the innovative gameplay, engaging stories, and vast new landscapes that Rockstar has in store. As the gaming community buzzes with speculation, only time will tell how GTA 6 will redefine the open-world genre once again. Stay tuned for more updates as the story unfolds!', 'http://127.0.0.1:54321/storage/v1/object/public/aiimage/blog-1747591675296.png', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 5);


--
-- Data for Name: user_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_likes" ("id", "created_at", "user_id", "blog_id") VALUES
	(30, '2025-05-23 22:26:59.708593+00', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 40),
	(57, '2025-06-02 16:35:15.417236+00', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 41),
	(62, '2025-06-02 16:47:25.693008+00', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 34),
	(63, '2025-06-02 18:34:37.267295+00', 'user_2vEFi4KQhcmiBDmsZoUUKs89Cm3', 35);


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
	('85bef42a-916c-429a-bb6b-a1c577459c98', 'aiimage', 'blog-1748882282532.png', NULL, '2025-06-02 16:38:04.765831+00', '2025-06-02 16:38:04.765831+00', '2025-06-02 16:38:04.765831+00', '{"eTag": "\"2b35129980709b7565a14fe61eee65db\"", "size": 2749672, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-02T16:38:05.000Z", "contentLength": 2749672, "httpStatusCode": 200}', 'b2e8dcdc-d741-4a16-8cfb-6b969bd15e0e', NULL, '{}');


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

SELECT pg_catalog.setval('"public"."blogs_id_seq"', 64, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

-- SELECT pg_catalog.setval('"public"."likes_id_seq"', 65, true);


--
-- Name: shared-blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."shared-blogs_id_seq"', 2, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
