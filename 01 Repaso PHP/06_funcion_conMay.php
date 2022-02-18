<?php 

//convertir un texto dado de acuerdo a la solicitud a mayusculas o minusculas

$vrTexto = "Centro de Teleinformatica y produccion Industrial";
$vrConvertir = "Minusculas";

 function convertir_texto($convertir, $texto){

    if ($convertir=="Minusculas") {
        $vr_convertir_texto = strtolower($texto);
    }
    elseif ($convertir=="Mayusculas") {
        $vr_convertir_texto = strtoupper($texto);
    }
    return $vr_convertir_texto;

}

echo convertir_texto($vrConvertir, $vrTexto);

?>