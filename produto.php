<?php require 'pages/header.php' ?>
<?php  
require 'classes/anuncios.class.php';
require 'classes/usuarios.class.php';
$a = new Anuncios();
$u= new Usuarios();
if (isset($_GET['id']) && !empty($_GET['id'])) 
{
$id= addslashes($_GET['id']);
}else
{
	?>
<script type="text/javascript">window.location.href="index.php";</script>
	<?php
exit;
}
/*
$info = $a->getAnuncio($id);
foreach ($info['fotos'] as $key => $foto) {
echo "<img src=images/anuncios/".$foto['url'].">";		
}
*/
 ?>
<div class="container-fluid">

	<div class="row">
		<div class="col-sm-4">
			<!-- bootstrap carousel slide -->
			<div class="carousel slide" data-ride="carousel" id="meuCarousel">
				<div class="carousel-inner" role="listbox">
					<?php
						$info = $a->getAnuncio($id);
						foreach ($info['fotos'] as $i => $foto): ?>
						<div class="item <?php echo ($i=='0')? 'active':''; ?>">
						<img src="images/anuncios/<?php echo $foto['url']; ?>"/>
						</div>	
						<?php endforeach; ?>	

				</div>
				<a class="left carousel-control" href="#meuCarousel" role="button" data-slide="prev">
				<h1><</h1></a>
				<a class="rigth carousel-control" href="#meuCarousel" role="button" data-slide="next"><h1>></h1></a>

			</div>
		</div>
		<div class="col-sm-8"> 
			
		</div>
	</div>

</div>
<?php require 'pages/footer.php' ?>