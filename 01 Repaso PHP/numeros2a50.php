<?php
$vr_acumulador=0;
$a=2;
do {
echo $a.", ";
$vr_acumulador = $vr_acumulador + $a;

$a+=2;
echo "<br>";
} while ($a <= 50);
echo "el acumulado de numeros es: ".$vr_acumulador;
echo "<br>";

$vr_acumulador=0;
for ($i=2; $i <= 50 ; $i+=2) { 
    echo $i.", ";
    $vr_acumulador = $vr_acumulador + $i;
}
echo "el acumulado de numeros es: ".$vr_acumulador;

foreach ($variable as $key => $value) {
    # code...
}





?>