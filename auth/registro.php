<?php
  header('Access-Control-Allow-Origin: *');
  header('Access-Control-Allow-Credentials: true');
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Accept");
  header('Content-Type: text/html');
  
  require "../config/conexion.php";

  $json = file_get_contents('php://input');

  $params = json_decode($json);
  
  class Result {}
  $response = new Result();
  
  $pass = MD5($params->password);

  $validar=mysqli_query($conexion,"SELECT * FROM `users` WHERE `username` = '".$params->username."'");
  if ($reg=mysqli_fetch_array($validar)){
    $response->resultado = 'Error';
    $response->message = 'El correo ya existe';
  }else{
  $registros = mysqli_query($conexion,"INSERT INTO `users` (`id_user`, `username`, `password`, `estado`, `edad`, `apellidos`, `nombres`, `telefono`, `codigo`, `id_rol`)
  VALUES (NULL, '".$params->username."', '".$pass."', '1', '".$params->edad."', '$params->apellidos', '".$params->nombres."',
  '".$params->telefono."', 'web123', '1')");
    if ($registros){
      $response->resultado = 'OK';
      $response->message = 'Registrado';
    }else{
      $response->resultado = 'Error';
      $response->message = 'No se pudo registrar';
    }
  }

  echo json_encode($response);
?>
