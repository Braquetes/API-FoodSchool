<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

require "../config/conexion.php";

$correo = $_GET['correo'];
$codigo = $_GET['codigo'];
  
class Result {}
    $response = new Result();

    $log = mysqli_query($conexion, "SELECT * FROM users WHERE username = '".$correo."'");
  	if($log->num_rows > 0){//Encontro un registro igual
        while($row = mysqli_fetch_array($log)){
          if($codigo == $row['codigo']){
             $cod = mysqli_query($conexion, "CALL codigo('".$correo."','".$codigo."')");
        	    $response->resultado = 'Codigo correcto'; 
              $response->rol = $row['id_rol'];
              $response->id = $row['id_user'];
          	}else{
          	    $response->resultado = 'Codigo incorrecto';
          }
        }
    }else{
    	    $response->resultado = 'Eror';
	}

    echo json_encode($response);
?>