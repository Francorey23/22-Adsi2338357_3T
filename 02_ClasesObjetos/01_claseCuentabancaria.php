<?php 

class Cuentabancaria{
    //atributos 
    public $id;
    protected $tipo_de_cuenta;
    public $saldo;
    public $movimientos;
    public $fecha_moviento;
    public $vr_saldo;

    //metodo principal
    function __construct(int $vr_id, string $vr_tipo_cuenta, float $vr_saldo, $vr_movimientos)
    {
        $this->id = $vr_id;
        $this->tipo_de_cuenta = $vr_tipo_cuenta;
        $this->saldo = $vr_saldo;
        $this->movimientos = $vr_movimientos;
        $this->fecha_moviento = date('Y-m-d');

    }//end __constructor

    //metodos secundarios
    //mostrar la informacion de la cuenta
    public function getCuentabancaria(){
        $arrayCuentabancaria = Array(
            'No. Cuenta: ' => $this->id,
            'Tipo de cuenta: ' => $this->tipo_de_cuenta,
            'Saldo: ' => $this->saldo,
            'Movimientos:' => $this->movimientos,
            'Fecha: ' => $this->fecha_moviento,
        );
        return $arrayCuentabancaria;
    }

    public function retirar_dinero(float $retiro){
        if ($this->saldo > $retiro) {
            $vr_saldo = $this->saldo;
            $vr_saldo = $vr_saldo - $retiro;
            $this->saldo = $vr_saldo;
        }else{
            echo "El monto excede el saldo de la cuenta";
        }
         echo "valor del retiro: $retiro "."nuevo saldo: ". $this->vr_saldo;
    }

    //metodo getter para mostrar la informacion de un atributo
    public function getTipocuenta(){
        return $this->tipo_de_cuenta;
    }

    public function setTipocuenta($cuenta){
        $this->tipo_de_cuenta = $cuenta;
    }

}//end clase

?>