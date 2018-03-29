			</div>
		</div>
			<div class="service-section">
				<div class="container">
					<h3>Produk</h3>
						<div class="service-grids">
							<div class="service-grid1">
							<?php foreach($produk as $produke) {?>
							<div class="col-md-4 service-grid">
							<a href ="<?php echo base_url('home/galeri_room/'.$produke['id_produk'])?>">
								<h4><?php echo $produke['produk_utama']?></h4>
							</a>	
								<img src="<?php echo base_url().'assets/'; ?>images/<?php echo $produke['produk_gambar']?>" class="img-responsive" alt="" style="width: 400px;height: 300px;"/>
					
							</div>
							<?php } ?>
					<div class="clearfix"> </div>
					</div>
					</div>
			</div>
		</div>