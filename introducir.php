<?php 
include "conexio.php";
extract($_REQUEST);

$sql = "INSERT INTO `tbl_hores` (`hor_id`, `hor_dia`, `hor_horari`, `hor_horesExtres`) VALUES (NULL, '$dia', '$horari', '$horesExtres');";
mysqli_query($conexion, $sql);
header('Location:index.php');


 ?>