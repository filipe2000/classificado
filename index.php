<!-- INICIAR AULA 10 -->
<?php require 'pages/header.php' ?>
<?php  
require 'classes/anuncios.class.php';
require 'classes/usuarios.class.php';
$a = new Anuncios();
$u= new Usuarios();
$total_anuncios= $a->getTotalAnuncios();
$total_usuarios=$u->getTotalUsuarios();

//para paginação
$p=1; 
if(isset($_GET['p']) && !empty($_GET['p']))
{
$p=addslashes($_GET['p']);
}
$qtd=3;	//arredondar total	para maior

$totalpg=ceil($total_anuncios / $qtd);
$anuncios=$a->getUltimosAnuncios($p,$qtd);

 ?>
<div class="container-fluid">
<div class="jumbotron">
	<h2>Nós temos hoje <?php echo $total_anuncios ?> anuncios</h2>
	<p>E mais de <?php  echo $total_usuarios ?> inscritos</p>
</div>
	<div class="row">
		<div class="col-sm-3">
			<h4>Pesquisa Avançada</h4>
		</div>
		<div class="col-sm-9"> 
			<h4>Últimos Anúncios</h4>
			<table class="table table-striped table-anuncio">
				<tbody>
					<?php foreach($anuncios as $anuncio): ?>
					<tr>
						<td style="width:60px !important;">
							<?php if(!empty($anuncio)): ?>
								<img src="images/anuncios/<?php echo $anuncio['url']; ?>" class="imgAnuncio" border="0">
							<?php else: ?>
								<img src="images/anuncios/default.jpg" class="imgAnuncio" border="0">	
							<?php endif; ?>	
						</td>
						<td>
							<a href="produto.php?id=
							<?php echo $anuncio['id_produto']; ?>"><?php echo utf8_encode($anuncio['titulo']); ?>
							</a><br/>
							<?php echo utf8_encode($anuncio['cat']); ?>
						</td>
						<td>R$
						<?php echo number_format($anuncio['valor'],2); ?>
						</td>
					</tr>
					<?php endforeach; ?>	
				</tbody>
			</table>
			<!-- bootstrap -->
			<ul class="pagination">
				<?php for ($i=1; $i <= $totalpg ; $i++): ?>
				<li 
				class="<?php //marcação do link ativo 
					//se página=página atual  true:false
						echo($p==$i)?'active':'';
						?>">
				<a href="index.php?p=<?php echo $i; ?>"><?php echo$i;?></a></li>
				<?php endfor; ?>
			</ul>
		</div>
	</div>

</div>
<?php require 'pages/footer.php' ?>