<?php
class Categorias
{
	public function getLista()
	{
		$array=array();
		global $pdo;

		$sql=$pdo->query("select * from tb_categoria");
		if($sql->rowCount()>0)
		{
			$array=$sql->fetchAll();
		}
		return $array;
	}
}

?>
