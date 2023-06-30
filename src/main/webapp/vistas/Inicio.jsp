<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - HomePage</title>
    <link href="vistas/css/estilos.css" rel="stylesheet" type="text/css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
      crossorigin="anonymous"
    />

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
    />
  
  </head>
  <body>
    <%@ include file="NavBar.jsp" %>

    <header class="container-fluid d-flex align-items-center">
      <div
        class="container-fluid title-container text-center d-flex justify-content-center"
      >
        <h1 class="display-1 titulo-principal" style="opacity: 75%">Bienvenidos</h1>
      </div>
    </header>

    <div
      class="container-fluid text-center pt-3 d-flex justify-content-center"
      id="principal-container"
    >
      
      <div class="card-container container row rows-col-4 align-items-center ">
      		<div class="container presentation-card card-1 col">
      			<p class="display-5 text-center fs-4">¿Quíenes somos?</p>
      			
      			<p>
      				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit arcu ut ornare dignissim. In eget sem quis felis volutpat mollis nec in leo. In ut eros ligula. 
      			</p>
      			<div class="container icon-container  fs-1">
      				<i class="bi bi-twitter"></i>
      				<i class="bi bi-linkedin"></i>
      			</div>
      		
      		</div>
      		<div class="container presentation-card card-2 col">
      			<p class="display-5 text-center fs-4">Nuestra Misión</p>
      			<p>
      				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit arcu ut ornare dignissim. In eget sem quis felis volutpat mollis nec in leo. In ut eros ligula. 
      			</p>
      			<div class="container icon-container fs-1">
      				<i class="bi bi-person-workspace"></i>
      			</div>
      		</div>
      		<div class="container presentation-card card-3 col">
      			<p class="display-5 text-center fs-4">Plan de Pagos</p>
      			<p>
      				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit arcu ut ornare dignissim. In eget sem quis felis volutpat mollis nec in leo. In ut eros ligula. 
      			</p>
      			<div class="container icon-container fs-1">
      				<i class="bi bi-paypal"></i>
      				<i class="bi bi-credit-card-2-back"></i>
      			</div>
      		</div>
      </div>
      
    </div>

    <div
      class="servicios container-fluid text-center"
    >
      <h1 class="display-3"> Nuestros Servicios</h1>
      
      <div id="carouselExampleDark" class="carousel carousel-dark slide mt-5">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner text-light">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="https://images.pexels.com/photos/450035/pexels-photo-450035.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="w-50" alt="...">
      <div class="carousel-caption d-none d-md-block text-light">
        <h5>Gestión empresarial</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="https://images.pexels.com/photos/454507/pexels-photo-454507.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="w-50" alt="...">
      <div class="carousel-caption d-none d-md-block text-light">
        <h5>Organización</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.pexels.com/photos/943096/pexels-photo-943096.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="w-50" alt="...">
      <div class="carousel-caption d-none d-md-block text-light">
        <h5>Soporte Técnico</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
      <img alt="" src="vistas/img/separator-2.png" class="w-25">
    </div>
    <%@ include file="footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
