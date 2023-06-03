<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<?php wp_head(); ?>
	<link rel="stylesheet" href="dist/output.css">
</head>

<body <?php body_class('bg-primary'); ?>>
	<?php wp_body_open(); ?>
	<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <link rel="icon" type="image/svg+xml" href="favicon.svg" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>FounderPro Test Santiago Garcia</title>
</head>

<body class="bg-gray-100">
  <header class="bg-white">
    <nav class="bg-white absolute w-full z-20 top-0 left-0 border-b border-gray-200 py-5">
      <div class="max-w-screen-xl flex items-center justify-between mx-auto p-4">
        <div class="flex items-center">
          <a href="#" class="flex items-center">
		  <img src="https://i.ibb.co/3RmC6B4/Group-6665-1.png" class="h-24 md:h-24 mr-3 md:mr-4 mt-3" alt="FounderPro">
		  <span class="self-center hidden md:block md:text-4xl font-semibold whitespace-nowrap" style="color: black;">MORE</span>
          </a>
          <div class="md:hidden ml-auto">
          </div>
        </div>
        <div class="flex md:order-2 items-center justify-center md:justify-end w-full md:w-auto">
          <button type="button" class="text-white bg-button font-dongle rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 mt-3">Log In</button>
          <button type="button" class="text-white bg-button font-dongle rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 mt-3">Sign Up</button>
        </div>
		<div class="items-center mb-8 justify-between hidden w-full md:flex md:w-auto" id="navbar-sticky">
  <?php
  wp_nav_menu(array(
    'theme_location' => 'primary',
    'menu_class' => 'menu-primary flex space-x-4',
    'container' => '',
    'link_before' => '<span class="mr-2 flex items-center">',
    'link_after' => '<svg class="w-5 h-5 ml-1 -mt-0.5  text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg></span>',
    'depth' => 2,
    'walker' => new Custom_Walker_Nav_Menu()
  ));
  ?>
</div>
<div class="md:hidden flex items-center">
  <button class="outline-none mobile-new-button border-0">
  <svg xmlns="http://www.w3.org/2000/svg" width="26" height="16" viewBox="0 0 26 16" fill="none">
<path d="M11.75 14.3975C11.75 13.88 12.17 13.46 12.6875 13.46H24.5625C25.08 13.46 25.5 13.88 25.5 14.3975C25.5 14.915 25.08 15.335 24.5625 15.335H12.6875C12.17 15.335 11.75 14.915 11.75 14.3975ZM0.5 8.14746C0.5 7.62996 0.92 7.20996 1.4375 7.20996H24.5625C25.08 7.20996 25.5 7.62996 25.5 8.14746C25.5 8.66496 25.08 9.08496 24.5625 9.08496H1.4375C0.92 9.08496 0.5 8.66496 0.5 8.14746ZM5.5 1.89746C5.5 1.37996 5.92 0.959961 6.4375 0.959961H24.5625C25.08 0.959961 25.5 1.37996 25.5 1.89746C25.5 2.41496 25.08 2.83496 24.5625 2.83496H6.4375C5.92 2.83496 5.5 2.41496 5.5 1.89746Z" fill="black"/>
</svg>
  </button>
</div>
</div>
</nav>
<div class="hidden mobile-new bg-gradient-to-br from-purple-100 via-white-40 to-transparent backdrop-filter backdrop-blur-lg box-border p-9 fixed inset-0 top-9 mt-16">
  <?php
  wp_nav_menu(array(
    'theme_location' => 'primary',
    'menu_class' => 'menu-primary-mobile flex flex-col space-y-4',
    'container' => '',
    'depth' => 2,
    'walker' => new Custom_Walker_Nav_Menu()
  ));
  ?>
</div>
</header>


  <script>
    document.addEventListener("DOMContentLoaded", function() {
      const menuButton = document.querySelector(".mobile-new-button");
      const mobileMenu = document.querySelector(".mobile-new");

      menuButton.addEventListener("click", function() {
        mobileMenu.classList.toggle("hidden");
      });
    });
  </script>
</body>

</html>
	<?php wp_footer(); ?>
</body>
</html>