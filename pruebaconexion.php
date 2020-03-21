<?php
$usuario = "root";
$clave = "";
$servidor = "localhost";
$basededatos = "faq";

$conexion = mysqli_connect($servidor, $usuario, $clave) or die ("No se ha podido realizar la conexion");

$db = mysqli_select_db($conexion, $basededatos) or die("Error al conectarnos a la BD");

$consulta = "SELECT * FROM preguntafrecuente";

$resultado = mysqli_query($conexion, $consulta) or die ("Se presento un problema en la consulta");
include ("presentacion.php");

mysqli_close($conexion);
?>