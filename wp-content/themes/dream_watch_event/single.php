

<?php get_header(); ?>

<?php get_sidebar('welcome-inner'); ?>


<section id="main-container">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="post-content">
						
						<?php
						// Start the loop.
						while ( have_posts() ) : the_post();

						 //echo get_the_post_thumbnail_url($post_id, ''); 
							the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' ); 
							
						    echo "<br/>";
						
							if ( has_post_thumbnail() ) 
							{ // check if the post has a Post Thumbnail assigned to it.
							the_post_thumbnail( 'medium_large' );
							}
							echo "<br/><br/>";
							
							//echo get_the_excerpt();
							echo the_content();
							
							echo "<br/><br/><br/>";

							// If comments are open or we have at least one comment, load up the comment template.
							if ( comments_open() || get_comments_number() ) {
								comments_template();
							}
						

							// End of the loop.
						endwhile;
						?>
						
						
						<div class="gap-20"></div>

						
						 

						

					</div><!--/ post content end -->

				</div><!--/ Content col end -->

				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="sidebar sidebar-right">
						<!-- category start -->
						<div class="widget widget-categories">
							<h3 class="widget-title">Categories</h3>
							<ul class="category-list clearfix">
				              <li><a href="#">Objects</a><span class="posts-count"> (19)</span></li>
				              <li><a href="#">Technology</a><span class="posts-count"> (09)</span></li>
				              <li><a href="#">Photography</a><span class="posts-count"> (13)</span></li>
				              <li><a href="#">Fashion</a><span class="posts-count"> (10)</span></li>
				              <li><a href="#">Realtough</a><span class="posts-count"> (14)</span></li>
				              <li><a href="#">Architecture</a><span class="posts-count"> (11)</span></li>
				            </ul>
						</div><!-- category end -->

						<!-- tags start -->
						<div class="widget widget-tags">
							<h3 class="widget-title">Tags</h3>
							<ul class="unstyled clearfix">
				              	<li><a href="#">iMac</a></li>
				              	<li><a href="#">Black and Green</a></li>
				              	<li><a href="#">Crative</a></li>
				              	<li><a href="#">Momentum</a></li>
				              	<li><a href="#">Business</a></li>
				              	<li><a href="#">Cellular</a></li>
				              	<li><a href="#">Niche</a></li>
				            </ul>
						</div><!-- tags end -->


					</div><!--/ Sidebar end -->
				</div><!--/ Sidebar col end -->
			</div><!--/ row end -->
		</div><!--/ container end -->
	</section><!--/ Main container end -->




<?php get_sidebar('service'); ?>



<?php get_footer(); ?>




 