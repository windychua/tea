<div class="index-banner">
					<div class="wmuSlider example1">
						<div class="wmuSliderWrapper">
							<?php foreach($tampil_slider as $slider):?>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
				   	       			<div class="banner_center">
										<h1><?php echo $slider['slider_judul'];?></h1> 
											<p><?php echo $slider['slider_deskripsi'];?></p>
									</div>
								</div>
							</article>
							<?php endforeach?>
					<ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="">2</a></li>
                </ul>

				 </div>
				
            </div>

	</div>
	<script src="<?php echo base_url().'assets/'; ?>js/jquery.wmuSlider.js"></script> 
			  <script>
       			$('.example1').wmuSlider();         
   		     </script> 	

			</div>
</div>
<div class="service-section">
<div class="container">
				<div class="gallery">				
					<h3>Paket Tour</h3>
				</div>	
						<div class="service-grids">
							<div class="service-grid1">
							<?php foreach ($home as $data) { ?>
							<div class="col-md-4 service-grid">
							<a href ="<?php echo base_url('home/produk/'.$data['id_detail'])?>">
								<h4><?php echo $data['detail_judul'] ?></h4>
							</a>	
								<img src="<?php echo base_url().'assets/images/'.$data['detail_gambar'] ?>" class="img-responsive" alt="" style="width:400px;height: 250px;">
									
							<div class="clearfix"> </div>
							</div><br />
							 <?php } ?>
					</div>
			</div>
</div>
</div>
<div class="container">	
	<div class="gallery">
		<h3>Foto Terbaru</h3>
		<div class="products-bottom">
		    <?php foreach ($galeri_album as $data) { ?>
			<div class="col-md-4 work-grid">
				<div id="nivo-lightbox-demo">			
					<a href="<?php echo base_url('assets/images/'.$data['gallery_gambar']) ?>" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo">			   
						<img src="<?php echo base_url('assets/images/'.$data['gallery_gambar']) ?>" class="img-responsive " alt="" style="width:400px;height: 300px;">
						<div class="rotate">
							<i> </i>	
						</div>				
					 </a> 
				</div>
			</div>			
			<?php } ?>		
			<div class="clearfix"> </div>	
		</div>
	</div>
</div>	
	

 <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/'; ?>css/magnific-popup.css">
			<script type="text/javascript" src="<?php echo base_url().'assets/'; ?>js/nivo-lightbox.min.js"></script>
				<script type="text/javascript">
				$(document).ready(function(){
				    $('#nivo-lightbox-demo a').nivoLightbox({ effect: 'fade' });
				});
	</script>

			<!---->

