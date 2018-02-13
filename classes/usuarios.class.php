<?php
class Usuarios
{
	public function cadastrar($nome,$email,$senha,$tel)
	{	
		global $pdo;
		$sql=$pdo->prepare("select id_user from tb_user
			where email= :email");
		$sql->bindValue(":email",$email);
		$sql->execute();

		if ($sql->rowCount()==0) 
		{
		$sql=$pdo->prepare("insert into tb_user set nome = :nome, email= :email, senha = :senha, tel= :tel");
		$sql->bindValue(":nome",$nome);
		$sql->bindValue(":email",$email);
		$sql->bindValue(":senha",md5($senha));
		$sql->bindValue(":tel",$tel);
			$sql->execute();
			return true;
		}else
		{
			return false;
		}
	}//cadastrar

	public function login($email,$senha)
	{
		global $pdo;

		$sql= $pdo->prepare("select id_user from tb_user
			where email = :email and senha = :senha");
		$sql->bindValue(":email",$email);
		$sql->bindValue(":senha",md5($senha));
		$sql->execute();

		if ($sql->rowCount()>0) 
		{
			$dado=$sql->fetch();
			$_SESSION['cLogin']=$dado['id_user'];
		return true;	
		}else
		{
			return false; 
		}
	}
}
?>