<head>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/' ?>css/lightbox-style.css">
	<script type="text/javascript" src="<?php echo base_url().'assets/' ?>js/lightbox.js"></script>
</head>
<section class="section-padding bg-overlay page-banner about-banner" style="background-image:url('<?php echo base_url().'/assets/'?>images/aboutpage/banner.jpg');">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-header">
					<h2>Foto</h2>
				</div>
				<!-- Breadcrumb -->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="<?php echo base_url().'home/'?>">Beranda</a></li>
					<li class="breadcrumb-item active">Foto</li>
				</ol>
				<!-- Breadcrumb -->
			</div>
		</div>
	</div>
</section>
<!-- Start the Homes lider here -->

<!-- Home Slider ends here -->

<!-- Start Product Here -->

<!-- Ends Product Here -->

<!-- Start About Here -->
<!--	<section class="section-padding" id="about">-->
	<!-- Start Video Button Here -->
<!--
		<div class="video-area bg-overlay">
			<a class="video-play-btn mfp-iframe" href="https://www.youtube.com/watch?v=ypQUb12-F7Y">
				<i class="fa fa-play"></i>
			</a>
		</div>
	-->
	<!-- Ends Video Button Here -->

	<!-- Start About Content Here -->
<!--
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-6">
					<div class="section-header">
						<h2>About Us</h2>
						<p>There are many variations of passages of Lorem Ipsum available, but the majority have su ffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </p>
					</div>
					<ul class="about-list">
						<li>
							<h3><i class="fa fa-check"></i>100% Natural</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, culpa, sed. Pariatur at laborum, veritatis quae minima.
						</li>
						<li>
							<h3><i class="fa fa-check"></i>Free Delivery</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, culpa, sed. Pariatur at laborum, veritatis quae minima.
						</li>
						<li>
							<h3><i class="fa fa-check"></i>Quality Product</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, culpa, sed. Pariatur at laborum, veritatis quae minima.
						</li>
					</ul>
				</div>
			</div>
		</div>
	-->
	<!-- Ends About Content Here -->
	<!--	</section>-->
	<!-- Ends About Here -->

	<!-- Start Featurs Area -->
	<section class="section-padding" id="featurs" style="background-color:#fff">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<!-- Start Section Header Here -->
					<div class="section-header text-center">
						<h2>Foto Terbaru</h2>
						<p>Pilih seleramu. Kami menyediakan berbagai jenis minuman herbal yang akan membuat anda lebih sehat dan juga bermanfaat untuk kecantikan anda.</p>
					</div>
					<!-- Ends Section Header Here -->
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<!-- Portfolio Navigation Start Here -->
					<ul class="featurs-navigation">
						<li class="active" data-filter="*"> <span>Semua</span></li>
						<?php foreach ($galeri_album as $la) { ?>
						<li role="presentation" class="gallery-nav__link">
							<a href="#" role="tab" data-filter=".<?php echo $la['id_album']; ?>">
								<span><?php echo $la['album_nama']; ?></span>
							</a>
						</li>
						<?php } ?>
					</ul>
					<!-- Portfolio Navigation Ends Here -->
				</div>
			</div>

			<div class="container-fluid">
				<div id="gallery__items" class="row">
					<?php foreach ($galeri_album as $lf) { ?>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 gallery__item all <?php echo $lf['id_album'] ?>">
						<a href="<?php echo base_url().'assets/' ?>images/<?php echo $lf['album_gambar']; ?>" data-lightbox="gallery" data-title="<?php echo $lf['album_nama']; ?>">
							<img src="<?php echo base_url().'assets/' ?>images/<?php echo $lf['album_gambar']; ?>" class="img-responsive" alt="<?php echo $lf['album_nama'];?>">
						</a>
					</div> <!-- .gallery__item -->
					<?php } ?>
				</div> <!-- .row -->

			</div> <!-- / .container-fluid -->

			<!-- Ends Contact Here -->

			<!-- Start Google Map Here -->
			<div class="g-map cd-google-map" style="display: none;">
				<div id="google-container"></div>
				<div id="cd-zoom-in"></div>
				<div id="cd-zoom-out"></div>
			</div>
			<!-- Ends Google Map Here -->

			<!-- Start The ScrollToTop Here -->
			<div class="ScrollToTop">
				<a href="#"><i class="fa fa-angle-up"></i></a>
			</div>