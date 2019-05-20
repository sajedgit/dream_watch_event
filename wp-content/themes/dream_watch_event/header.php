<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>

	<!-- Basic Page Needs
	================================================== -->
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<title><?php wp_title(); ?></title>
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
	
    <meta name="description" content="">	
	<meta name="author" content="">

	<!-- Mobile Specific Metas
	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Favicons
	================================================== -->
	<link rel="icon" href="img/favicon/favicon-32x32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/favicon-144x144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/favicon-72x72.png">
	<link rel="apple-touch-icon-precomposed" href="img/favicon/favicon-54x54.png">
	
	<!-- CSS
	================================================== -->
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.min.css">
	<!-- Template styles-->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/style.css">
	<!-- Responsive styles-->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/responsive.css">
	<!-- FontAwesome -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/font-awesome.min.css">
	<!-- Animation -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animate.css">
	<!-- Prettyphoto -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/prettyPhoto.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.carousel.css">
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.theme.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/flexslider.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/cd-hero.css">
	<!-- Style Swicther -->
	<link id="style-switch" href="<?php bloginfo('template_url'); ?>/css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">
	
	<!-- Flexslider -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/style.css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="<?php bloginfo('template_url'); ?>/js/html5shiv.js"></script>
      <script src="<?php bloginfo('template_url'); ?>/js/respond.min.js"></script>
    <![endif]-->
	
<?php wp_head(); ?>

</head>
	
<body>

	<!-- Style switcher start -->
	<div class="style-switch-wrapper">
		<div class="style-switch-button">
			<i class="fa fa-sliders"></i>
		</div>
		<h3>Style Options</h3>
		<button id="preset1" class="btn btn-sm btn-primary"></button>
		<button id="preset2" class="btn btn-sm btn-primary"></button>
		<button id="preset3" class="btn btn-sm btn-primary"></button>
		<button id="preset4" class="btn btn-sm btn-primary"></button>
		<button id="preset5" class="btn btn-sm btn-primary"></button>
		<button id="preset6" class="btn btn-sm btn-primary"></button>
		<br/><br/>
		<a class="btn btn-sm btn-primary close-styler pull-right">Close X</a>
	</div>
	<!-- Style switcher end -->

	<div class="body-inner">

	<!-- Header start -->
	<header id="header" class="navbar-fixed-top header" role="banner">
		<div class="container">
			<div class="row">
				<!-- Logo start -->
				<div class="navbar-header">
				   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
				    <div class="navbar-brand navbar-bg">
					    <a href="<?php bloginfo('url'); ?>">
					    	<span class="logo_big_text">D</span>
							<span class="logo_small_text">REAM</span>
							<span class="logo_big_text">W</span>
							<span class="logo_small_text">ATCH</span>
							<span class="logo_big_text">E</span>
							<span class="logo_small_text">VENT</span>
					    </a> 
				    </div>                   
				</div><!--/ Logo end -->
				<nav class="collapse navbar-collapse clearfix" role="navigation">
					<ul class="nav navbar-nav navbar-right">
						
	                    <li class="active"><a href="index.html">Home</a></li>
	                    <li><a href="#">Services</a></li>
	                    <li><a href="#">Portfolio</a></li>
	                    <li><a href="#">FAQ</a></li>
            			<li><a href="#">Contact Us</a></li>
                    </ul>
				</nav><!--/ Navigation end -->
			</div><!--/ Row end -->
		</div><!--/ Container end -->
	</header><!--/ Header end -->