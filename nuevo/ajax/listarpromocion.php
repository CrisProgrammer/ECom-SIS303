<?php
/* Connect To Database*/
	require_once ("inicio.php");

if(isset($_POST['letra'])){$letra = $_POST['letra'];} else {$letra="%";};
if(isset($_POST['activo'])){$activo = $_POST['activo'];}else{$activo="%";};
if(isset($_POST['linea'])){$linea = $_POST['linea'];}else {$linea="%";};
$numrows=4;
//$letra = "A";
//echo "letra=".$letra."<br>principio activo=".$activo."<br>linea=".$linea; 
$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
//if($action == 'ajax'){
//	$query = mysqli_real_escape_string($con,(strip_tags($_REQUEST['query'], ENT_QUOTES)));
//echo $letra; exit;	
	$tables="im_productos as p, im_lineas as m";
	$campos="*";
	$sWhere=" p.id_linea=m.id_linea AND p.nombre like '".$letra."%' AND m.id_linea like '".$linea."' AND p.accion_terapeutica LIKE '".$activo."' AND inicio_promocion<now() AND fin_promocion>now() "; 
//echo "<br>".$sWhere;exit;
/*	$sWhere=" estado <> false and principal <> false";
	$sWhere.=" order by productos.id DESC";*/  //utilizar para pantalla principal
	
	
//	include 'pagination.php'; //include pagination file
	//pagination variables
//	$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
//	$per_page = 10;//intval($_REQUEST['per_page']); //how much records you want to show
//	$adjacents  = 4; //gap between pages after number of adjacents
//	$offset = ($page - 1) * $per_page;
	/*Count the total number of row in your table*/
	$count_query   = mysqli_query($con,"SELECT count(*) AS numrows FROM $tables where $sWhere ");
	if ($row= mysqli_fetch_array($count_query)){$numrows = $row['numrows'];}
	else {echo mysqli_error($con);}
//	$total_pages = ceil($numrows/$per_page);
	//main query to fetch the data
//	$query = mysqli_query($con,"SELECT $campos FROM  $tables where $sWhere LIMIT $offset,$per_page");
	$query = mysqli_query($con,"SELECT $campos FROM  $tables where $sWhere ");
	//loop through fetched data
   
	if ($numrows>0){
		$finales=0;
		$fila = 0;
        ?>
        <lu>
        <?php
		while($row = mysqli_fetch_array($query)){	
            $fila++;
            $id =  $row['id'];
            $finales++;
            //Datos de productos
            $nombre = utf8_encode($row['nombre']);
            $accion_terapeutica =  utf8_encode($row['accion_terapeutica']);
            $ubicacion =  $row['ubicacion'];
            $estado  =  $row['estado'];
			$imagen  =  $row['imagen'];
			$precio = $row['precio'];
			$precio_rebajado = $row['precio_rebajado'];
            echo '<li><a href="'.$ubicacion.'" target="_blank">'.$nombre.' <img width="80px" src="'.$imagen.'"></img></a><br><a>Precio: Bs.<del>'.$precio.'</del> '.$precio_rebajado.'</a></li>';
        } /* cierre del while */
            echo "</lu>";
            $inicios=$offset+1;
            $finales+=$inicios -1;

  /*           echo "<p>Mostrando $inicios al $finales de $numrows registros</p>";
            echo paginate( $page, $total_pages, $adjacents);
   */      
        } /* cierre del if de paginacion */
    //}/* cierre del if de ajax */?>