<!-- Start Page Banner Here -->
	<section class="section-padding bg-overlay page-banner blog-banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-header">
						<h2>Produk</h2>
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
							<div class="blog-bg blog-bg-1" style="background-image: url('assets/img/tehfirdia/s6.jpeg');"></div>
							<div class="blog-content-box">
								<h3>Teh Daun Salam</h3>
								<div class="blog-meta">
									<!--<span><i class="fa fa-calendar"></i> September 8, 2017</span>-->
									<!--<span><a href="#"><i class="fa fa-user"></i> John Smith</a></span>-->
								</div>
								<p>Teh daun salam merupakan sebuah minuman yang telah dibuat dari daun salam. Berbicara tentang daun salam biasanya banyak digunakan orang sebagai bumbu penyedap masakan. Tetapi perlu untuk anda ketahui bahwa daun salam ini bisa digunakan sebagai minuman atau dijadikan teh ataupu rebusan yang banyak digunakan sebagai obat untuk mengatasi berbagai macam penyakit. Berbicara tentang manfaat dari minuman teh daun salam ini tidak lepas karena kandungan yang ada di dalamnya. Untuk kandungan yang telah ada pada minuman ini sangatlah baik sekali untuk tubuh. Tentu, dengan kandungan tersebut telah dipercaya memiliki banyak manfaat bagi tubuh kita. Lalu apa saja manfaat dan khasiat teh daun salam untuk kesehatan ? Berikut inilah informasinya.</p>
								
								<p><b>1. Mengobati diabetes</b>
								    Diabetes merupakan sebuah penyakit yang telah diakibatkan oleh kadar gula darah yang tinggi. Daun salam ini sudah terbukti bahwa bisa digunakan untuk mengoabati diabetes tipe 2 dimana bisa membantu menurunkan kadar glukosa darah dan juga kolesterol di tubuh anda. Untuk mendapatkan hasil yang baik, anda bisa mengkonsumsi minuman ini dengan rutin. Kandungan antioksidan di dalam minuman ini akan membantu tubuh untuk memproses insulin dengan efisien.
</p>
								
								<p><b>2. Meredakan rasa sakit</b>
								    Minyak yang telah di ekstra dari daun salam ini bisa membantu anda dalam meredakan rasa sakit. Kandungan anti inflamasi di dalam minuman ini telah berguna sekali di dalam mengurangi rasa sakit yang telah diakibatkan oleh keselo, arthritis, rematik, strain dan juga nyeri. Kandungan di dalam minuman itulah yang nantinya akan membnatu mengurangi dan meringankan migrai atau sakit kepala. Kemudian minuman ini juga akan membantu meningkatkan sirkualsi darah anda.
</p>

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
										<img src="<?= base_url().'assets/img/'.$t['detail_gambar'] ?>" alt="Featured Product">
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
