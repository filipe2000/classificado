<?php
require 'pages/header.php';

if (empty($_SESSION['cLogin'])) 
{
?>
<script type="text/javascript">window.location.href="login.php";</script>
<?php
exit;
}
?>
<div class="container">
<h2>Meus Anúncios</h2>
<a href="add-anuncio.php" class="btn btn-default">+ Add Anuncio</a>
<table class="table table-striped">
	<thead>
	<tr>
		<th>Foto</th>
		<th>Título</th>
		<th>Valor</th>
		<th>Ações</th>
	</tr>
	</thead>
	
	<?php
	require 'classes/anuncios.class.php';
	$a = new Anuncios();
		
	$anuncios=$a->getMeusAnuncios();
	echo "Retorno Anuncios";
	foreach ($anuncios as $anuncio):
	?>
	<tr>
		<td>
			<?php
			if(!empty($anuncio['url'])):
			echo '<img src="images/anuncios/<?php $anuncio["url"];?>" border="0" class="imgAnuncio">';		
			else:
			echo '<img src="images/anuncios/default.png" border="0" class="imgAnuncio">';
			endif;	
			?>
		</td>
		<td><?php  echo $anuncio['titulo']; ?></td>
		<td><?php  echo number_format($anuncio['valor'],2); ?></td>
		<td>
			<a href="editar-anuncio.php?
			id=<?php echo $anuncio['id_anuncio']?>" class="btn btn-default">Editar</a>
			<a href="excluir-anuncio.php?
			id=<?php echo $anuncio['id_anuncio']?>"  class="btn btn-danger">Excluir</a>
		</td>
	</tr>
	<?php	
	endforeach;
	?>
</table>
</div>


<?php
require 'pages/footer.php';

?>