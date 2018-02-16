<?php require 'config.php';
header('Content-Type: text/html; charset=UTF-8');
 ?>
<!DOCTYPE html>
<html>
<head>

	<title>Classificados</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="js/jquery-3.3.1.js">
	<link rel="stylesheet" type="text/css" href="js/bootstrap.js">
	<link rel="stylesheet" type="text/css" href="js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="js/script.js">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	

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