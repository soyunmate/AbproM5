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
      class="container-fluid pt-3 crear-capacitacion"
    >
    
    <div class="container form-container  d-flex flex-wrap justify-content-around align-items-center">
    	<div class ="col-sm-12 col-xl-4 text-center">
    		 <h1 class="display-3 mb-3 text-center titulo-crear-capacitacion">
        		Ingresar Capacitacion
      		</h1>
    	</div>
    	<div class ="col-sm-6 col-xl-4 justify-content-center">
    			
    			<form
          action="CrearCapacitacion" method="post"
          class="formulario row col-4 justify-content-center fw-bold"
        >
        
          <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input
              type="text"
              class="form-control"
              name="nombre"
              placeholder="Ingrese nombre/titulo"
              required
            />
          </div>
          <div class="mb-3 ">
            <label for="detalle" class="form-label">Detalle</label>
            <textarea
              class="form-control"
              name="detalle"
              rows="5"
              placeholder="Ingrese detalles"
              required
            ></textarea>
          </div>
          
          <button type="submit" class="btn btn-dark col-8 align-self-center border border-light">Enviar</button>
        </form>
    			
    	</div>
    </div>
  
    </div>

   <%@ include file="footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
