<section class="section-padding bg-overlay page-banner blog-banner" style="background-image:url('<?php echo base_url().'/assets/'?>images/blogpage/blogbanner.jpg');">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-header">
					<h2>Produk</h2>
				</div>
				<!-- Breadcrumb -->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="<?php echo base_url().'home/'?>">Beranda</a></li>
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
					<?php foreach($room_jenis as $produke) {?>
					<div class="signle-blog-box">
						<div class="blog-bg blog-bg-1" style="background-image:url('<?php echo base_url().'assets/'; ?>images/<?php echo $produke['detail_gambar']?>');">
							
						</div>
						<div class="blog-content-box">
							<h3><?php echo $produke['detail_keyword_meta']?></h3>
							<div class="blog-meta">
									<p><?php echo $produke['detail_deskripsi_meta']; ?></p>

								<!--<span><i class="fa fa-calendar"></i> September 8, 2017</span>-->
								<!--<span><a href="#"><i class="fa fa-user"></i> John Smith</a></span>-->
							</div>
							<!-- <p>Berbicara tentang manfaat dari minuman teh daun salam ini tidak lepas karena kandungan yang ada di dalamnya. Untuk kandungan yang telah ada pada minuman ini sangatlah baik sekali untuk tubuh. Tentu, dengan kandungan tersebut telah dipercaya memiliki banyak manfaat bagi tubuh kita.</p> -->
							<a class="read-btn" href="<?php echo base_url('home/produk/'.$produke['id_detail'])?>">Baca Selengkapnya <i class="fa fa-long-arrow-right"></i></a>
						</div>
					</div>
					<?php } ?>
					
					<!-- Ends Signle Blog Box -->
				</div>
				<!-- Ends Blog Post Content -->

				<!-- Start Pagination Here -->
					<!-- <div class="pagination-area">
						<ul class="">
							<li>
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li class="active"><a href="#">3</a></li>
							<li><a href="#">...</a></li>
							<li><a href="#">10</a></li>
							<li>
								<a href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</div> -->
					<!-- Ends Pagination Here -->
				</div>
				<!-- Ends Blog Content Here -->
				
				<!-- Start Side Bar Here -->
				<div class="col-md-3 col-md-pull-9">
					<div class="side-bar">
						<!-- Start Search Box Widget -->
						<!-- <div class="search-box sidebar-widget">
							<form action="#">
						        <input type="search" placeholder="Search...">
						        <button type="submit" class=""><i class="fa fa-search"></i></button>
							</form>
						</div> -->
						<!-- Ends Search Box Widget -->

						<!-- Start Categories Widget -->
						<!-- <div class="categories-widget sidebar-widget">
							<div class="sidebar-titel">
								<h4>categories</h4>
							</div>
							<ul class="categories-item">
								<li><a href="#">Green <span>25</span></a></li>
								<li><a href="#">Herbal <span>15</span></a></li>
								<li><a href="#">Loose <span>35</span></a></li>
								<li><a href="#">Mate <span>20</span></a></li>
								<li><a href="#">Organic <span>10</span></a></li>
								<li><a href="#">Pu'Erh <span>25</span></a></li>
								<li><a href="#">Black <span>17</span></a></li>
								<li><a href="#">White <span>30</span></a></li>
							</ul>
						</div> -->
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
	<div class="g-map cd-google-map" style="display: none;">
		<div id="google-container"></div>
		<div id="cd-zoom-in"></div>
		<div id="cd-zoom-out"></div>
	</div>
	<!-- Ends Google Map Here -->