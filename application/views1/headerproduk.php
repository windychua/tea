
<!DOCTYPE HTML>
<html>
<head>
<title><?php echo $title?></title>
<link href="<?php echo base_url().'assets/'; ?>css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="<?php echo base_url().'assets/'; ?>css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $keyword ?>" />
<meta name="Description" content="<?php echo $description?>">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="<?php echo base_url().'assets/'; ?>js/jquery-1.11.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="<?php echo base_url().'assets/'; ?>js/move-top.js"></script>
<script type="text/javascript" src="<?php echo base_url().'assets/'; ?>js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
 
</head>
<body>
		<div class="header head-top">
			<div class="container">
				<div class="header-top">
					<div class="logo">
						<a href="<?php echo base_url('home') ?>"><img src="<?php echo base_url().'assets/'; ?>images/dadi.png" alt="Beranda"/></a>
					</div>
						
							<div class="clearfix"></div>
				</div>
				<div class="top-menu">
					<span class="menu"><img src="<?php echo base_url().'assets/'; ?>images/menu.png" alt=""/>  </span>
						<ul>
							<li><a href="<?php echo base_url('home') ?>" >Beranda</a></li>
								<li><a href="<?php echo base_url('home/tentang') ?>" >Tentang</a></li>
									<li><a href="<?php echo base_url('home/room') ?>" class="active">Paket Tour</a></li>
										<li><a href="<?php echo base_url('home/galleri') ?>" >Foto</a></li>
												<li><a href="<?php echo base_url('home/hubungi') ?>" >Kontak</a></li>
							<script>
							 $("span.menu").click(function(){
							 $(".top-menu ul").slideToggle("slow" , function(){
							 });
							 });
							 </script>
							<!-- //script for menu -->

						<div class="clearfix"></div>
					</ul>
				</div>