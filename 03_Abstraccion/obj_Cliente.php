<?php 

require_once("02_class_cliente.php");
//*****crear el objeto o instanciar***
$objCliente = new Cliente(100200100, "Jimena Paredes", "jimena@gmail.com", 2300000);
echo $objCliente->nombres."<br>";
echo $objCliente->fecha_reg."<br>";
echo $objCliente->getCedula()."<br>";
echo $objCliente->getEmail()."<br>";
echo $objCliente->Credito();



?>