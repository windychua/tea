			</div>
</div>
<div class="container">
	<div class="gallery">
		<h3>Foto </h3>
		<div class="products-bottom">
		<?php foreach ($galeri_album as $g) { ?>
			<div class="col-md-4 work-grid">
				<div id="nivo-lightbox-demo">			
					<a  href="<?php echo base_url('assets/images/'.$g['gallery_gambar']) ?>" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo">		   
						<img src="<?php echo base_url().'assets/'?>images/<?php echo $g['gallery_gambar']?>" class="img-responsive " alt="" style="width:400px;height: 300px;"/>
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
	<!--script-->

</div>
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/'; ?>css/magnific-popup.css">
			<script type="text/javascript" src="<?php echo base_url().'assets/'; ?>js/nivo-lightbox.min.js"></script>
				<script type="text/javascript">
				$(document).ready(function(){
				    $('#nivo-lightbox-demo a').nivoLightbox({ effect: 'fade' });
				});
	</script>