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
	$sql= $pdo->prepare("insert  into tb_anuncio set id_user=:id_user,id_cat=:id_cat,titulo=:titulo,descr=:descr,valor=:valor,status=:status")	;
	$sql->bindValue(":id_user",$_SESSION['cLogin']);
	$sql->bindValue(":id_cat",$categoria);
	$sql->bindValue(":titulo",$titulo);
	$sql->bindValue(":descr",$descr);
	$sql->bindValue(":valor",$valor);
	$sql->bindValue(":status",$status);
	$sql->execute();
}
public function updateAnuncio($titulo,$categoria,$valor,$descr,$status,$id)
 {
	global $pdo;
	$sql= $pdo->prepare("update tb_anuncio set id_user=:id_user,id_cat=:id_cat,titulo=:titulo,descr=:descr,valor=:valor,status=:status 
		where id_anuncio=:id")	;
	$sql->bindValue(":id_user",$_SESSION['cLogin']);
	$sql->bindValue(":id_cat",$categoria);
	$sql->bindValue(":titulo",$titulo);
	$sql->bindValue(":descr",$descr);
	$sql->bindValue(":valor",$valor);
	$sql->bindValue(":status",$status);
	$sql->bindValue(":id",$id);
	$sql->execute();
}
public function excluirAnuncio($id)
{
	global $pdo;

	 $sql=$pdo->prepare("delete from tb_imagens where id_anuncio = :id");
	 $sql->bindValue(":id", $id);
	 $sql->execute();

	 $sql=$pdo->prepare("delete from tb_anuncio where id_anuncio = :id");
	 $sql->bindValue(":id", $id);
	 $sql->execute();
}

public function getAnuncio($id)
 	{
 		global $pdo;
 		$array= array();
 		$sql=$pdo->prepare("
 			select * from tb_anuncio where id_anuncio=:id");
 		$sql->bindValue(":id", $id);
 		$sql->execute();

 		if ($sql->rowCount()>0)
 		{
 		$array=$sql->fetch();
 		}
 		return $array;
 	}

 }//class
?>