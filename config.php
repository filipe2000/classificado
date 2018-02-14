<?php
session_start();
global $pdo;
try {
	$pdo=new PDO("mysql:dbname=bd_classificados", "root","root");
} catch (PDOException $e) {
	echo "Erro na conexão - ".$e->getMessage();
	exit;
}

?>