<?php 

$vr_disco_duro = 8.5;

function conversion_disco($vr_tamano_disco){

    $vr_respuesta = $vr_tamano_disco * 1000000000;

    return number_format($vr_respuesta);

}

echo "El resultado de convertir: ". $vr_disco_duro. "a bytes es: ". conversion_disco($vr_disco_duro);

?>