<?php 
    require_once("../../conexion/conexion.php");

    class Despachador extends Conexion{

        public function __construct()
        {
            $this->db = parent::__construct();
        }

        public function insertarDespachador($nombres, $telefono, $horario, $email, $password){
            $tabla = $this->db->prepare("INSERT INTO despachador(nombres, telefono, horario, email, password) 
            VALUES(:nombres, :telefono, :horario, :email, :password)");
            $tabla->bindParam(':nombres', $nombres);
            $tabla->bindParam(':telefono', $telefono);
            $tabla->bindParam(':horario', $horario);
            $tabla->bindParam(':email', $email);
            $tabla->bindParam(':password', $password);

            if ($tabla->execute()) {
                header('Location: ../Vista/index.php');
            }else{
                header('Location: ../Vista/add.php');
            }
        }

    }//End clase
?>