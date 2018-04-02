<!-- Start Page Banner Here -->
	<section class="section-padding bg-overlay page-banner blog-banner" style="background-image:url('<?php echo base_url().'/assets/'?>images/blogpage/blogbanner.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-header">
						<h2>Produksi</h2>
					</div>
					<!-- Breadcrumb -->
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Beranda</a></li>
						<li class="breadcrumb-item active">Produk</li>
					</ol>
					<!-- Breadcrumb -->
				</div>
			</div>
		</div>
	</section>
	<!-- Ends Page Banner Here -->

	<!-- Start Blog Content Here -->
	<section class="section-padding" id="blog-page-content">
		<div class="container">
			<div class="row">
				<!-- Start Blog Content Here -->
				<div class="col-md-9 col-md-push-3">
					<!-- Start Blog Post Content -->
					<div class="blog-post-content">

						<!-- Start Signle Blog Box -->
						<div class="signle-blog-box">
							<div class="blog-bg blog-bg-1" style="background-image: url('<?php echo base_url().'assets/images/'?><?php echo $room->detail_gambar;?>');"></div>
							<div class="blog-content-box">
								<h3><?php echo $room->detail_title_meta;?></h3>
								<div class="blog-meta">
									<!--<span><i class="fa fa-calendar"></i> September 8, 2017</span>-->
									<!--<span><a href="#"><i class="fa fa-user"></i> John Smith</a></span>-->
								</div>
								<p><?php echo $room->detail_deskripsi_meta;?></p>
								
							</div>
						</div>

						<!-- Ends Signle Blog Box -->
					</div>
					<!-- Ends Blog Post Content -->

					<!-- Start Related Post	Here -->
					
					<!-- Start Related Post	Here -->

					<!-- Start Comments Here -->
					
					<!-- Start Comments Here -->
				</div>
				<!-- Ends Blog Content Here -->
				
				<!-- Start Side Bar Here -->
				<div class="col-md-3 col-md-pull-9">
					<div class="side-bar">
						<!-- Start Search Box Widget -->
						
						<!-- Ends Search Box Widget -->

						<!-- Start Categories Widget -->
						
						<!-- Ends Categories Widget -->

						<!-- Start Featurs Product Widget Here -->
						<div class="recent-post-widget sidebar-widget">
							<div class="sidebar-titel">
								<h4>Produk Lainnya</h4>
							</div>

							<ul class="featured-prodcut-list">
								<?php foreach ($terbaru as $t) {?>
								<li>
									<a href="<?php echo base_url('home/produk/'.$t['id_detail']) ?>">
										<img src="<?= base_url().'assets/images/'.$t['detail_gambar'] ?>" alt="Featured Product">
										<p>
											Nama Produk <span><?php echo $t['detail_judul'] ?></span>
										</p>
									</a>
								</li>
								<?php } ?>
								<!-- 
								<li>
									<a href="#">
										<img src="assets/img/product/2.jpg" alt="Featured Product">
										<p>
											Nama Produk <span>Teh Hitam</span>
										</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="assets/img/product/3.jpg" alt="Featured Product">
										<p>
											Nama Produk <span>Teh Herbal</span>
										</p>
									</a>
								</li> -->
							</ul>
						</div>
						<!-- Ends Featurs Product Here -->

						<!-- Start Tag List widget Here -->
						<!-- <div class="sidebar-widget">
							<div class="sidebar-titel">
								<h4>Tag List </h4>
							</div>
							<ul class="taglist">
								<li><a href="#">Green</a></li>
								<li><a href="#">Black</a></li>
								<li><a href="#">Loose Tea</a></li>
								<li><a href="#">Herbal</a></li>
								<li><a href="#">White</a></li>
								<li><a href="#">Orange</a></li>
								<li><a href="#">Loose Tea</a></li>
								<li><a href="#">Black</a></li>
								<li><a href="#">Orange</a></li>
							</ul>
						</div> -->
						<!-- Ends Tag List widget Here -->
					</div>
				</div>
				<!-- Ends Side Bar Here -->
			</div>
		</div>
	</section>
	<!-- Ends Blog Content Here -->

	<!-- Start The ScrollToTop Here -->
	<div class="ScrollToTop">
		<a href="#"><i class="fa fa-angle-up"></i></a>
	</div>
	<!-- ScrollToTop Ends Here -->
