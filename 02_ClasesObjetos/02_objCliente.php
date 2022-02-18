<?php 
    require_once("02_claseCliente.php");

    $objCliente = new Cliente(1000200,"Gerardo Mendez", "gerardo@gmail.com");
    $objCliente->getDatospersonales();
    print_r($objCliente);

?>