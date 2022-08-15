<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

require "../config/conexion.php";

$correo = $_GET['correo'];
$codigo = $_GET['codigo'];
  
class Result {}
    $response = new Result();

    $log = mysqli_query($conexion, "call codigo('".$correo."','".$codigo."')");
  	if($log){
        	    $response->resultado = 'Actualizado';
          	}else{
          	    $response->resultado = 'No se pudo actualizar';
          }

    echo json_encode($response);
?>