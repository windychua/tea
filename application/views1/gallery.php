			</div>
</div>
<div class="container">
	<div class="gallery">
		<h3>Foto</h3>
		<div class="products-bottom">
		<?php foreach ($galeri_album as $a) { ?>
			<div class="col-md-4 work-grid">
				<div id="nivo-lightbox-demo">			
					<a  href="<?php echo base_url('home/galeri_album/'.$a['id_album'])?>">			   
						<img src="<?php echo base_url().'assets/'?>images/<?php echo $a['album_gambar']?>" class="img-responsive " alt="" style="width:400px;height: 300px;"/>
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
