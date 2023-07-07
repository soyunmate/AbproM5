<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - Capacitaciones</title>
    
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
    <link href="vistas/css/estilos.css" rel="stylesheet" type="text/css" />
    <script defer type="text/javascript" src="vistas/scripts/script.js"></script>
  </head>
  <body>
    <%@ include file="NavBar.jsp" %>

    <div
      class="container-fluid pt-3 crear-usuario"
    >
    
    <div class="container form-container  d-flex flex-xs-column flex-sm-row flex-wrap justify-content-around align-items-center pb-5">
    	<div class ="col-sm-12 col-xl-6 d-flex justify-content-center">
    		<h1 class="display-3 mb-3 text-center titulo-crear-usuario">
        	Registrar Nuevo Usuario
      		</h1>
    	</div>
    	<div class ="col-sm-8 col-xl-6 d-flex justify-content-center">
    		
    		<form
          action="CrearUsuario" method="post"
          class="formulario row col-8 justify-content-center fw-bold"
        >
        <%@ include file="FormBodyUsuario.jsp" %>
        
        </form>
    	
    	</div>
    </div>
     <!--  
      <div class="container form-container col-sm-8 col-lg-12 col-xs-12 d-flex justify-content-around align-items-center pb-5">
      <h1 class="display-3 mb-3 col-4 text-center titulo-crear-usuario">
        Registrar Nuevo Usuario
      </h1>

        <form
          action="CrearUsuario" method="post"
          class="formulario row col-4 justify-content-center fw-bold"
        >
        
        
        </form>
      
      </div>
      -->
    </div>

   <%@ include file="footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
