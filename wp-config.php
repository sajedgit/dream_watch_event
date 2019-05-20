<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dream_watch_event' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '|c)VjfnXzDyqNzkCHx}jDd9;d;>nV#:-J^%0-J;mID}yrD^iA>)a&uUj[9@^H>3f' );
define( 'SECURE_AUTH_KEY',  ';ax=a%A%bNPp?~fk9o<T9|?{,+1F~?(]oR,7L:DK/>V#d%<8efgsvQg</!(.OF9r' );
define( 'LOGGED_IN_KEY',    '!vcpjT7#j{<m%kvn:4^mECQRT-6_,!=s.+P{_PD fI @)D &)6mZsy(/<JZnBsoe' );
define( 'NONCE_KEY',        '(asx=jQ_!ov6_73yq:X;t)oX&.#5KJNQ*w?4EQOjxIp~=Aoa3q<r^,aE/Y`^v};-' );
define( 'AUTH_SALT',        'L0Rc|E;)&c2~*FYn5gSS*=&QX6QmvitF.Wv[/iZE]g<&X !AnxGdt};QbgB~S$n)' );
define( 'SECURE_AUTH_SALT', 'hNAkC`T31k5(x%-pk*]MRI.vrS+3{4 lb9W92@>Wx-osH)`e|yzG:|OL3DOVh7e=' );
define( 'LOGGED_IN_SALT',   'WobH>z1l=gW;0(|msq,AxK/2!ZzPRG6THz(r>Xy[cHYb.<}!#ogw:o%%1MR}F;:.' );
define( 'NONCE_SALT',       '0vU{,Rnm;wMm<-@dwwy{!GKmy9~7*nD(^GO#=f(;InPWx^LP)US&2@;~w[#,.Gqe' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
