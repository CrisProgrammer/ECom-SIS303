<?php
/* Connect To Database*/
	require_once ("../inicio.php");
	if(isset($_POST['letra'])){$letra = $_POST['letra'];} else {$letra="%";};
if(isset($_POST['activo'])){$activo = $_POST['activo'];}else{$activo="%";};
if(isset($_POST['linea'])){$linea = $_POST['linea'];}else {$linea="%";};
$numrows=4;
//$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
	$tables="im_productos as p, im_lineas as m";
	$campos="*";
	$sWhere=" p.id_linea=m.id_linea AND p.nombre like '".$letra."%' AND m.id_linea like '".$linea."' AND p.accion_terapeutica LIKE '".$activo."' AND inicio_promocion <= now() AND fin_promocion >= now() "; 

    $sql="SELECT $campos FROM  $tables where $sWhere ";
    echo $sql;
	$query = mysqli_query($con,$sql);
	$fila=0;
	echo "<lu>";
	while($row = mysqli_fetch_assoc($query)){	
          $fila++;
            $id =  $row['id'];
            $finales++;
            //Datos de productos
            $nombre = utf8_encode($row['nombre']);
            $accion_terapeutica =  utf8_encode($row['accion_terapeutica']);
            $ubicacion =  $row['ubicacion'];
            $estado  =  $row['estado'];
			$imagen  =  "../".$row['imagen'];
			$precio = $row['precio'];
			$precio_rebajado = $row['precio_rebajado'];
            echo '<li><a href="'.$ubicacion.'" target="_blank">'.$nombre.' <img width="80px" src="'.$imagen.'"></img></a><br><a>Precio: Bs.<del>'.$precio.'</del> '.$precio_rebajado.'</a></li>';
        } /* cierre del while */
    
        echo "</lu>";
        $inicios=$offset+1;
        $finales+=$inicios -1;

        //} /* cierre del if de paginacion */
    //}/* cierre del action */?>
echo "hola mundo!!";
?>