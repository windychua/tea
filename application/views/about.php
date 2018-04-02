<body>
	<div id="home"></div>
	<!-- Start The Pageloader -->
	<div class="teashop-pageloader">
		<div class="preloader-spinner"></div>
	</div>
	<!-- Pageloader Ends Here -->

	<!-- Start The Header Here -->
	

	<!-- Start Page Banner Here -->
	<section class="section-padding bg-overlay page-banner about-banner" style="background-image:url('<?php echo base_url().'/assets/images/'?>aboutpage/banner.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-header">
						<h2>Tentang Kami</h2>
					</div>
					Breadcrumb
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?php echo base_url().'home/'?>">Beranda</a></li>
						<li class="breadcrumb-item active">Tentang Kami</li>
					</ol>
					<!-- Breadcrumb -->
				</div>
			</div>
		</div>
	</section>
	<!-- Ends Page Banner Here -->

	<!-- Start About Us Here -->
	<section class="section-padding" id="about-us">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="section-header text-center">
						<h2>Tentang Kami</h2>
						<p><?php echo $tentang->about_deskripsi;?></p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12" align="center">
				    <img src="<?php echo base_url().'assets/images/'?><?php echo $tentang->about_logo;?>">
					<!--<div class="about-us-video">-->
					<!--	<div class="video-area bg-overlay" style="background-image: url('assets/img/logo.png');">-->
					<!--	</div>-->
					<!--</div>-->
				</div>
			</div>
			<!-- <div class="row">
				<div class="col-sm-4">
					<div class="about-list-box about-list">
						<h3><i class="fa fa-check"></i>100% Natural</h3>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, culpa, sed. Pariatur at laborum, veritatis quae minima.
					</div>
				</div>
				<div class="col-sm-4">
					<div class="about-list-box about-list">
						<h3><i class="fa fa-check"></i>Free Delivery</h3>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, culpa, sed. Pariatur at laborum, veritatis quae minima.
					</div>
				</div>
				<div class="col-sm-4">
					<div class="about-list-box about-list">
						<h3><i class="fa fa-check"></i>Quality Product</h3>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, culpa, sed. Pariatur at laborum, veritatis quae minima.
					</div>
				</div>
			</div> -->
		</div>
	</section>
	<!-- Ends About Us Here -->

	
	<!-- Start Testimonial Here -->

	<!-- Start Contact Here -->
	
	<!-- Ends Contact Here -->

	<!-- Start Google Map Here -->
	
	<!-- Ends Google Map Here -->

	<!-- Start The ScrollToTop Here -->
	<div class="ScrollToTop">
		<a href="#"><i class="fa fa-angle-up"></i></a>
	</div>
	<!-- ScrollToTop Ends Here -->
<!-- Start Google Map Here -->
	<div class="g-map cd-google-map" style="display: none;">
		<div id="google-container"></div>
		<div id="cd-zoom-in"></div>
		<div id="cd-zoom-out"></div>
	</div>
	<!-- Ends Google Map Here -->