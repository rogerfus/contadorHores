<!DOCTYPE html>
<html>
<head>
	<title>Contador d'hores</title>
</head>
<body>
<div style="border:1px solid black;">
<table>
	<div style="width: 50%; float: left;">
		<h3>zona visualización</h3><br>
		<?php 
		include "conexio.php";
		$sql = "SELECT * FROM `tbl_hores`";
		$hores=mysqli_query($conexion, $sql);
    if (mysqli_num_rows($hores) != 0){
    $contador = 0;
    echo "<table><tr><td><h4>Dia</h4></td><td><h4>Horari</h4></td><td><h4>Hores Extres</h4></td></tr>";
        while ($hora = mysqli_fetch_array($hores)) {
        $dia = $hora['hor_dia'];
        $horari = $hora['hor_horari'];
        $hExtres = $hora['hor_horesExtres'];
        $contador = $contador + $hExtres;
        echo "
        	<tr><td>$dia</td><td>$horari</td><td>$hExtres</td></tr>

        ";
        }
        echo "<tr><td><h3>TOTAL D'HORES</h3></td><td><h3>$contador</h3></td></tr>";
        echo "</table>";
    }
		?>
	</div>
	<div style="width: 50%; float: right;">
		<h3>zona introducción</h3>
		<form action="introducir.php">
			<input type="date" name="dia" placeholder="Dia" required><br>
			<input type="text" name="horari" placeholder="Horari" required><br>
			<input type="number" name="horesExtres" placeholder="Hores extres" step="1" min="1" required><br>
			<input type="submit" name="Enviar">
		</form>
	</div>
</table>
	</div>
</body>
</html>