<?php
/**
 * FunderProTest functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package FunderProTest
 */

if (!defined('_S_VERSION')) {
	// Replace the version number of the theme on each release.
	define('_S_VERSION', '1.0.0');
}

function funderprotest_setup()
{
	load_theme_textdomain('funderprotest', get_template_directory() . '/languages');

	add_theme_support('automatic-feed-links');

	add_theme_support('title-tag');

	add_theme_support('post-thumbnails');

	register_nav_menus(
		array(
			'menu-1' => esc_html__('Primary', 'funderprotest'),
		)
	);

	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	add_theme_support(
		'custom-background',
		apply_filters(
			'funderprotest_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	add_theme_support('customize-selective-refresh-widgets');

	add_theme_support(
		'custom-logo',
		array(
			'height' => 250,
			'width' => 250,
			'flex-width' => true,
			'flex-height' => true,
		)
	);
}
function add_hamburger_menu_scripts() {
    // Enqueue jQuery
    wp_enqueue_script('jquery');

    // Enqueue your custom script
    wp_enqueue_script('hamburger-menu', get_template_directory_uri() . '/js/custom-scripts.js', array('jquery'), '1.0', true);
}
add_action('wp_enqueue_scripts', 'add_hamburger_menu_scripts');
add_action('after_setup_theme', 'funderprotest_setup');

function funderprotest_content_width()
{
	$GLOBALS['content_width'] = apply_filters('funderprotest_content_width', 640);
}
add_action('after_setup_theme', 'funderprotest_content_width', 0);

function funderprotest_widgets_init()
{
	register_sidebar(
		array(
			'name' => esc_html__('Sidebar', 'funderprotest'),
			'id' => 'sidebar-1',
			'description' => esc_html__('Add widgets here.', 'funderprotest'),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget' => '</section>',
			'before_title' => '<h2 class="widget-title">',
			'after_title' => '</h2>',
		)
	);
}
add_action('widgets_init', 'funderprotest_widgets_init');

class Custom_Walker_Nav_Menu extends Walker_Nav_Menu {
	// Sobrescribe el método start_lvl para agregar una clase "hidden" al submenú
	public function start_lvl(&$output, $depth = 0, $args = array()) {
	  $indent = str_repeat("\t", $depth);
	  $output .= "\n$indent<ul class=\"sub-menu hidden\">\n";
	}
  }
function funderprotest_scripts()
{
	wp_enqueue_style('funderprotest-style', get_stylesheet_uri(), array(), _S_VERSION);
	wp_style_add_data('funderprotest-style', 'rtl', 'replace');

	wp_enqueue_style('output', get_template_directory_uri() . '/dist/output.css', array());

	wp_enqueue_script('funderprotest-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true);

	if (is_singular() && comments_open() && get_option('thread_comments')) {
		wp_enqueue_script('comment-reply');
	}

	wp_enqueue_script('custom-scripts', get_template_directory_uri() . '/js/custom-scripts.js', array('jquery'), '1.0', true);
}
add_action('wp_enqueue_scripts', 'funderprotest_scripts');

require get_template_directory() . '/inc/custom-header.php';
require get_template_directory() . '/inc/template-tags.php';
require get_template_directory() . '/inc/template-functions.php';
require get_template_directory() . '/inc/customizer.php';

if (defined('JETPACK__VERSION')) {
	require get_template_directory() . '/inc/jetpack.php';
}

function register_my_menus()
{
	register_nav_menus(
		array(
			'primary' => __('Primary Menu', 'your-theme'),
		)
	);
}
add_action('after_setup_theme', 'register_my_menus');
function enqueue_scripts() {
    // Cargar jQuery desde la biblioteca de WordPress
    wp_enqueue_script('jquery');

    // Agregar tu propio archivo JavaScript que depende de jQuery
    wp_enqueue_script('custom-script', get_template_directory_uri() . '/js/custom-script.js', array('jquery'), '1.0', true);
}
add_action('wp_enqueue_scripts', 'enqueue_scripts');
function enqueue_tailwind_css() {
    wp_enqueue_style( 'tailwind', 'https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css' );
}

add_action( 'wp_enqueue_scripts', 'enqueue_tailwind_css' );
