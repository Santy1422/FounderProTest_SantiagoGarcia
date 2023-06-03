<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '; oQ(S;ay5A!W#]wsYN0%#*<7pO%$vys+g:jV)cbur`fr.ne$zv<Y5y|5>cF<EQf' );
define( 'SECURE_AUTH_KEY',  'HdaNin(G$szpC.A6dw!UVUDRV@t~8I)m8=ip.u_~_as+%IKWO/UP|G7O;W4W^s7R' );
define( 'LOGGED_IN_KEY',    '(;x]Vl_)?#Jh7)33f2s0*|2eZB/L50q=_v3SRR]|^]I~W&ZP6U|[6{PpuL*]G5QO' );
define( 'NONCE_KEY',        'H,[0|;ZXO=~=F(%1X3MM[v~cpYnNoPtuohDf{Th8Ou[Z!`q{cJ/,Q]fXF`%ISp6z' );
define( 'AUTH_SALT',        'APYCwW9,?zCgGgG8#hSy!3bH.{ko<y?-QG]MSZMUlnXB6TIC6E~&BXtF@L*A@`q:' );
define( 'SECURE_AUTH_SALT', 'DY$hW~DjV#Bq+gr.Mrs=a |lbOXQ#[JjQ? MmUh0|ZJ;iy2Q&pedN!PH[xG6x$l ' );
define( 'LOGGED_IN_SALT',   'CPD9eY0Lo|N>GOsm 3ZTm^kOHPU{]#9i<6rLy6`PYLluxh%UPgW$|M]Ux]X$GH};' );
define( 'NONCE_SALT',       'niFm[I|d)OU/WD=(B;nskQ`urVl@LT,?;1 jC_fKm,=I^HeR-$b4AQ)_2sU=L|nf' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
