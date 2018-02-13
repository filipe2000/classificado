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
		$descr=addslashes(utf8_decode($_POST['descr']));
		$status=addslashes($_POST['status']);

		$a->updateAnuncio($titulo,$categoria,$valor,$descr,$status, $_GET['id']);
		?>
		<div class="alert alert-success">Atualizado com sucesso.</div>
		<?php
	}
	if(isset($_GET['id']) && !empty($_GET['id']))
{
	$info= $a->getAnuncio($_GET['id']);
}else
{
	?>
	<script type="text/javascript">window.location.href="meus-anuncios.php";</script>
	<?php
}
?>
<div class="container">
	<h2>Meus Anúncios - Editar Anúncio</h2>
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
			<option value="<?php echo $cat['id_cat'] ?>" 
			<?php echo ($info['id_cat'] == $cat['id_cat'])? 'selected="selected"':'';?>>						
			<?php echo utf8_encode($cat['nome_cat']); ?>	
			</option>	
			<?php endforeach;
			?>	
		</select>
	</div>
	<div class="form-group">
		<label for="titulo">Titulo:</label>
		<input type="text" name="titulo" id="titulo" class="form-control" 
		value="<?php echo $info['titulo'] ?>">
	</div>	
	<div class="form-group">
		<label for="valor">Valor:</label>
		<input type="text" id="valor" name="valor" class="form-control" 
		value="<?php echo $info['valor'] ?>"/>
	</div>
	<div class="form-group">
		<label for="descr">Descrição:</label>
		<textarea class="form-control" name="descr" >
			<?php echo utf8_encode($info['descr']); ?>
		</textarea>		
	</div>
	<div class="form-group">
		<label for="status" >Status:</label>
		<select id="status" class="form-control" name="status">
		<option value="0" <?php echo ($info['status']=='0')?'selected="selected"':''; ?>>Ruim</option>
		<option value="1" <?php echo ($info['status']=='1')?'selected="selected"':''; ?>>Regular</option>
		<option value="2" <?php echo ($info['status']=='2')?'selected="selected"':''; ?>>Bom</option>
		<option value="3" <?php echo ($info['status']=='3')?'selected="selected"':''; ?>>Ótimo</option>
		</select>
	</div>
	<input type="submit" value="Salvar" class="btn btn-default">
	</form>
</div>
<?php
 require 'pages/footer.php'; 
?>