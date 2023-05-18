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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login - EFECTIV FHARMA</title>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.min.css"> 
	<!-- Menú -->
    <link rel="stylesheet" href="css/style_menu.css">
    <link rel="stylesheet" href="css/style_font.css">
