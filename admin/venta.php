<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Content-Type: application/json');

require "../config/conexion.php";

$id = $_GET['dato'];

if(isset($id)){
    
    mysqli_query($conexion,"INSERT INTO `venta` (`idVenta`, `productos`) VALUES (NULL, '".$id."')");

    class Result {}

    $response = new Result();
    $response->resultado = 'OK';
    $response->mensaje = 'Registro correcto';
  
    echo json_encode($response);

}

?>