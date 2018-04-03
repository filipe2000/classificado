<?php
 class Anuncios
 {
 	public function getTotalAnuncios($filtros)
 	{
 		global $pdo;
 		$filtrosString=array(' 1=1 ');
 		if (!empty($filtros['id_cat']) || !isset($filtros['id_cat'])) 
 		{
 			$filtrosString[]='a.id_cat = :id_cat';
 		}
 		if (!empty($filtros['valor']) || !isset($filtros['valor'])) 
 		{
 			$filtrosString[]='a.valor BETWEEN :valor1 AND :valor2';
 		}
 		if (!empty($filtros['status']) || !isset($filtros['status'])) 
 		{
 			$filtrosString[]='a.status= :status';
 		}
 		//prepare
 		$sql=$pdo->prepare("select count(*) as c from tb_anuncio a where "
 							.implode(" AND ", $filtrosString));
 		//bind values
 		if (!empty($filtros['id_cat']) || !isset($filtros['id_cat'])) 
	 		{
	 			$sql->bindValue(':id_cat', $filtros['id_cat']);
	 		}
	 		if (!empty($filtros['valor']) || !isset($filtros['valor'])) 
	 		{
	 			$valor=explode('-', $filtros['valor']); 			
	 			$v0= $valor[0];
	 			$v1= $valor[1]; 			
	 			$sql->bindValue(':valor1', $v0);
	 			$sql->bindValue(':valor2', $v1); 			
	 		}
	 		if (!empty($filtros['status']) || !isset($filtros['status'])) 
	 		{
	 			$sql->bindValue(':status', $filtros['status']); 			
	 		}

 		$sql->execute();
 		$row=$sql->fetch();
 		return $row['c'];
 	}
 	public function getUltimosAnuncios($p, $qtd, $filtros)
 	{
 		global $pdo;
 		//n de pg multiplicado pela qtd a exibir
 		$offsetpg=($p-1)* $qtd;
 		$array= array();
 		//1=1 para Where sem parametros, para retornar tudo
 		$filtrosString=array(' 1=1 ');
 		if (!empty($filtros['id_cat']) || !isset($filtros['id_cat'])) 
 		{
 			$filtrosString[]='a.id_cat = :id_cat';
 		}
 		if (!empty($filtros['valor']) || !isset($filtros['valor'])) 
 		{
 			$filtrosString[]='a.valor BETWEEN :valor1 AND :valor2';
 		}
 		if (!empty($filtros['status']) || !isset($filtros['status'])) 
 		{
 			$filtrosString[]='a.status= :status';
 		}

 		try 
 		{ 			
	 		$sql=$pdo->prepare("select *, 
	 			(select i.url from tb_imagens i where i.id_anuncio=a.id_anuncio limit 1) as url, 
	 			(select c.nome_cat from tb_categoria c where c.id_cat=a.id_cat) as nome_cat 
	 			from tb_anuncio a 
	 			where "
	 			.implode(' AND ', $filtrosString).
	 			" ORDER BY a.id_anuncio desc limit $offsetpg, $qtd");

	 		if (!empty($filtros['id_cat']) || !isset($filtros['id_cat'])) 
	 		{
	 			$sql->bindValue(':id_cat', $filtros['id_cat']);
	 		}
	 		if (!empty($filtros['valor']) || !isset($filtros['valor'])) 
	 		{
	 			$valor=explode('-', $filtros['valor']); 			
	 			$v0= $valor[0];
	 			$v1= $valor[1]; 			
	 			$sql->bindValue(':valor1', $v0);
	 			$sql->bindValue(':valor2', $v1); 			
	 		}
	 		if (!empty($filtros['status']) || !isset($filtros['status'])) 
	 		{
	 			$sql->bindValue(':status', $filtros['status']); 			
	 		}
	 		
	 		$sql->execute();
	
	 		if ($sql->rowCount()>0)
	 		{	 		
	 		$array=$sql->fetchAll();
	 		
	 		}

 		} catch (PDOException $e) {
 			echo $e;
 		}
 		return $array;
 	}

 	public function getMeusAnuncios()
 	{
 		global $pdo;
 		$array= array();
 		$sql=$pdo->prepare("
 			select *,
 			(select tb_imagens.url from tb_imagens 
 			where tb_imagens.id_anuncio=tb_anuncio.id_anuncio limit 1) as url 
 			from tb_anuncio where id_user=:id_user order by id_anuncio desc");
 		$sql->bindValue(":id_user", $_SESSION['cLogin']);
 		$sql->execute();

 		if ($sql->rowCount()>0)
 		{
 		$array=$sql->fetchAll();
 		}
 		return $array;
 	}
 	public function getPdfUltimosAnuncios($id_cat,$valor,$status)
 	{	
 		global $pdo; 		
 		$array= array();
 		//1=1 para Where sem parametros, para retornar tudo
 		$filtrosString=array(' 1=1 ');
 		if (!empty($id_cat) || !isset($id_cat)) 
 		{
 			$filtrosString[]='a.id_cat = :id_cat';
 		}
 		if (!empty($valor) || !isset($valor)) 
 		{
 			$filtrosString[]='a.valor BETWEEN :valor1 AND :valor2';
 		}
 		if (!empty($status) || !isset($status)) 
 		{
 			$filtrosString[]='a.status= :status';
 		}

 		try 
 		{ 			
	 		$sql=$pdo->prepare("select *, 
	 			(select i.url from tb_imagens i where i.id_anuncio=a.id_anuncio limit 1) as url, 
	 			(select c.nome_cat from tb_categoria c where c.id_cat=a.id_cat) as nome_cat 
	 			from tb_anuncio a 
	 			where "
	 			.implode(' AND ', $filtrosString).
	 			" ORDER BY a.id_anuncio desc");

	 		if (!empty($id_cat) || !isset($id_cat) )
	 		{
	 			$sql->bindValue(':id_cat', $id_cat);
	 		}
	 		if (!empty($valor) || !isset($valor) )
	 		{
	 			$val=explode('-', $valor); 			
	 			$v0= $val[0];
	 			$v1= $val[1]; 			
	 			$sql->bindValue(':valor1', $v0);
	 			$sql->bindValue(':valor2', $v1); 			
	 		}
	 		if (!empty($status) || !isset($status) )
	 		{
	 			$sql->bindValue(':status',$status); 			
	 		}
	 		
	 		$sql->execute();
	
	 		if ($sql->rowCount()>0)
	 		{	 		
	 		$array=$sql->fetchAll();
	 		
	 		}

 		} catch (PDOException $e) {
 			echo $e;
 		}
 		return $array;
 	}

 /*	public function getAllAnuncios()
 	{
 		global $pdo;
 		$array= array();
 		$sql=$pdo->prepare("select *, 
	 			(select i.url from tb_imagens i where i.id_anuncio=a.id_anuncio limit 1) as url, 
	 			(select c.nome_cat from tb_categoria c where c.id_cat=a.id_cat) as nome_cat 
	 			from tb_anuncio a order by a.id_anuncio desc"); 		
 		$sql->execute();
 		if ($sql->rowCount()>0) 		{
 		$array=$sql->fetchAll();
 		}
 		return $array;
 	}*/

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
public function updateAnuncio($titulo,$categoria,$valor,$descr,$status,$fotos,$id)
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

	if (count($fotos)>0)
	{
		for ($i=0; $i < count($fotos['tmp_name']); $i++) 
		{ 
		$tipo=$fotos['type'][$i];//verificar o tipo de arquivo
		if(in_array($tipo, array('image/jpeg','image/png')))
			{					//será salvo somente em jpg
			$tmpname=md5(time().rand(0,9999)).'.jpg';
			move_uploaded_file($fotos['tmp_name'][$i], 'images/anuncios/'.$tmpname)	;

			//redimensionar imagem
			list($width_orig,$height_orig)=getimagesize('images/anuncios/'.$tmpname);
			$ratio=$width_orig/$height_orig;
			$width=500;//máx largura
			$height=500;//max altura
				if($width/$height>$ratio)
				{
					$width=$height*$ratio;
				}else
				{
					$height=$width/$ratio;
				}
			//criar a imagem
			$img=imagecreatetruecolor($width, $height);
				if($tipo=='image/jpeg')
				{
					$orig=imagecreatefromjpeg('images/anuncios/'.$tmpname);
				}elseif($tipo=='image/png')
				{
					$orig=imagecreatefrompng('images/anuncios/'.$tmpname);
				}
			imagecopyresampled($img, $orig, 0, 0, 0, 0, $width, $height, $width_orig, $height_orig);
			imagejpeg($img,'images/anuncios/'.$tmpname,80);

			$sql=$pdo->prepare("insert into tb_imagens set id_anuncio = :id, url = :url");
			$sql->bindValue(':id',$id);
			$sql->bindValue(':url',$tmpname);
			$sql->execute();
			}
		}
	}
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
 		$sql=$pdo->prepare("select *,
 		(select c.nome_cat from tb_categoria c where c.id_cat=a.id_cat) as cat,
 		(select u.tel from tb_user u where u.id_user=a.id_user) as tel
 			from tb_anuncio a where a.id_anuncio=:id");
 		$sql->bindValue(":id", $id);
 		$sql->execute();

 		if ($sql->rowCount()>0)
 		{
 		$array=$sql->fetch();
 		$array['fotos']=array();
		// retornar imagens
 		$sql= $pdo->prepare("select id_imagem,url from tb_imagens where id_anuncio= :id");
 		$sql->bindValue(":id",$id);
 		$sql->execute();

 		if($sql->rowCount()>0)
 		{
 		$array['fotos']= $sql->fetchAll();	
 		}


 		}
 		return $array;
 	}



public function excluirFoto($id)
{
	global $pdo;
	$id_anuncio=0;
	$sql=$pdo->prepare("select id_anuncio from tb_imagens where id_imagem= :id");
	$sql->bindValue(":id",$id);
	$sql->execute();

	if($sql->rowCount()>0)
	{
		$row= $sql->fetch();
		$id_anuncio=$row['id_anuncio'];
		echo $id_anuncio;
	}else
	{echo "sem id_anuncio";}

	 $sql=$pdo->prepare("delete from tb_imagens where id_imagem = :id");
	 $sql->bindValue(":id", $id);
	 $sql->execute();
	 return $id_anuncio;
}


 }//class

?>