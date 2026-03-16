<?php
/**
 * License Management Class
 * Handles premium features verification
 */

// Exit if accessed directly
if (!defined('ABSPATH')) {
    exit;
}

class ADWPT_License {
    
    private static $instance = null;
    
    public static function get_instance() {
        if (null === self::$instance) {
            self::$instance = new self();
        }
        return self::$instance;
    }
    
    private function __construct() {
        // Hook for license settings
        add_action('admin_init', [$this, 'register_settings']);
    }
    
    /**
     * Register license settings
     */
    public function register_settings() {
        register_setting('adwpt_license', 'adwpt_license_key');
        register_setting('adwpt_license', 'adwpt_license_status');
    }
    
    /**
     * Check if premium features are available
     */
    public static function is_premium() {
        $license_key = get_option('adwpt_license_key', '');
        $license_status = get_option('adwpt_license_status', 'invalid');
        
        // Check if license is valid
        return !empty($license_key) && $license_status === 'valid';
    }
    
    /**
     * Check if sticky mobile footer is available
     */
    public static function has_sticky_mobile() {
        return self::is_premium();
    }
    
    /**
     * Get premium features list
     */
    public static function get_premium_features() {
        return [
            'sticky_mobile' => [
                'name' => __('Mobile Sticky Footer', 'adwptracker'),
                'description' => __('Unique sticky footer ad for mobile & tablet devices', 'adwptracker'),
                'icon' => '📱'
            ]
        ];
    }
    
    /**
     * Display upgrade notice
     */
    public static function upgrade_notice($feature = 'sticky_mobile') {
        $features = self::get_premium_features();
        $feature_data = isset($features[$feature]) ? $features[$feature] : $features['sticky_mobile'];
        
        ?>
        <div class="adwpt-premium-notice" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; padding: 20px; border-radius: 8px; margin: 20px 0;">
            <div style="display: flex; align-items: center; gap: 15px;">
                <div style="font-size: 48px;"><?php echo $feature_data['icon']; ?></div>
                <div style="flex: 1;">
                    <h3 style="margin: 0 0 8px 0; color: white; font-size: 18px;">
                        <?php echo esc_html($feature_data['name']); ?> - Premium Feature
                    </h3>
                    <p style="margin: 0 0 15px 0; opacity: 0.9;">
                        <?php echo esc_html($feature_data['description']); ?>
                    </p>
                    <a href="https://adwptracker.com/premium" target="_blank" 
                       class="button button-primary button-large" 
                       style="background: white; color: #667eea; border: none; font-weight: 600; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
                        ✨ Upgrade to Premium
                    </a>
                    <a href="https://adwptracker.com/premium#features" target="_blank" 
                       style="color: white; text-decoration: underline; margin-left: 15px;">
                        Learn More →
                    </a>
                </div>
            </div>
        </div>
        <?php
    }
    
    /**
     * Activate license
     */
    public function activate_license($license_key) {
        // TODO: Implement license activation with your licensing server
        // For now, this is a placeholder
        
        if (empty($license_key)) {
            return [
                'success' => false,
                'message' => __('Please enter a license key', 'adwptracker')
            ];
        }
        
        // Validate license format (basic check)
        if (strlen($license_key) < 20) {
            return [
                'success' => false,
                'message' => __('Invalid license key format', 'adwptracker')
            ];
        }
        
        // Store license
        update_option('adwpt_license_key', sanitize_text_field($license_key));
        update_option('adwpt_license_status', 'valid');
        
        return [
            'success' => true,
            'message' => __('License activated successfully!', 'adwptracker')
        ];
    }
    
    /**
     * Deactivate license
     */
    public function deactivate_license() {
        delete_option('adwpt_license_key');
        delete_option('adwpt_license_status');
        
        return [
            'success' => true,
            'message' => __('License deactivated', 'adwptracker')
        ];
    }
}

// Initialize
ADWPT_License::get_instance();
