<?php 
require 'pages/header.php'; 
	if (empty($_SESSION['cLogin']))
	{
?>
	<script type="text/javascript">window.location.href="login.php";</script>
<?php
	exit;
	}

	require 'classes/anuncios.class.php';
	$a=new Anuncios();
	if(isset($_POST['titulo']) && !empty($_POST['titulo']))
	{
		$titulo=addslashes($_POST['titulo']);
		$categoria=addslashes($_POST['categoria']);
		$valor=addslashes($_POST['valor']);
		$descr=addslashes($_POST['descr']);
		$status=addslashes($_POST['status']);

		$a->addAnuncio($titulo,$categoria,$valor,$descr,$status);
		?>
		<div class="alert alert-success">Adicionado com sucesso.</div>
		<?php
	}
	
?>
<div class="container">
	<h2>Meus Anúncios - Adicionar Anúncio</h2>
	<form method="POST" enctype="multipart/form-data">
	<div class="form-group">
	<label for="categoria"> Categoria:</label>
		<select name="categoria" id="categoria" class="form-control">
		<?php	
			require 'classes/categorias.class.php';
			$c= new Categorias();
			$cats=$c->getLista();
			foreach ($cats as $cat):		
		?>
			<option value="<?php echo $cat['id_cat'] ?>">
			<?php echo utf8_encode($cat['nome_cat']); ?>	
			</option>	
			<?php endforeach;
			?>	
		</select>
	</div>
	<div class="form-group">
		<label for="titulo">Titulo:</label>
		<input type="text" name="titulo" id="titulo" class="form-control">
	</div>	
	<div class="form-group">
		<label for="valor">Valor:</label>
		<input type="text" id="valor" name="valor" class="form-control"/>
	</div>
	<div class="form-group">
		<label for="descr">Descrição:</label>
		<textarea class="form-control" name="descr"></textarea>		
	</div>
	<div class="form-group">
		<label for="status" >Status:</label>
		<select id="status" class="form-control" name="status">
		<option value="0">Ruim</option>
		<option value="1">Regular</option>
		<option value="2">Bom</option>
		<option value="3">Ótimo</option>
		</select>
	</div>
	<input type="submit" value="Adicionar" class="btn btn-default">
	</form>
</div>
<?php
 require 'pages/footer.php'; 
?>