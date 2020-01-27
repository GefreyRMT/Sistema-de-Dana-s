<?php 
	
$alert = '';
session_start();
if(!empty($_SESSION['active']))
{
	header('location: sistema/');
}else{

	if(!empty($_POST))
	{
		if(empty($_POST['usuario']) || empty($_POST['clave']))
		{
			$alert = 'Ingrese su usuario y su calve';
		}else{

			require_once "conexion.php";

			$user = mysqli_real_escape_string($conection,$_POST['usuario']);
			$pass = md5(mysqli_real_escape_string($conection,$_POST['clave']));

			$query = mysqli_query($conection,"SELECT * FROM usuario WHERE usuario= '$user' AND clave = '$pass'");
			mysqli_close($conection);
			$result = mysqli_num_rows($query);

			if($result > 0)
			{
				$data = mysqli_fetch_array($query);
				$_SESSION['active'] = true;
				$_SESSION['idUser'] = $data['idusuario'];
				$_SESSION['nombre'] = $data['nombre'];
				$_SESSION['email']  = $data['email'];
				$_SESSION['user']   = $data['usuario'];
				$_SESSION['rol']    = $data['rol'];

				header('location: sistema/');
			}else{
				$alert = 'El usuario o la clave son incorrectos';
				session_destroy();
			}


		}

	}
}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Registro De Productos</title>
    <link rel="shortcut icon" href="imagenes/Lo1.PNG">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/RegistroProd.css">
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/RegistroP.js"></script>
  </head>
</head>
<body>
	<section id="container">
		
		<form action="" method="post">
			
			<h3>REGISTRAR PRODUCTO<a href="catalogo.php"><br><span class="fa fa-home fa-2x "></span></a></h3>
			
			<img src="Imagenes/Lo2.jpg"  width= "100"alt="Login">
			
			<div class="formControl">

				<label for="Proveedor">Proveedor</label>
				<br>   <div>
			            <select name="" id="opc">
				            <option value="1">mini chic</option>
				            <option value="2">Hola BEbis!</option>
				            <option value="3">Pequeño Bloom</option>
				            <option value="4">Baby Flow</option>
			            </select>
			            </div>
			            <br>

			            <label class="">Descripcion: </label>
						<input type="text" placeholder="" required="required" tabindex="1"> 

						<label class="" text-align: center;>Precio: </label>
						<input type="text" placeholder="" required="required" tabindex="1"> 
		
						<label  class="">Fecha: </label>
						<input  type="month">

						<label class="">Cantidad: </label>
						<input type="number" placeholder="" required="required" tabindex="1"> 
				</div>
			<div class="photo">
	            <label for="foto">Foto</label>
                <div class="prevPhoto">
                <span class="delPhoto notBlock">X</span>
                <label for="foto"></label>
                </div>
                <div class="upimg">
                <input type="file" name="foto" id="foto">
                </div>
                <div id="form_alert">
                <input type="submit" value="REGISTRAR">
                </div>
          </div>


		</form>

	</section>
</body>
</html>