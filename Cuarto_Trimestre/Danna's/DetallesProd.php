<?php 
  session_start();
  if($_SESSION['rol'] != 1)
  {
    header("location: ./");
  }
  
  include "../conexion.php";  

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <title>Detalles De Productos </title>
  <link rel="stylesheet" type="text/css" href="css/DetallesProd.css"> <link rel="shortcut icon" href="imagenes/Lo1.PNG">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/Script.js"></script>
  </head>
</head>
<body>
  <section id="container">
  <form action="" method="post">
      <div class="prod">
      <h3 text-align: center;> Detalles De Productos</h3>
      <h4>$20000</h4>
      <a href="catalogo.php"><span class="fa fa-home "></span></a>

      <a href="#"><span class="fa fa-shopping-cart "></span></a>
      </div>
      <img src="Imagenes/Lo2.jpg" width="100" alt="">
    <section>
             <br>
              <div class="slideshow-container"align="center">
                    <div class="mySlides fade" >
                        <img src="producto/closer azu1.1.jpg" style="width:50% height: 20% ">
                        <div class="numbertext">1 / 3</div>           
                    </div>  
                    <div class="mySlides fade"> 
                        <img src="producto/closer azu.2.2.jpg" style="width:50% height:20%">
                        <div class="numbertext">2 / 3</div>          
                    </div>
                    <div class="mySlides fade">
                        <img src="producto/closer azu 2.3.jpg" style="width:50% height: 20% ">
                        <div class="numbertext">3 / 3</div>
                    </div>
                    <div class="flecha">
                        <a class="prev" onclick="plusSlides(-2)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>
                    </div>
                       
                    <div style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span>
                        <span class="dot" onclick="currentSlide(2)"></span>
                        <span class="dot" onclick="currentSlide(3)"></span>
                    </div>
                        <script>
                        var slideIndex = 1;
                        showSlides(slideIndex);
                        
                        function plusSlides(n) {
                        showSlides(slideIndex += n);
                        }
                        
                        function currentSlide(n) {
                        showSlides(slideIndex = n);
                        }
                        
                        function showSlides(n) {
                        var i;
                        var slides = document.getElementsByClassName("mySlides");
                        var dots = document.getElementsByClassName("dot");
                        if (n > slides.length) {slideIndex = 1}    
                        if (n < 1) {slideIndex = slides.length}
                        for (i = 0; i < slides.length; i++) {
                            slides[i].style.display = "none";  
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" active", "");
                        }
                        slides[slideIndex-1].style.display = "block";  
                        dots[slideIndex-1].className += " active";
                        }
                        </script>
                          
                <p>
                
                </p>


            </section> 

<p>CON 2 NIVELES DE ALTURA QUE PUEDES GRADUAR A MEDIDA QUE CRECE TU BEBÉ 
PRIMER NIVEL VA DE RECIEN NACIDO HASTA LOS 7 MESES 
LUEGO BAJAS EL NIVEL PARA QUE TE QUEDE COMO CORRAL DE 7 MESES A 3 AÑOS 
</p>
     <br>
      <div class="alert">
      <input type="submit" value="COMPRAR">
    </div>
    </form>
</section>

</body>
</html>