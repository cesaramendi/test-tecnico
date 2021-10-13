<?php
//Recibir peticiones
	//echo "Metodo HTTP:".$_SERVER['REQUEST_METHOD'];
	switch ($_SERVER['REQUEST_METHOD']) {
		case 'POST':
			echo " Pedir cita medica (al paciente) ";
			$_POST = json_decode(file_get_contents('php://input'),true);
			echo " Guardar cita". json_encode($_POST);
			break;
		case 'GET':
			echo " Listar mis citas del día (al médico)";
			break;
		case 'PUT':
			echo " Confirmar cita (al médico)";
			$_PUT = json_decode(file_get_contents('php://input'),true);
			echo " Editar cita". $_GET['id'];
			echo ", informacion a Actualizar". json_encode($_PUT);
			break;
		default:
			// code...
			break;
	}
?>