<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Content-Type: application/json');

require "../config/conexion.php";

$pass = md5($_GET['password']);

$registros=mysqli_query($conexion,"SELECT * FROM `users` WHERE `username` = '".$_GET['username']."' AND  `password` = '".$pass."'");

class Result {}
$response = new Result();

    while($row = mysqli_fetch_array($registros)){
        $response->id_rol = $row['id_rol'];
        $response->resultado = 'Conectado';
    } 
    
    if(!$registros){
        $response->resultado = 'Fallo';
    }

echo json_encode($response); // MUESTRA EL JSON GENERADO
?>

