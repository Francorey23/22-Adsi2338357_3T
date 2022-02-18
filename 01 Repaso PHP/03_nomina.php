<?php 

// nombres, documento, salario, fecha_ingreso, clave

//dias trabajados - salario minimo

$vr_nombres = 'Juan Perez';
$vr_documento = 1001234567;
$vr_fecha_ingreso = date('Y-m-d');
$vr_salario = 2000000;
$vr_dias_trabajados = 27;

$vr_dia_salario = $vr_salario/30;
$vr_calcular_salario = $vr_dia_salario * $vr_dias_trabajados;
echo "su salrio es de: ". number_format($vr_calcular_salario,2);
echo "<br>";
if ($vr_salario == 1000000) {
    echo "su prestamo es de: $5.000.000.oo";
}elseif($vr_salario == 2000000){
    echo "su prestamo es de: $7.000.000.oo";
}





?>