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
<table class="table table-striped table-anuncio">
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
	
	foreach ($anuncios as $anuncio):
	?>
	<tr>
		<td>
			<?php
			if(!empty($anuncio['url'])):				
			$img=$anuncio['url']; echo '<img src="images/anuncios/'.$img.'" border="0" class="imgAnuncio">';
			else:
			echo '<img src="images/anuncios/default.png" border="0" class="imgAnuncio">';
			endif;	
			?>
		</td>
		<td><?php  echo utf8_encode($anuncio['titulo']); ?></td>
		<td><?php  echo "R$ ".number_format($anuncio['valor'],2); ?></td>
		<td>
			<a href="editar-anuncio.php?id=<?php echo $anuncio['id_anuncio']?>" 
			class="btn btn-default">Editar</a>
			<a href="excluir-anuncio.php?id=<?php echo $anuncio['id_anuncio']?>"  
			onclick="return confirm('Excluir Anúncio ?');"
			class="btn btn-danger">Excluir</a>
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