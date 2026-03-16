=== AdWPTracker - Advanced Ad Manager ===
Contributors: kameltalbi
Donate link: https://kameltalbi.com/donate
Tags: ads, advertising, ad manager, mobile ads, sticky footer, adsense, banner, statistics, analytics, monetization
Requires at least: 5.0
Tested up to: 6.5
Requires PHP: 7.4
Stable tag: 3.6.0
License: GPLv2 or later
License URI: https://www.gnu.org/licenses/gpl-2.0.html

Professional WordPress advertising management plugin with unique mobile sticky footer, real-time statistics, device targeting, and advanced analytics.

== Description ==

**AdWPTracker** is a complete advertising management solution for WordPress that helps you maximize your ad revenue with powerful features and an intuitive interface.

= 🌟 Key Features =

**🎨 4 Powerful Ad Types**
* **Image Ads** - Upload via WordPress media library
* **HTML/JavaScript** - Full Google AdSense support
* **Text Ads** - Native advertising integration
* **Video Ads** - YouTube, Vimeo, and MP4 support

**📊 Real-Time Statistics & Analytics**
* Live impression tracking
* Click-through rate (CTR) monitoring
* Daily, weekly, and monthly reports
* CSV export for external analysis
* Beautiful dashboard with charts

**🎯 Advanced Targeting Options**
* Device targeting (Mobile, Tablet, Desktop)
* Campaign scheduling (Start/End dates)
* Unlimited ad zones
* Position control
* Status management (Active/Inactive)

**⚡ Performance Optimized**
* Lightweight and fast
* Minimal impact on page load
* Optimized database queries
* Clean, modern code

**🌍 Translation Ready**
* English (default)
* French (included)
* Ready for your language!

= 💎 Premium Features =

**📱 Mobile Sticky Footer (Exclusive!)**
* Industry-first sticky footer ad for mobile & tablet
* Automatically hidden on desktop for better UX
* Professional close button with session-based dismissal
* Increase mobile ad revenue by up to 300%
* **Available in Premium version - $49/year**

[Upgrade to Premium](https://adwptracker.com/premium) | [View Demo](https://adwptracker.com/demo)

= Perfect For =

* Publishers looking to maximize ad revenue
* Bloggers monetizing their content
* News websites with high traffic
* E-commerce sites with promotional banners
* Affiliate marketers
* Anyone needing professional ad management

= Why Choose AdWPTracker? =

AdWPTracker is a complete ad management solution with powerful analytics and easy management. The free version includes everything you need to manage unlimited ads and zones. Upgrade to Premium to unlock the **unique mobile sticky footer** feature that significantly increases mobile ad visibility and CTR.

= Documentation & Support =

* [Documentation](https://github.com/Kameltalbi/WPAdTracker)
* [GitHub Repository](https://github.com/Kameltalbi/WPAdTracker)
* [Report Issues](https://github.com/Kameltalbi/WPAdTracker/issues)

== Installation ==

= Automatic Installation =

1. Log in to your WordPress admin panel
2. Navigate to **Plugins > Add New**
3. Search for "AdWPTracker"
4. Click **Install Now** and then **Activate**

= Manual Installation =

1. Download the plugin ZIP file
2. Log in to your WordPress admin panel
3. Navigate to **Plugins > Add New > Upload Plugin**
4. Choose the ZIP file and click **Install Now**
5. Activate the plugin

= After Installation =

1. Go to **AdWPTracker** in your WordPress admin menu
2. Create your first **Zone** (ad placement)
3. Create your first **Ad** and assign it to a zone
4. Use the shortcode `[adwptracker_zone id="1"]` in your content
5. Or use PHP: `<?php echo do_shortcode('[adwptracker_zone id="1"]'); ?>`

== Frequently Asked Questions ==

= How do I display ads on my site? =

After creating a zone and adding ads to it, use the shortcode `[adwptracker_zone id="X"]` where X is your zone ID. You can also use the PHP function in your theme files.

= Does it work with Google AdSense? =

Yes! Simply select "HTML/JavaScript" as the ad type and paste your AdSense code.

= Can I target specific devices? =

Absolutely! Each ad can be configured to show only on mobile, tablet, desktop, or all devices.

= How does the mobile sticky footer work? =

The sticky footer appears at the bottom of the screen on mobile and tablet devices. Users can close it, and it won't reappear during their session. It's automatically hidden on desktop.

= Can I schedule ads? =

Yes! Set start and end dates for each ad campaign.

= Is it translation ready? =

Yes! The plugin is fully translation-ready and includes French translations. You can add your own language files.

= Does it slow down my site? =

No! AdWPTracker is optimized for performance with minimal database queries and efficient code.

= Can I export statistics? =

Yes! Export your statistics to CSV format for external analysis.

= How many ads can I create? =

Unlimited! Create as many zones and ads as you need.

= What's the difference between Free and Premium? =

The free version includes all core features: unlimited ads & zones, 4 ad types, statistics, device targeting, and scheduling. Premium adds the exclusive Mobile Sticky Footer feature for $49/year.

= How do I upgrade to Premium? =

Visit [adwptracker.com/premium](https://adwptracker.com/premium) to purchase a license. After activation, the Mobile Sticky Footer feature will be unlocked in your dashboard.

== Screenshots ==

1. Modern dashboard with real-time statistics and charts
2. Ad management interface with all ad types
3. Zone configuration with display modes and slider options
4. Mobile sticky footer in action
5. Detailed statistics page with CTR tracking
6. Easy shortcode integration
7. Advanced settings panel

== Changelog ==

= 3.6.0 - 2024-03-16 =
* Initial public release
* Mobile sticky footer feature
* 4 ad types (Image, HTML, Text, Video)
* Real-time statistics tracking
* Device targeting
* Campaign scheduling
* CSV export
* French translation included
* Modern dashboard design
* Performance optimizations

== Upgrade Notice ==

= 3.6.0 =
Initial release with all core features including unique mobile sticky footer, real-time statistics, and advanced targeting.

== Additional Info ==

**Credits**
* Developed by [Kamel Talbi](https://kameltalbi.com)
* Icons by Dashicons
* Charts by Chart.js

**Privacy**
AdWPTracker tracks ad impressions and clicks for statistical purposes. No personal data is collected or shared with third parties. All data is stored locally in your WordPress database.

**Support the Plugin**
If you find this plugin useful, please consider:
* Rating it 5 stars on WordPress.org
* Contributing on [GitHub](https://github.com/Kameltalbi/WPAdTracker)
* Sharing with other WordPress users

== Technical Details ==

* Minimum WordPress Version: 5.0
* Minimum PHP Version: 7.4
* Database Tables: Creates custom table for statistics
* Shortcodes: `[adwptracker_zone]`, `[adwptracker_ad]`
* Custom Post Types: `adwpt_zone`, `adwpt_ad`
* Hooks: Multiple action and filter hooks for developers

For developers: Check our [GitHub repository](https://github.com/Kameltalbi/WPAdTracker) for code examples and API documentation.
