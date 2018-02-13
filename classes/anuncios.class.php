<?php
 class Anuncios
 {
 	public function getMeusAnuncios()
 	{
 		global $pdo;
 		$array= array();
 		$sql=$pdo->prepare("
 			select *,
 			(select tb_imagens.url from tb_imagens 
 			where tb_imagens.id_anuncio=tb_anuncio.id_anuncio limit 1) as url 
 			from tb_anuncio where id_user=:id_user");
 		$sql->bindValue(":id_user", $_SESSION['cLogin']);
 		$sql->execute();

 		if ($sql->rowCount()>0)
 		{
 		$array=$sql->fetchAll();
 		}
 		return $array;
 	}

public function addAnuncio($titulo,$categoria,$valor,$descr,$status)
{
global $pdo;
$sql= $pdo->prepare("insert  into tb_anuncio set
					id_user=:id_user,
					id_cat=:id_cat,
					titulo=:titulo,
					descr=:descr,
					valor=:valor,
					status=:status
					")	;
$sql->bindValue(":id_user",$_SESSION['cLogin']);
$sql->bindValue(":id_cat",$categoria);
$sql->bindValue(":titulo",$titulo);
$sql->bindValue(":descr",$descr);
$sql->bindValue(":valor",$valor);
$sql->bindValue(":status",$status);
$sql->execute();
}

 }//class
?>