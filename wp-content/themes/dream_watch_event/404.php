

<?php get_header(); ?>


	<div id="banner-area">
		<img src="<?php bloginfo('template_url'); ?>/images/banner/banner2.jpg" alt ="" />
		<div class="parallax-overlay"></div>
			<!-- Subpage title start -->
			<div class="banner-title-content">
	        	<div class="text-center">
		        	<h2>404 Error Page</h2>
		        	<ul class="breadcrumb">
			            <li>Home</li>
			            <li>Pages</li>
			            <li><a href="index.html"> 404 Error Page</a></li>
		          	</ul>
	          	</div>
          	</div><!-- Subpage title end -->
	</div><!-- Banner area end -->
	
	
	
	<section id="main-container">
		<div class="container">
			<div class="error-page text-center">
				<div class="error-code">
					<strong>404</strong>
				</div>
				<div class="error-message">
					<h3>Oops... Page Not Found!</h3>
				</div>
				<div class="error-body">
					Try using the button below to go to main page of the site <br/>
					<a href="index.html" class="btn btn-primary solid blank"><i class="fa fa-arrow-circle-left">&nbsp;</i> Go to Home</a>
				</div>
			</div>
		</div>
	</section><!--/ Main container end -->
	

<?php get_footer(); ?>
