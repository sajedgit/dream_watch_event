 <!-- Service box start -->
	<section id="service" class="service angle">
		<div class="container">
			<div class="row">
				<div class="col-md-12 heading">
					<span class="title-icon pull-left"><i class="fa fa-cogs"></i></span>
					<h2 class="title">Service We Provide <span class="title-desc">A Quality Experience Team with 4 years experience</span></h2>
				</div>
			</div><!-- Title row end -->

			<div class="row">
			
				<div class="col-md-12">
				
				<?php 
				$postslist = get_posts( array(
					'posts_per_page' => 8,
					'order'          => 'ASC',
					'category'       => 3,
					'orderby'        => 'title'
				) );
				if ( $postslist ) 
				{
				foreach ( $postslist as $post ) :
					    setup_postdata( $post );
					?>
				
				
					<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay=".5s">
						<div class="service-content text-center">
							<span class="service-icon icon-pentagon"><i class="fa fa-tachometer"></i></span>
							<h3><a href="<?php echo esc_url( get_permalink() ) ?>"><?php the_title(); ?> </a></h3>
							<p><?php the_excerpt(); ?></p>
						</div>
					</div><!--/ End first service -->
					
					<?php
					endforeach; 
					wp_reset_postdata();
				}
				?>
				
				</div>
			</div><!-- Content row end -->
		</div><!--/ Container end -->
	</section><!--/ Service box end -->
 