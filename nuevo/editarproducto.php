<?php
if(isset($_POST['username'])) $user1 = $_POST['username'];else $user1="";
if(isset($_POST['password'])) $pass1 = $_POST['password'];else $pass1="";

    session_start();
    if (!isset($_SESSION['usuario'])) {
        if($user1=="administrador"&&$pass1=="123321"){
            $_SESSION["usuario"] = "admin1";
        }
        else
        {
        header('location: login.php');
        }
    };
    require_once("inicio.php");
    $sqllineas = "SELECT * from im_lineas ORDER BY empresa";
    $res = $con->query($sqllineas);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
        $(document).ready(function(){
        $("#enviar").on("click",function(){
        var dataForm = new FormData(document.getElementById("formulario"));
        alert("aqui llega");
        $.ajax({
            type: 'POST',
            cache: false,
            contentType: false,
            processData: false,
            data: dataForm,
            //url='../wp-content/themes/twentytwentyone/inc/guardaproducto.php';
            url: 'php/guardarproducto.php'
            }).done(function(res){alert(res);
        }).fail(function(){alert("Error al registrar los datos.");})
     });
    });
    </script>
</head>
<body>
    <h1>Registro de Productos</h1>
    <div>
    <form enctype="multipart/form-data" id="formulario">
            <img style="float:right;" alt="" sizes="" srcset="" height="150px" align="right" id="foto">	
            <label for="nombre">Nombre: <input type="text" name="nombre" id="nombre" required ></label><br>
            <label for="accion">Acción terapéutica: <input type="text" name="accion" id="accion" required></label><br>
            <label for="ubicacion">Ubicación (URL): <input type="url" name="ubicacion" id="ubicacion"></label><br>
            <label for="linea">Línea:<select name="linea" id="linea">
                <option value="0">Seleccione una línea</option>
                <?php
                while($row = mysqli_fetch_assoc($res)){
                    $idlinea = $row['id_linea'];
                    $empresa = $row['empresa'];
                    echo '<option value="'.$idlinea.'">'.$empresa.'</option>';
                }
                ?>
            </select></label>
            <br>
            <label for="imagen"class="col-md-1 control-label"> Imagen:</label><br>
            <input type="file" class="form-control" style="max-width: 600px;"name="imagen" id="imagen" />
            <br>
            <label for="precio" class="col-md-3 control-label">Precio en Bs.:</label>
            <input  type="number" step="0.01" class="form-control" name="precio" id="precio" placeholder="0,00" required>
            <br>
            <label for="precio_rebajado" class="col-md-3 control-label">Precio rebajado en Bs.:</label>
            <input  type="number" step="0.01" class="form-control" name="precio_rebajado" id="precio_rebajado" placeholder="0,00" required  >
            <br>
            <br><br>
            <input type="submit" value="Guardar" id="enviar">    <a href="logout.php"><input type="button" value="Salir"></a>

        </form>
    </div>
</body>
</html>
<script>
var loadFile = function(event) {
	var image = document.getElementById('imagen');
	image.src = URL.createObjectURL(event.target.files[0]);
};
</script>
<script>
  
const $seleccionArchivos = document.querySelector("#imagen"),
  $imagenPrevisualizacion = document.querySelector("#foto");

// Escuchar cuando cambie
$seleccionArchivos.addEventListener("change", () => {
  // Los archivos seleccionados, pueden ser muchos o uno
  const archivos = $seleccionArchivos.files;
  // Si no hay archivos salimos de la función y quitamos la imagen
  if (!archivos || !archivos.length) {
    $imagenPrevisualizacion.src = "";
    return;
  }
  // Ahora tomamos el primer archivo, el cual vamos a previsualizar
  const primerArchivo = archivos[0];
  // Lo convertimos a un objeto de tipo objectURL
  const objectURL = URL.createObjectURL(primerArchivo);
  // Y a la fuente de la imagen le ponemos el objectURL
  $imagenPrevisualizacion.src = objectURL;
$imagenPrevisualizacion.style="float:right;border: 2px solid; color: black;"
});
</script>