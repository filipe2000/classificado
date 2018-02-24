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

$info = $a->getAnuncio($id);
foreach ($info['fotos'] as $key => $foto) {
echo "<img src=images/anuncios/".$foto['url'].">";		
}

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
				<span><</span></a>
				<a class=" carousel-control-rigth" href="#meuCarousel" role="button" data-slide="next">
				<span>></span></a>

			</div>
		</div>
		<div class="col-sm-8"> 
			<h1><?php echo  $info['titulo']; ?></h1>
			<h4><?php echo  $info['cat']; ?></h4>
			<p><?php echo  $info['descr']; ?></p>
			<br />
			<h3>R$ <?php  echo "R$ ".number_format($info['valor'],2); ?></h3>
			<h4>Tel: <?php echo  $info['tel']; ?></h4>
		</div>
	</div>

</div>
<?php require 'pages/footer.php' ?>