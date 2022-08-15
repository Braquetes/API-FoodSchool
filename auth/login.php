<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept, *");
header('Content-Type: application/json');

require "../config/conexion.php";

$pass = md5($_GET['password']);

$user = mysqli_real_escape_string($conexion,$_GET['email']);

$registros=mysqli_query($conexion,"SELECT * FROM `users` WHERE `username` = '".$user."' AND  `password` = '".$pass."'");

class Result {}
$response = new Result( );

    while($row = mysqli_fetch_array($registros)){
        $permitted_chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $random = substr(str_shuffle($permitted_chars), 0, 15);
        $response->token = $random;
        $response->id_rol = $row['id_rol'];
        $response->resultado = 'Conectado';
    } 
    
    if($registros->num_rows<1){ 
        $response->resultado = 'Fallo';
    }

echo json_encode($response); // MUESTRA EL JSON GENERADO
?>
