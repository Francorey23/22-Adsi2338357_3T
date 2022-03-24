<?php
require_once("../../Template/templateFormulario.php");
?>
<div class="formulario">
    <form action="" method="">
        <div class="mb-3">
            <label>Nombres completos</label>
            <input type="text" name="nombre" class="form-control">
        </div>
        <div class="mb-3">
            <label>Email</label>
            <input type="text" name="email" placeholder="@correo.com" class="form-control">
        </div>
        <div class="mb-3">
            <label>Telefono</label>
            <input type="text" name="telefono" placeholder="Celular.." class="form-control">
        </div>

        <button type="submit" class="btn btn-success">Registrar</button>
    </form>
</div>