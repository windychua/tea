<div class="popular_cakes">
	<div class="container">
		<h3 class="heading">Most Popular Drinks</h3>
		<div class="cakes_grids">
		<?php foreach($room_jenis as $g) { ?>
			<div class="col-md-4">
			<div class="cakes_grid1">
				<img src="<?php echo base_url().'assets/'?>images/<?php echo $g['detail_gambar']?>" alt="popular jus1">
				<h3><?php echo $g['detail_judul']?></h3>
				
			</div>
			</div>
		<?php } ?>		
			<div class="clearfix"></div>
		</div>
	</div> 
</div>	
