<?php
  header('Access-Control-Allow-Origin: *');
  header('Access-Control-Allow-Credentials: true');
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Accept");
  header('Content-Type: application/json');

require "../config/conexion.php";

$id = $_GET['dato'];

$registros=mysqli_query($conexion,"UPDATE `venta` SET `estado` = '1' WHERE `venta`.`idVenta` = '".$id."'");

class Result {}
$response = new Result();

if ($registros){
    $response->resultado = 'OK';
    $response->mensaje = 'Registro correcto';
}

echo json_encode($response);
?>