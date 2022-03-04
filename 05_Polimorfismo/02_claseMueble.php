<?php 
    require_once("01_claseProducto.php");

    class Mueble extends Producto {

        public $color;
        public $material;

        public function __construct($vrdescripcion, $vrprecio, $vrcolor, $vrmaterial)
        {
            parent::__construct($vrdescripcion, $vrprecio);
            $this->color = $vrcolor;
            $this->material = $vrmaterial;
        }
        
        

    }//end clase

?>