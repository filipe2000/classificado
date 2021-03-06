

<?php 

require 'vendor/autoload.php';
require 'pages/header.php' ;
require 'classes/anuncios.class.php';
require 'classes/usuarios.class.php';
require 'classes/categorias.class.php';
$a = new Anuncios();
$u= new Usuarios();
$c= new Categorias();

$log= new Monolog\Logger("error-".time());
$log->pushHandler(new Monolog\Handler\StreamHandler('erros.log',Monolog\Logger::WARNING));
$log->addError("Aviso , erro!");



$filtros = array(
	'id_cat' => '',
	'valor' => '',
	'status' => ''
	);
$id_cat='';
$valor='';
$status='';
if (isset($_GET['filtros']))
{
	$filtros=$_GET['filtros'];	
}

$total_anuncios= $a->getTotalAnuncios($filtros);
$total_usuarios=$u->getTotalUsuarios();


//para paginação
$p=1; 
if(isset($_GET['p']) && !empty($_GET['p']))
{
$p=addslashes($_GET['p']);
}
$qtd=5;	//arredondar total	para maior

$totalpg=ceil($total_anuncios / $qtd);
$anuncios=$a->getUltimosAnuncios($p,$qtd, $filtros);


$cats=$c->getLista();

 ?>
<script type="text/javascript">
$(document).ready(function(){
	$('#id_cat').change(function(){
		$('#frmPesq').submit();
	});
	$('#valor').change(function(){
		$('#frmPesq').submit();
	});
	$('#status').change(function(){
		$('#frmPesq').submit();
	});
});
</script>

<div class="container-fluid container-body">
<div class="jumbotron">
	<h2>Nós temos hoje <?php echo $total_anuncios ?> anuncio(s) 
	</h2>
	<p>E mais de <?php  echo $total_usuarios ?> inscritos</p>
</div>
	<div class="row sub-row">
		<div class="col-sm-3">
			<h4>Pesquisa Avançada</h4>
			<form method="GET" id="frmPesq">
				<div class="form-group">
				<label for="cat">Categoria:</label>
					<select id="id_cat" name="filtros[id_cat]" class="form-control">
					<option></option>
						<?php foreach ($cats as $cat): ?>
						<option value="<?php echo $cat['id_cat']; ?>" 
						<?php echo ($cat['id_cat'] == $filtros['id_cat'])? 'selected=selected':'';  ?>><?php echo utf8_encode($cat['nome_cat']); ?> </option>	
						<?php endforeach ?>
					</select>
				</div>

				<div class="form-group">
				<label for="valor">Preço:</label>
					<select id="valor" name="filtros[valor]" class="form-control">
					<option></option>
					<option value="0-50" 
					<?php echo ($filtros['valor']=='0-50')? 'selected="selected"':'';  ?> >R$ 0 - 50</option>
					<option value="51-100" 
					<?php echo ($filtros['valor']=='51-100')? 'selected="selected"':''; ?>>R$ 51 - 100</option>
					<option value="101-200"
					<?php echo ($filtros['valor']=='101-200')? 'selected="selected"':'';  ?>>R$ 101 - 200</option>
					<option value="201-300" 
					<?php echo ($filtros['valor']=='201-300')? 'selected="selected"':'';  ?>>R$ 201 - 300</option>
					</select>
				</div>

				<div class="form-group">
				<label for="status">Estado de conservação:</label>
					<select id="status" name="filtros[status]" class="form-control">
					<option></option>
					<option value="0"
					<?php echo ($filtros['status']=='0')? 'selected="selected"':'';  ?>>Ruim</option>
					<option value="1" 
					<?php echo ($filtros['status']=='1')? 'selected="selected"':'';  ?>>Regular</option>
					<option value="2" 
					<?php echo ($filtros['status']=='2')? 'selected="selected"':'';  ?>>Bom</option>
					<option value="3" 
					<?php echo ($filtros['status']=='3')? 'selected="selected"':'';  ?>>Ótimo</option>
					</select>
				</div>
				<div class="form-group">
					<?php
					$id_cat=$filtros['id_cat'];
					$valor=$filtros['valor'];
					$status=$filtros['status'];					
					?>	
					
					<input type="submit" class="btn btn-info" value="Buscar" id="btbuscar">
					<a href="relAll.php?filtro[]=<?php echo $id_cat; ?>&
										filtro[]=<?php echo $valor; ?>&
										filtro[]=<?php echo $status;?>" 
					target="_blank" class="btn btn-default" id="btrel">Relatório</a>
				</div>
			</form>
		</div>
		<div class="col-sm-9"> 
		<?php   ?>
			<h4>Últimos Anúncios</h4>
			<table class="table table-striped table-anuncio">
				<tbody>
					<?php foreach($anuncios as $anuncio): ?>
					<tr>
						<td class="imgAnuncio">
							<?php if(!empty($anuncio['url'])): ?>
								<img src="images/anuncios/<?php echo $anuncio['url']; ?>" class="imgAnuncio" border="0">
							<?php else: ?>
								<img src="images/anuncios/default.jpg" class="imgAnuncio" border="0">	
							<?php endif; ?>	
						</td>
						<td>						
							<a href="produto.php?id=<?php echo $anuncio['id_anuncio']; ?>"><?php echo $anuncio['titulo']; ?></a><br/>
							<?php echo $anuncio['nome_cat']; ?>
						</td>
						<td>R$
						<?php echo number_format($anuncio['valor'],2); ?>
						</td>
					</tr>
					<?php endforeach; ?>	
				</tbody>
			</table>
			<?php
				
			?>
			<!-- bootstrap -->
			<ul class="pagination">
				<?php for ($i=1; $i <= $totalpg ; $i++): ?>
				<li 
				class="<?php //marcação do link ativo ,se página=página atual  true:false
						echo($p==$i)?'active':'';?>">
				<a href="index.php?<?php //foi retirado o  p=
				$w=$_GET;//add os valores do GET  em $w
				$w['p']=$i;// add o num da paginação no vetor
				//transforma tudo em URL
				echo http_build_query($w);
				?>"><?php echo $i;?></a></li>
				<?php endfor; ?>
			</ul>
		</div>
	</div>

</div>
<?php 
require 'pages/footer.php';

?>
