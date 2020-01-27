<?php 
    session_start();
    if($_SESSION['rol'] != 1)
    {
        header("location: ./");
    }
    
    include "../conexion.php";  

 ?>

<!DOCTYPE html>
<html>
  <head>	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Productos Danna's</title>
    <link rel="shortcut icon" href="imagenes/Lo1.PNG">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/Catalogo.css">
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/Script.js"></script>
  </head>

<body>

	<section class="menuSuperior">
		<nav>
            
		
			  <img  src="imagenes/Lo2.jpg" alt="" width="150"  >
		      
			<div id="notificacion">
				<ul>


					<li>
						<p > BienvenidoS </p>
					


					<li><a href="muchupAdministrador.html"><span class="fa fa-home fa-2x"></span></a></li>
					
					<li><a href="muchupAdministrador.html"><span class="fa fa-shopping-cart fa-2x"></span></a></li>		
				</ul>
			</div>


			<div id="ingreso">
				<ul>
						
					<li>
						<a href="Index.html"> <span class="fa fa-user fa-2x"></span>  <b>Iniciar Sesion</b>       </a>
					</li>	

				</ul>
			</div>
		</nav>
	</section>
	
	<div class="content">
        <h1> Productos Danna'S</h1>
        <div class="Catalo">
            <div class="Lista">
                <a href="#" class="catal" catt="all"><b>Todo</b></a>
                <a href="#" class="catal" catt="Cuna"><b>Cuna</b></a>
                <a href="#" class="catal" catt="Closer"><b>Closer</b></a>
               
                <a href="#" class="catal" catt="Barril Para Bebe"><b>Barril Para Bebe</b> 
                </a>
                <a href="#" class="catal" catt="Dispensador De Pañales"><b>Dispensador De Pañales</b> 
                </a>
                <a href="#" class="catal" catt="Pañalera De Pared"><b>Pañalera De Pared</b> 
                </a>
                <a href="#" class="catal" catt="Biberon"><b>Biberon</b> 
                </a> 
                <a href="#" class="catal" catt="Lenceria Cama"><b>Lenceria Para Cama</b></a>
                <a href="#" class="catal" catt="Cojin De Cuarto"><b>Cojin De Cuarto</b></a>
                <a href="#" class="catal" catt="Almuada De Cuello"><b>Almuada De Cuello</b> 
                </a>
                <a href="#" class="catal" catt="Pantuflas"><b>Pantuflas</b> 
                </a> 
                
            </div>
            <section class="product">
                <div class="producto" catt="Cuna">
                    <img src="producto/cuna 1.jpg" alt="" >
                    <a href="#"><h1>Cuna </h1>$2.00000</a>
                </div>
                <div class="producto" catt="Cuna">
                    <img src="producto/cunan azu 1.1.jpg" alt="" >
                    <a href="#"><h1>Cuna</h1>$3.000000</a>
                </div>
                <div class="producto" catt="Cuna">
                    <img src="producto/cuna corral.1.3.jpg" alt="" >
                    <a href="#"><h1>Cuna</h1>$2.700000</a>
                </div>


                 <div class="producto" catt="Closer">
                    <img src="producto/closer azu1.1.jpg" alt="" >
                    <a href="DetallesProd.php"><h1>Closer</h1>$10000</a>
                </div>
                 <div class="producto" catt="Closer">
                    <img src="producto/close ros mar 1.1.jpg" alt="" >
                    <a href="#"><h1>Closer</h1>$10000</a>
                </div>
                 <div class="producto" catt="Closer">
                    <img src="producto/closer ros jira 1.1.jpg" alt="" >
                    <a href="#"><h1>Closer</h1>$10000</a>
                </div>


                <div class="producto" catt="Barril Para Bebe">
                    <img src="producto/barril org ro 1.1.jpg" alt="" >
                    <a href="#"><h1>Barril Para Bebe</h1>$500000</a>
                </div>
                <div class="producto" catt="Barril Para Bebe">
                    <img src="producto/barril caf 2.2..jpg" alt="" >
                    <a href="#"><h1>Barril Para Bebe</h1>$150000</a>
                </div>
                <div class="producto" catt="Barril Para Bebe">
                    <img src="producto/Barril organizador 2.1.jpg" alt="" >
                    <a href="#"><h1>Barril Para Bebe</h1>$10000</a>
                </div>


                <div class="producto" catt="Dispensador De Pañales">
                    <img src="producto/dispensador ros 1.1.jpg" alt="" >
                    <a href="#"><h1>Dispensador De Pañales</h1>$90000</a>
                </div>
                <div class="producto" catt="Dispensador De Pañales">
                    <img src="producto/Dispensador  azu 1.1..jpg" alt="" >
                    <a href="#"><h1>Dispensador De Pañales</h1>$50000</a>
                </div>
                <div class="producto" catt="Dispensador De Pañales">
                    <img src="producto/Dispensador de pañales 1.1.jpg" alt="" >
                    <a href="#"><h1>Dispensador De Pañales</h1>$50000</a>
                </div>
                <div class="producto" catt="Dispensador De Pañales">
                    <img src="producto/dispensador 1.jpg" alt="" >
                    <a href="#"><h1>Dispensador De Pañales</h1>$50000</a>
                </div>


                <div class="producto" catt="Pañalera De Pared">
                    <img src="producto/pañalera de pared  azu 1.1.jpg" alt="" >
                    <a href="#"><h1>Pañalera De Pared</h1>$50000</a>
                </div>
                <div class="producto" catt="Pañalera De Pared">
                    <img src="producto/Pañalera de pared  ros 1.1..jpg" alt="" >
                    <a href="#"><h1>Pañalera De Pared</h1>$50000</a>
                </div>
                <div class="producto" catt="Pañalera De Pared">
                    <img src="producto/Pañalera de pared 2.jpg" alt="" >
                    <a href="#"><h1>Pañalera De Pared</h1>$50000</a>
                </div>
                <div class="producto" catt="Pañalera De Pared">
                    <img src="producto/pañalerta 1.jpg" alt="" >
                    <a href="#"><h1>  Pañalera   </h1>$50000</a>
                </div>


                <div class="producto" catt="Biberon">
                    <img src="producto/Bi1.jpg" alt="" >
                    <a href="#"><h1>Biberon</h1>$50000</a>
                </div>
                <div class="producto" catt="Biberon">
                    <img src="producto/Bi2.jpg" alt="" >
                    <a href="#"><h1>Biberon</h1>$50000</a>
                </div>
                <div class="producto" catt="Biberon">
                    <img src="producto/Bi3.jpg" alt="" >
                    <a href="#"><h1>Biberon</h1>$50000</a>
                </div>
                <div class="producto" catt="Biberon">
                    <img src="producto/Bi4.jpg" alt="" >
                    <a href="#"><h1>Biberon</h1>$50000</a>
                </div>


                 <div class="producto" catt="Lenceria Cama">
                    <img src="producto/leceria cama cuna 1.1.jpg" alt="" >
                    <a href="#"><h1>Lenceria Cama</h1>$3.800000</a>
                </div>
                <div class="producto" catt="Lenceria Cama">
                    <img src="producto/lenceria cama cuna 2.2,jpg.jpg" alt="" >
                    <a href="#"><h1>Lenceria Cama</h1>$1.000000</a>
                </div>


                  <div class="producto" catt="Cojin De Cuarto">
                    <img src="producto/cojin cuarto 1.1.jpg" alt="" >
                    <a href="#"><h1>Cojin De Cuarto</h1>$1.000000</a>
                </div>
                 <div class="producto" catt="Cojin De Cuarto">
                    <img src="producto/cojin bb 1.1..jpg" alt="" >
                    <a href="#"><h1>Cojin De Cuarto</h1>$1.000000</a>
                </div>
                 <div class="producto" catt="Cojin De Cuarto">
                    <img src="producto/cojin bb azu 1.1.jpg" alt="" >
                    <a href="#"><h1>Cojin De Cuarto</h1>$1.000000</a>
                </div>


                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 1.jpg" alt="" >
                    <a href="#"><h1>Almuada De Cuello</h1>$50000</a>
                </div>
                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 2.jpg" alt="" >
                    <a href="#"><h1>Almuada De Cuello</h1>$50000</a>
                </div>
                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 3.jpg" alt="" >
                    <a href="#"><h1>Almuada De Cuello</h1>$9000</a>
                </div>
                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 4.jpg" alt="" >
                    <a href="#"><h1>Almuada De Cuello</h1>$25000</a>
                </div>
                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 5.jpg" alt="" >
                    <a href="#"><h1>Biberon</h1>$10000</a>
                </div>
                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 6.jpg" alt="" >
                    <a href="#"><h1>Almuada De Cuello</h1>$10000</a>
                </div>
                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 7.jpg" alt="" >
                    <a href="#"><h1>Almuada De Cuello</h1>$10000</a>
                </div>
                <div class="producto" catt="Almuada De Cuello">
                    <img src="producto/almuada de cuello 8.jpg" alt="" >
                    <a href="#"><h1>Almuada De Cuello</h1>$10000</a>
                </div>
                <div class="producto" catt="Pantuflas">
                    <img src="producto/pantuflas ros1.1.jpg" alt="" >
                    <a href="#"><h1>Pantuflas</h1>$10000</a>
                </div>
                <div class="producto" catt="Pantuflas">
                    <img src="producto/pantuflas azu 1.1.jpg" alt="" >
                    <a href="#"><h1>Pantuflas</h1>$10000</a>
                </div>
            </section>
        </div>
    </div>


        
    </body>
</html>