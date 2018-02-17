<?php require 'config.php';
header('Content-Type: text/html; charset=UTF-8');
 ?>
<!DOCTYPE html>
<html>
<head>

	<title>Classificados</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="js/jquery-3.3.1.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>


</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="./" class="navbar-brand">Classificados</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
		<?php if(isset($_SESSION['cLogin']) && !empty($_SESSION['cLogin'])): ?>
			<li><a href="meus-anuncios.php">Meus Anúncios</a></li>
			<li><a href="sair.php">Sair</a></li>
		<?php else: ?>	
			<li><a href="cadastre-se.php">Cadastre-se</a></li>
			<li><a href="login.php">Login</a></li>
			<?php endif; ?>
		</ul>
	</div>
</nav>