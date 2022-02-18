<?php 

    class Persona{

        private $cedula;
        public $nombre;
        public $edad;

        public function __construct($vrcedula, $vrnombre, $vredad)
        {
            $this->cedula = $vrcedula;
            $this->nombre = $vrnombre;
            $this->edad = $vredad;

        }

        //mostrar la información atributo protegido
        public function getCedula(){
            return $this->cedula;
        }
        //volver a asignar la información de un atributo
        public function setCedula($vrcedula){
            $this->cedula = $vrcedula;
        }

        public function getDatospersonales()
    {
        $arrayDatospersonales = array(
            'Cedula: ' => $this->cedula,
            'Nombres:' => $this->nombres,
            'Email: ' => $this->edad,
        );
        return $arrayDatospersonales;
    }

    }
?>