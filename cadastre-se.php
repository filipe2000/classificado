<?php require 'pages/header.php' ?>
<div class="container">
<h2>Cadastre-se</h2>
<?php
require 'classes/usuarios.class.php';
$u= new Usuarios();
	if (isset($_POST['nome']) && !empty(($_POST['nome']))) 
	{
	$nome=addslashes($_POST['nome']);
	$email=addslashes($_POST['email'])	;
	$senha=$_POST['senha']	;
	$tel=addslashes($_POST['tel'])	;
		if (!empty($nome) && !empty($email) && !empty($senha)) 
		{
			if($u->cadastrar($nome,$email,$senha,$tel))
			{
			?>
			<div class="alert alert-success"> 
			<strong>Cadastrato com sucesso.</strong>
			<a href="login.php" class="alert-link">Faça o login agora</a></div>
			<?php
			}else
			{
			?>
			<div class="alert alert-warning"> 
			Esse email de usuario ja existe. <a href="login.php" class="alert-link">Faça o login agora</a>
			</div>
			<?php
			}
		}else
		{
			?>
			<div class="alert alert-warning">Preencha todos os campos.</div>
			<?php
		}
	
	}
?>
<form method="POST">
	<div class="form-group">
	<label for="nome">Nome: </label>
	<input type="text" name="nome" id="nome" class="form-conteol">
	</div>
	<div class="form-group">
	<label for="email">E-mail: </label>
	<input type="text" name="email" id="email" class="form-conteol">
	</div>
	<div class="form-group">
	<label for="senha">Senha: </label>
	<input type="password" name="senha" id="senha" class="form-conteol">
	</div>
	<div class="form-group">
	<label for="tel">Telefone: </label>
	<input type="text" name="tel" id="tel" class="form-conteol">
	</div>
	<input type="submit" value="Cadastrar" class="btn btn-default">
</form>
	
</div>
<?php require 'pages/footer.php' ?>