<?php
$num = $_POST["numero1"];
function tabla_multiplicarr($vr_numero)
{

    if ($vr_numero <= 20) {
        for ($i = 0; $i <= 10; $i++) {

            $solucion = $vr_numero * $i;
            echo $vr_numero . "x" . $i . "=" . $solucion;
            echo "<br>";
        }
        return $solucion;
    }
}
echo tabla_multiplicarr($num);
