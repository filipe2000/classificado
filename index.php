<?php require 'pages/header.php' ?>
<?php  
require 'classes/anuncios.class.php';
require 'classes/usuarios.class.php';
require 'classes/categorias.class.php';
$a = new Anuncios();
$u= new Usuarios();
$c= new Categorias();
$total_anuncios= $a->getTotalAnuncios();
$total_usuarios=$u->getTotalUsuarios();

$filtros= array(
	'categoria' ==> '',
	'preco' ==> '',
	'estado' ==> ''
	);
if (isset($_GET['filtros']))
{
	
}

//para paginação
$p=1; 
if(isset($_GET['p']) && !empty($_GET['p']))
{
$p=addslashes($_GET['p']);
}
$qtd=5;	//arredondar total	para maior

$totalpg=ceil($total_anuncios / $qtd);
$anuncios=$a->getUltimosAnuncios($p,$qtd);
$cats=$c->getLista();

 ?>
<div class="container-fluid">
<div class="jumbotron">
	<h2>Nós temos hoje <?php echo $total_anuncios ?> anuncios</h2>
	<p>E mais de <?php  echo $total_usuarios ?> inscritos</p>
</div>
	<div class="row">
		<div class="col-sm-3">
			<h4>Pesquisa Avançada</h4>
			<form method="GET">
				<div class="form-group">
				<label for="cat">Categoria:</label>
					<select id="cat" name="filtros[cat]" class="form-control">
					<option></option>
						<?php foreach ($cats as $cat): ?>
###############################################################################							aula 11 - 11min
						<option value="<?php echo $cat['id_cat']; ?>" 
						<?php echo ($cat['id_cat']==)? 'selected=selected':'';  ?>><?php echo utf8_encode($cat['nome_cat']); ?> </option>	
						<?php endforeach ?>
					</select>
				</div>

				<div class="form-group">
				<label for="preco">Preço:</label>
					<select id="preco" name="filtros[preco]" class="form-control">
					<option></option>
					<option value="0-50">R$ 0 - 50</option>
					<option value="51-100">R$ 51 - 100</option>
					<option value="101-200">R$ 101 - 200</option>
					<option value="201-300">R$ 201 - 300</option>
					</select>
				</div>

				<div class="form-group">
				<label for="estado">Estado de conservação:</label>
					<select id="st" name="filtros[status]" class="form-control">
					<option></option>
					<option value="0">Ruim</option>
					<option value="1">Regular</option>
					<option value="2">Bom</option>
					<option value="3">Ótimo</option>
					</select>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-info" value="Buscar">
				</div>
			</form>
		</div>
		<div class="col-sm-9"> 
			<h4>Últimos Anúncios</h4>
			<table class="table table-striped table-anuncio">
				<tbody>
					<?php foreach($anuncios as $anuncio): ?>
					<tr>
						<td style="width:60px !important;">
							<?php if(!empty($anuncio['url'])): ?>
								<img src="images/anuncios/<?php echo $anuncio['url']; ?>" class="imgAnuncio" border="0">
							<?php else: ?>
								<img src="images/anuncios/default.jpg" class="imgAnuncio" border="0">	
							<?php endif; ?>	
						</td>
						<td>						
							<a href="produto.php?id=<?php echo $anuncio['id_anuncio']; ?>"><?php echo $anuncio['titulo']; ?></a><br/>
							<?php echo $anuncio['cat']; ?>
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
