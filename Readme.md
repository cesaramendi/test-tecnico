# Api PHP simple de citas medicas

## Objetivo

La API  esta en el archivo "./api/citas.php" consta de tres "endpoints" que tienen diferente metodo lo he separado por un switch:

"Pedir cita medica (al paciente)" es POST, resive un .json y lo guardaria en la base de datos.

"Listar mis citas del día (al médico)" es un GET que recibe el id del Medico y consulta las citas de ese dia.

"Confirmar cita (al médico)" es un PUT que recibe los datos de la cita y el estado a guardar (confirmado=1, rechazado=2).

## Base de datos

La tabla de la base de datos y el diagrama base del mismo estan en la carpeta "./documentos/base de datos".

Esta compuesta por tres tablas:

1. La tabla de los medicos.

2. La tabla de los pacientes.

3. La tabla de las citas es el resultado de la relacion que hay entre los pacientes y los medicos N:M.

## Otras consideraciones

Test de "Pedir cita medica (al paciente)" esta en el archivo "./tests/test_agregar_cita".

Test de "Confirmar cita (al médico)" esta en el archivo "./tests/test_confirmar_cita"