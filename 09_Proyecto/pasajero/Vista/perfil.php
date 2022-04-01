<?php
    require_once("../../Template/templateFormulario.php");
    require_once("../Modelo/pasajero.php");
    //session_start();
    $modeloUsuario = new Pasajero();
    $modeloUsuario->validarsesionPasajero();
    $vernombreUsuario = $modeloUsuario->getnombrePasajero();
    
?>

<div>
    <h2>Bienvenido <?= print_r($vernombreUsuario); ?> </h2>
    <h2><a href="../Controlador/salir.php"> Salir </a> </h2>
</div>