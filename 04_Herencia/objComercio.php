<?php 
    require_once("01_clasePersona.php");
    require_once("02_claseCliente.php");

    //Instancia de la clase persona
    $objPersona = new Persona(20010030,"Andrea Ruiz",32);
    echo "<h2> Llamado a la clase Persona </h2><br>";
    echo "Cedula de la persona: " . $objPersona->getCedula()."<br>";
    echo "Nombres: " . $objPersona->nombre."<br>";
    $objPersona->setCedula(300010020);
    echo "Cedula de la persona: " . $objPersona->getCedula()."<br>";

    //Instancia de la clase Cliente
    $objCliente = new Cliente(21890100,"Juana Paz", 23, 2450000);
    echo "<h2> Llamado a la clase Cliente </h2><br>";
    echo "Cedula: ". $objCliente->getCedula()."<br>";
    echo "Nombre de la persona: ". $objCliente->nombre . "<br>";
    echo "Valor del crédito: ". $objCliente->getCredito();



?>