<?php

	define('DB_HOST','localhost');
	define('DB_USER','ventasdemujer');
	define('DB_PASS','S^1hSuJf1wFu');
	define('DB_NAME','ventasde__wp636_6');
	# conectare la base de datos
    $con=@mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    if(!$con){
        die("imposible conectarse: ".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        die("Conexion fallo: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }

    

?>