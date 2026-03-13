import type { APIRoute } from "astro";

const getRobotsTxt = (sitemapURL: URL) => `\

# Limiting AI access via "Option 2: Allow search-linked crawlers, block training-only crawlers"
# https://thegeocommunity.com/blogs/generative-engine-optimization/robots-txt-ai-bots/

User-agent: GPTBot
Disallow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: Google-Extended
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: PerplexityBot
Allow: /

User-agent: *
Allow: /

Sitemap: ${sitemapURL.href}
`;

export const GET: APIRoute = ({ site }) => {
	const sitemapURL = new URL("sitemap-index.xml", site);
	return new Response(getRobotsTxt(sitemapURL));
};
