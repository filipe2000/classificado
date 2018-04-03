<?php

require 'config.php';
require 'classes/anuncios.class.php';
$a = new Anuncios();
ob_start();//inicia gravação na memória do conteúdo exibido
//MPDF     https://mpdf.github.io
$bg="#f7f7f7";
$array = array();
$filtro = array();
$id_cat=$_GET['filtro'][0];
$valor=$_GET['filtro'][1];
$status=$_GET['filtro'][2];
$all= $a->getPdfUltimosAnuncios($id_cat,$valor,$status);
?>
<h2 align="center" style="background-color: #ddd;">Relatório Geral de Produtos</h2>
<table width="100%" border="0" >
<thead>
<tr bgcolor="#ddd">
	<th>Foto</th>
	<th>Título</th>
	<th>Categoria</th>
	<th>Estado</th>
	<th>Valor</th>
</tr>
</thead>
	<tbody>
		<?php foreach($all as $anuncio): ?>
		<tr bgcolor=<?php if($bg=='#f7f7f7'){$bg='#fff';echo $bg;}else{ $bg='#f7f7f7';echo $bg;} ?>>
			<td width="70">
				<?php if(!empty($anuncio['url'])): ?>
					<img src="images/anuncios/<?php echo $anuncio['url']; ?>" width="60" border="0">
				<?php else: ?>
					<img src="images/anuncios/default.jpg" width="60" border="0">	
				<?php endif; ?>	
			</td>
			<td>						
				<b><?php echo $anuncio['titulo']; ?></b>				
			</td>
			<td>
				<?php echo $anuncio['nome_cat']; ?>
			</td>
			<td>			
				<?php 
				$st= $anuncio['status']; 
				switch ($st) {
					case '0':
						echo "Ruim";
						break;
					case '1':
						echo "Regular";
						break;
					case '2':
						echo "Bom";
						break;	
					case '3':
						echo "Ótimo";
						break;	
					default:
						
						break;
				}
				?>
			</td>
			<td>R$
			<?php echo number_format($anuncio['valor'],2); ?>
			</td>
		</tr>			
		<?php endforeach; ?>	
	</tbody>
</table>

<?php
//
$rel=ob_get_contents();//grava o conteúdo da mamória na variável
ob_end_clean();//finaliza o objeto gravado e limpa memória
require "vendor/autoload.php";
$mpdf=new \Mpdf\Mpdf();
$mpdf->WriteHTML($rel);
$mpdf->Output('Rel-All-'.date('y.m.d').'-'.rand(0,100).'.pdf','I');



// I = abrir no browser
// D = download
// F = salva no servidor
header("Location: index.php");
?>