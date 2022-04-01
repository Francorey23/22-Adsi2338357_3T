<?php 
    require_once("../Modelo/pasajero.php");

    if (isset($_REQUEST["btn_enviar"])) {
        $modeloPasajero = new Pasajero();
        $nombre = $_POST["nombre"];
        $telefono = $_POST["telefono"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        $modeloPasajero->insertarPasajero($nombre, $telefono, $email, $password);

    }else{
        header('Location: ../Vista/add.php');
    }

?>