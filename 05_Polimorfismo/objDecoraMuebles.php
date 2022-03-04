<?php 
    require_once("01_claseProducto.php");
    require_once("02_claseMueble.php");

     $objIndumuebles = new Producto("Mesa Rustica", 3500000);

    echo "Precio del producto: " .number_format($objIndumuebles->getPrecio())."<br>"; 
    echo "Estado: ".Producto::$estado."<br>";
    $objIndumuebles->setEstado("Inactivo");
    echo "Estado: ".Producto::$estado;
    $objIndumuebles->getInfoproducto();

    print_r('<pre>');
    print_r($objIndumuebles);
    print_r('</pre>');
    echo "<br>";
    echo "<h3> Clase Mueble</h3>";

    $objMuebles = new Mueble("Mesa con marco", 2700000, "Amarillo","Pino");
    echo "<br>";
    $objMuebles->getInfoproducto();
    print_r('<pre>');
    print_r($objMuebles);
    print_r('</pre>');


?>