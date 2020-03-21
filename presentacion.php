
<h1>Ejemplo de tabla</h1>
<?php

echo "<table>";
echo "<tr><th>Descripcion</th><th>Respuesta</th></tr>";
while ($registro = mysqli_fetch_array( $resultado )) {

	echo "<tr><td>".utf8_encode($registro['descripcion'])."</td><td>".utf8_encode($registro['respuesta'])."</td></tr>";

}
echo "</table>";
?>