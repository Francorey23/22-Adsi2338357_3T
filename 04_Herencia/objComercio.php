<?php 
    require_once("01_clasePersona.php");

    //Instancia de la clase persona
    $objPersona = new Persona(20010030,"Andrea Ruiz",32);
    echo "<h2> Llamado a la clase Persona </h2><br>";
    echo "Cedula de la persona: " . $objPersona->getCedula()."<br>";
    echo "Nombres: " . $objPersona->nombre."<br>";
    $objPersona->setCedula(300010020);
    echo "Cedula de la persona: " . $objPersona->getCedula()."<br>";


?>