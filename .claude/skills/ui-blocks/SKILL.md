---
description: |
  templUI Pro - Claude Code Skill for Go & templ UI blocks.
  TRIGGER when: user asks to add, update, show, or use UI blocks/components (hero, auth, blog, pricing, navbar, sidebar, etc.), mentions templ or templUI, wants to build UI sections for a Go web app, or asks about any of the 222 UI block categories in this library.
  DO NOT TRIGGER when: user is working with non-templ UI frameworks (React, Vue, Svelte), asking general Go programming questions unrelated to UI, or working on backend/API code with no UI context.
---

# templUI Pro - Claude Code Skill

A comprehensive library of 222 premium UI blocks for Go & templ applications.

## Overview

This skill provides access to a curated collection of production-ready UI components built with Go's templ templating language. All blocks are designed to work with the base components from [templUI](https://templui.io).

**Total Blocks:** 222
**Categories:** 33
**License:** templUI Pro customers only

## How to Use This Skill

When users request UI components, you can reference blocks from this library by:
1. Identifying the appropriate category (e.g., hero, auth, blog, etc.)
2. Locating the specific template file in `blocks/{category}/{template}.templ`
3. Reading and providing the template code from the referenced file

All templates follow the naming convention: `{category}_{number}.templ` (e.g., `hero_001.templ`)

## Important Notes

- **Import Paths:** Users need to update import paths from `github.com/templui/templui-pro/internal/ui/components/*` to their own project paths
- **Dependencies:** All blocks require base components from templUI (see [templui.io](https://templui.io))
- **Full Source:** The complete source code for each block is available in the `llm.md` file

## Block Categories

### Account (8 blocks)
**Path:** `blocks/account/`

User account management, settings, and administration interfaces.

Templates:
- [account_settings_001.templ](blocks/account/account_settings_001.templ)
- [activity_log_001.templ](blocks/account/activity_log_001.templ)
- [api_integrations_001.templ](blocks/account/api_integrations_001.templ)
- [billing_subscription_001.templ](blocks/account/billing_subscription_001.templ)
- [data_privacy_001.templ](blocks/account/data_privacy_001.templ)
- [integrations_001.templ](blocks/account/integrations_001.templ)
- [security_settings_001.templ](blocks/account/security_settings_001.templ)
- [team_management_001.templ](blocks/account/team_management_001.templ)

### AI (10 blocks)
**Path:** `blocks/ai/`

AI-powered interfaces and chat experiences.

Templates:
- [ai_001.templ](blocks/ai/ai_001.templ)
- [ai_002.templ](blocks/ai/ai_002.templ)
- [ai_003.templ](blocks/ai/ai_003.templ)
- [ai_004.templ](blocks/ai/ai_004.templ)
- [ai_005.templ](blocks/ai/ai_005.templ)
- [ai_006.templ](blocks/ai/ai_006.templ)
- [ai_007.templ](blocks/ai/ai_007.templ)
- [ai_008.templ](blocks/ai/ai_008.templ)
- [ai_009.templ](blocks/ai/ai_009.templ)
- [ai_010.templ](blocks/ai/ai_010.templ)

### Announcement (5 blocks)
**Path:** `blocks/announcement/`

Banners and announcement components for important messages.

Templates:
- [announcement_001.templ](blocks/announcement/announcement_001.templ)
- [announcement_002.templ](blocks/announcement/announcement_002.templ)
- [announcement_003.templ](blocks/announcement/announcement_003.templ)
- [announcement_004.templ](blocks/announcement/announcement_004.templ)
- [announcement_005.templ](blocks/announcement/announcement_005.templ)

### Auth (10 blocks)
**Path:** `blocks/auth/`

Authentication flows including sign-in, sign-up, and password management.

Templates:
- [forgot_password_001.templ](blocks/auth/forgot_password_001.templ)
- [reset_password_001.templ](blocks/auth/reset_password_001.templ)
- [sign_in_001.templ](blocks/auth/sign_in_001.templ)
- [sign_in_002.templ](blocks/auth/sign_in_002.templ)
- [sign_in_003.templ](blocks/auth/sign_in_003.templ)
- [sign_in_004.templ](blocks/auth/sign_in_004.templ)
- [sign_in_005.templ](blocks/auth/sign_in_005.templ)
- [sign_up_001.templ](blocks/auth/sign_up_001.templ)
- [sign_up_002.templ](blocks/auth/sign_up_002.templ)
- [sign_up_003.templ](blocks/auth/sign_up_003.templ)

### Blog (10 blocks)
**Path:** `blocks/blog/`

Blog layouts, post grids, and article displays.

Templates:
- [blog_001.templ](blocks/blog/blog_001.templ)
- [blog_002.templ](blocks/blog/blog_002.templ)
- [blog_003.templ](blocks/blog/blog_003.templ)
- [blog_004.templ](blocks/blog/blog_004.templ)
- [blog_005.templ](blocks/blog/blog_005.templ)
- [blog_006.templ](blocks/blog/blog_006.templ)
- [blog_007.templ](blocks/blog/blog_007.templ)
- [blog_008.templ](blocks/blog/blog_008.templ)
- [blog_009.templ](blocks/blog/blog_009.templ)
- [blog_010.templ](blocks/blog/blog_010.templ)

### Calendar (3 blocks)
**Path:** `blocks/calendar/`

Calendar and date picker components.

Templates:
- [calendar_002.templ](blocks/calendar/calendar_002.templ)
- [calendar_003.templ](blocks/calendar/calendar_003.templ)
- [calendar_004.templ](blocks/calendar/calendar_004.templ)

### Chat (8 blocks)
**Path:** `blocks/chat/`

Chat interfaces and messaging components.

Templates:
- [chat_001.templ](blocks/chat/chat_001.templ)
- [chat_002.templ](blocks/chat/chat_002.templ)
- [chat_003.templ](blocks/chat/chat_003.templ)
- [chat_004.templ](blocks/chat/chat_004.templ)
- [chat_007.templ](blocks/chat/chat_007.templ)
- [chat_008.templ](blocks/chat/chat_008.templ)
- [chat_009.templ](blocks/chat/chat_009.templ)
- [chat_010.templ](blocks/chat/chat_010.templ)

### Comparison (3 blocks)
**Path:** `blocks/comparison/`

Comparison tables and feature matrices.

Templates:
- [comparison_001.templ](blocks/comparison/comparison_001.templ)
- [comparison_002.templ](blocks/comparison/comparison_002.templ)
- [comparison_003.templ](blocks/comparison/comparison_003.templ)

### Contact (6 blocks)
**Path:** `blocks/contact/`

Contact forms and information displays.

Templates:
- [contact_001.templ](blocks/contact/contact_001.templ)
- [contact_002.templ](blocks/contact/contact_002.templ)
- [contact_003.templ](blocks/contact/contact_003.templ)
- [contact_004.templ](blocks/contact/contact_004.templ)
- [contact_005.templ](blocks/contact/contact_005.templ)
- [contact_006.templ](blocks/contact/contact_006.templ)

### Cookie (5 blocks)
**Path:** `blocks/cookie/`

Cookie consent banners and privacy notifications.

Templates:
- [cookie_001.templ](blocks/cookie/cookie_001.templ)
- [cookie_002.templ](blocks/cookie/cookie_002.templ)
- [cookie_003.templ](blocks/cookie/cookie_003.templ)
- [cookie_004.templ](blocks/cookie/cookie_004.templ)
- [cookie_005.templ](blocks/cookie/cookie_005.templ)

### Countdown (7 blocks)
**Path:** `blocks/countdown/`

Countdown timers for launches, sales, and events.

Templates:
- [countdown_001.templ](blocks/countdown/countdown_001.templ)
- [countdown_002.templ](blocks/countdown/countdown_002.templ)
- [countdown_003.templ](blocks/countdown/countdown_003.templ)
- [countdown_004.templ](blocks/countdown/countdown_004.templ)
- [countdown_005.templ](blocks/countdown/countdown_005.templ)
- [countdown_006.templ](blocks/countdown/countdown_006.templ)
- [countdown_007.templ](blocks/countdown/countdown_007.templ)

### CTA (8 blocks)
**Path:** `blocks/cta/`

Call-to-action sections to drive user engagement.

Templates:
- [cta_001.templ](blocks/cta/cta_001.templ)
- [cta_002.templ](blocks/cta/cta_002.templ)
- [cta_003.templ](blocks/cta/cta_003.templ)
- [cta_004.templ](blocks/cta/cta_004.templ)
- [cta_005.templ](blocks/cta/cta_005.templ)
- [cta_006.templ](blocks/cta/cta_006.templ)
- [cta_007.templ](blocks/cta/cta_007.templ)
- [cta_008.templ](blocks/cta/cta_008.templ)

### E-commerce (17 blocks)
**Path:** `blocks/ecommerce/`

Complete e-commerce components including cart, checkout, and product displays.

Templates:
- [cart_001.templ](blocks/ecommerce/cart_001.templ)
- [cart_002.templ](blocks/ecommerce/cart_002.templ)
- [cart_003.templ](blocks/ecommerce/cart_003.templ)
- [checkout_001.templ](blocks/ecommerce/checkout_001.templ)
- [checkout_002.templ](blocks/ecommerce/checkout_002.templ)
- [checkout_003.templ](blocks/ecommerce/checkout_003.templ)
- [order_001.templ](blocks/ecommerce/order_001.templ)
- [order_002.templ](blocks/ecommerce/order_002.templ)
- [product_001.templ](blocks/ecommerce/product_001.templ)
- [product_002.templ](blocks/ecommerce/product_002.templ)
- [product_003.templ](blocks/ecommerce/product_003.templ)
- [product_004.templ](blocks/ecommerce/product_004.templ)
- [shop_001.templ](blocks/ecommerce/shop_001.templ)
- [shop_002.templ](blocks/ecommerce/shop_002.templ)
- [shop_003.templ](blocks/ecommerce/shop_003.templ)
- [wishlist_001.templ](blocks/ecommerce/wishlist_001.templ)
- [wishlist_002.templ](blocks/ecommerce/wishlist_002.templ)

### FAQ (5 blocks)
**Path:** `blocks/faq/`

Frequently asked questions sections with accordion layouts.

Templates:
- [faq_001.templ](blocks/faq/faq_001.templ)
- [faq_002.templ](blocks/faq/faq_002.templ)
- [faq_003.templ](blocks/faq/faq_003.templ)
- [faq_004.templ](blocks/faq/faq_004.templ)
- [faq_005.templ](blocks/faq/faq_005.templ)

### Feature (7 blocks)
**Path:** `blocks/feature/`

Feature showcase sections highlighting product capabilities.

Templates:
- [feature_001.templ](blocks/feature/feature_001.templ)
- [feature_002.templ](blocks/feature/feature_002.templ)
- [feature_003.templ](blocks/feature/feature_003.templ)
- [feature_004.templ](blocks/feature/feature_004.templ)
- [feature_005.templ](blocks/feature/feature_005.templ)
- [feature_006.templ](blocks/feature/feature_006.templ)
- [feature_007.templ](blocks/feature/feature_007.templ)

### Footer (7 blocks)
**Path:** `blocks/footer/`

Website footer components with links and information.

Templates:
- [footer_001.templ](blocks/footer/footer_001.templ)
- [footer_002.templ](blocks/footer/footer_002.templ)
- [footer_003.templ](blocks/footer/footer_003.templ)
- [footer_004.templ](blocks/footer/footer_004.templ)
- [footer_005.templ](blocks/footer/footer_005.templ)
- [footer_006.templ](blocks/footer/footer_006.templ)
- [footer_007.templ](blocks/footer/footer_007.templ)

### Gallery (6 blocks)
**Path:** `blocks/gallery/`

Image galleries and media grids.

Templates:
- [gallery_001.templ](blocks/gallery/gallery_001.templ)
- [gallery_002.templ](blocks/gallery/gallery_002.templ)
- [gallery_003.templ](blocks/gallery/gallery_003.templ)
- [gallery_004.templ](blocks/gallery/gallery_004.templ)
- [gallery_005.templ](blocks/gallery/gallery_005.templ)
- [gallery_006.templ](blocks/gallery/gallery_006.templ)

### Hero (10 blocks)
**Path:** `blocks/hero/`

Hero sections for landing pages and top-of-page content.

Templates:
- [hero_001.templ](blocks/hero/hero_001.templ)
- [hero_002.templ](blocks/hero/hero_002.templ)
- [hero_003.templ](blocks/hero/hero_003.templ)
- [hero_004.templ](blocks/hero/hero_004.templ)
- [hero_005.templ](blocks/hero/hero_005.templ)
- [hero_006.templ](blocks/hero/hero_006.templ)
- [hero_007.templ](blocks/hero/hero_007.templ)
- [hero_008.templ](blocks/hero/hero_008.templ)
- [hero_009.templ](blocks/hero/hero_009.templ)
- [hero_010.templ](blocks/hero/hero_010.templ)

### Layout (5 blocks)
**Path:** `blocks/layout/`

Page layout structures and containers.

Templates:
- [layout_001.templ](blocks/layout/layout_001.templ)
- [layout_002.templ](blocks/layout/layout_002.templ)
- [layout_003.templ](blocks/layout/layout_003.templ)
- [layout_004.templ](blocks/layout/layout_004.templ)
- [layout_005.templ](blocks/layout/layout_005.templ)

### Navbar (5 blocks)
**Path:** `blocks/navbar/`

Navigation bars and headers.

Templates:
- [navbar_001.templ](blocks/navbar/navbar_001.templ)
- [navbar_002.templ](blocks/navbar/navbar_002.templ)
- [navbar_003.templ](blocks/navbar/navbar_003.templ)
- [navbar_004.templ](blocks/navbar/navbar_004.templ)
- [navbar_005.templ](blocks/navbar/navbar_005.templ)

### Newsletter (5 blocks)
**Path:** `blocks/newsletter/`

Newsletter signup forms and subscription components.

Templates:
- [newsletter_001.templ](blocks/newsletter/newsletter_001.templ)
- [newsletter_002.templ](blocks/newsletter/newsletter_002.templ)
- [newsletter_003.templ](blocks/newsletter/newsletter_003.templ)
- [newsletter_004.templ](blocks/newsletter/newsletter_004.templ)
- [newsletter_005.templ](blocks/newsletter/newsletter_005.templ)

### Notification (6 blocks)
**Path:** `blocks/notification/`

Notification panels and alerts.

Templates:
- [notification_002.templ](blocks/notification/notification_002.templ)
- [notification_003.templ](blocks/notification/notification_003.templ)
- [notification_004.templ](blocks/notification/notification_004.templ)
- [notification_005.templ](blocks/notification/notification_005.templ)
- [notification_007.templ](blocks/notification/notification_007.templ)
- [notification_009.templ](blocks/notification/notification_009.templ)

### Pricing (6 blocks)
**Path:** `blocks/pricing/`

Pricing tables and plan comparison layouts.

Templates:
- [pricing_001.templ](blocks/pricing/pricing_001.templ)
- [pricing_002.templ](blocks/pricing/pricing_002.templ)
- [pricing_003.templ](blocks/pricing/pricing_003.templ)
- [pricing_004.templ](blocks/pricing/pricing_004.templ)
- [pricing_005.templ](blocks/pricing/pricing_005.templ)
- [pricing_006.templ](blocks/pricing/pricing_006.templ)

### Profile (5 blocks)
**Path:** `blocks/profile/`

User profile pages and components.

Templates:
- [profile_completion_001.templ](blocks/profile/profile_completion_001.templ)
- [profile_edit_001.templ](blocks/profile/profile_edit_001.templ)
- [profile_overview_001.templ](blocks/profile/profile_overview_001.templ)
- [profile_stats_001.templ](blocks/profile/profile_stats_001.templ)
- [profile_view_001.templ](blocks/profile/profile_view_001.templ)

### Search (5 blocks)
**Path:** `blocks/search/`

Search interfaces and results displays.

Templates:
- [search_001.templ](blocks/search/search_001.templ)
- [search_002.templ](blocks/search/search_002.templ)
- [search_003.templ](blocks/search/search_003.templ)
- [search_004.templ](blocks/search/search_004.templ)
- [search_005.templ](blocks/search/search_005.templ)

### Sidebar (8 blocks)
**Path:** `blocks/sidebar/`

Sidebar navigation and content panels.

Templates:
- [sidebar_001.templ](blocks/sidebar/sidebar_001.templ)
- [sidebar_002.templ](blocks/sidebar/sidebar_002.templ)
- [sidebar_003.templ](blocks/sidebar/sidebar_003.templ)
- [sidebar_004.templ](blocks/sidebar/sidebar_004.templ)
- [sidebar_005.templ](blocks/sidebar/sidebar_005.templ)
- [sidebar_006.templ](blocks/sidebar/sidebar_006.templ)
- [sidebar_007.templ](blocks/sidebar/sidebar_007.templ)
- [sidebar_008.templ](blocks/sidebar/sidebar_008.templ)

### Social (3 blocks)
**Path:** `blocks/social/`

Social media links and sharing components.

Templates:
- [social_001.templ](blocks/social/social_001.templ)
- [social_002.templ](blocks/social/social_002.templ)
- [social_003.templ](blocks/social/social_003.templ)

### State (8 blocks)
**Path:** `blocks/state/`

Empty states, error pages, and status displays.

Templates:
- [state_001.templ](blocks/state/state_001.templ)
- [state_002.templ](blocks/state/state_002.templ)
- [state_003.templ](blocks/state/state_003.templ)
- [state_004.templ](blocks/state/state_004.templ)
- [state_005.templ](blocks/state/state_005.templ)
- [state_006.templ](blocks/state/state_006.templ)
- [state_007.templ](blocks/state/state_007.templ)
- [state_008.templ](blocks/state/state_008.templ)

### Stats (11 blocks)
**Path:** `blocks/stats/`

Statistics displays and metric dashboards.

Templates:
- [stats_001.templ](blocks/stats/stats_001.templ)
- [stats_002.templ](blocks/stats/stats_002.templ)
- [stats_003.templ](blocks/stats/stats_003.templ)
- [stats_004.templ](blocks/stats/stats_004.templ)
- [stats_005.templ](blocks/stats/stats_005.templ)
- [stats_006.templ](blocks/stats/stats_006.templ)
- [stats_007.templ](blocks/stats/stats_007.templ)
- [stats_008.templ](blocks/stats/stats_008.templ)
- [stats_009.templ](blocks/stats/stats_009.templ)
- [stats_010.templ](blocks/stats/stats_010.templ)
- [stats_011.templ](blocks/stats/stats_011.templ)

### Table (5 blocks)
**Path:** `blocks/table/`

Data tables with sorting and filtering.

Templates:
- [table_001.templ](blocks/table/table_001.templ)
- [table_002.templ](blocks/table/table_002.templ)
- [table_003.templ](blocks/table/table_003.templ)
- [table_004.templ](blocks/table/table_004.templ)
- [table_005.templ](blocks/table/table_005.templ)

### Team (5 blocks)
**Path:** `blocks/team/`

Team member grids and profiles.

Templates:
- [team_001.templ](blocks/team/team_001.templ)
- [team_002.templ](blocks/team/team_002.templ)
- [team_003.templ](blocks/team/team_003.templ)
- [team_004.templ](blocks/team/team_004.templ)
- [team_005.templ](blocks/team/team_005.templ)

### Testimonial (7 blocks)
**Path:** `blocks/testimonial/`

Customer testimonials and reviews.

Templates:
- [testimonial_001.templ](blocks/testimonial/testimonial_001.templ)
- [testimonial_002.templ](blocks/testimonial/testimonial_002.templ)
- [testimonial_003.templ](blocks/testimonial/testimonial_003.templ)
- [testimonial_004.templ](blocks/testimonial/testimonial_004.templ)
- [testimonial_005.templ](blocks/testimonial/testimonial_005.templ)
- [testimonial_006.templ](blocks/testimonial/testimonial_006.templ)
- [testimonial_007.templ](blocks/testimonial/testimonial_007.templ)

### Timeline (3 blocks)
**Path:** `blocks/timeline/`

Timeline and progress tracking components.

Templates:
- [timeline_001.templ](blocks/timeline/timeline_001.templ)
- [timeline_002.templ](blocks/timeline/timeline_002.templ)
- [timeline_003.templ](blocks/timeline/timeline_003.templ)

## Usage Examples

When a user asks for a specific component:

**User:** "I need a hero section for my landing page"
**You:** Read from `blocks/hero/hero_001.templ` (or suggest viewing multiple options) and provide the template code.

**User:** "Show me a pricing table"
**You:** Reference `blocks/pricing/` and offer to show them different pricing layouts (pricing_001 through pricing_006).

**User:** "I need a login page"
**You:** Look in `blocks/auth/` and show sign_in templates or sign_up templates as appropriate.

## Support

For issues or questions:
- **GitHub Issues:** Report bugs or request features
- **GitHub Discussions:** Questions, ideas, and help
- **Contact:** hello@axeladrian.com
