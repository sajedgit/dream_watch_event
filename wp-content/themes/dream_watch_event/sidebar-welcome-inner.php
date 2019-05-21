	<div id="banner-area">
		<img src="<?php bloginfo('template_url'); ?>/images/banner/banner2.jpg" alt ="" />
		<div class="parallax-overlay"></div>
			<!-- Subpage title start -->
			<div class="banner-title-content">
	        	<div class="text-center">
		        	<h2><?php echo $pageName = $post->post_title ?></h2>
		        	<ul class="breadcrumb">
			            <li><a href="<?php bloginfo('url'); ?>">Home</a></li>
			            <li><a href="<?php echo get_permalink() ?>"> <?php echo $pageName; ?></a></li>
		          	</ul>
	          	</div>
          	</div><!-- Subpage title end -->
	</div><!-- Banner area end -->