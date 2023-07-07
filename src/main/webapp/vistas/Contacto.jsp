<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - Contacto</title>
    
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
      class="container-fluid contacto"
    >
    <div class="container form-container  d-flex flex-wrap justify-content-around align-items-center">
    	<div class ="col-sm-12 col-xl-4 text-center">
    		<h1 class="display-3 titulo-contacto">
        	¡Llena nuestro formulario!
      		</h1>
    	</div>
    	
    	<div class ="col-sm-6 col-xl-4 justify-content-center">
    		<form
          action="Contacto" method="post"
          class="formulario  justify-content-center fw-bold"
        >
          <div class="mb-3">
            <label for="nombre" class="form-label">Nombre completo</label>
            <input
              type="text"
              class="form-control"
              name="nombre"
              placeholder="Ingrese su nombre"
              required
            />
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Correo Electronico</label>
            <input
              type="email"
              class="form-control"
              name="email"
              placeholder="Ingrese su email"
              required
            />
          </div>
          <div class="mb-3">
            <label for="mensaje" class="form-label">Mensaje</label>
            <textarea
              class="form-control"
              name="mensaje"
              rows="5"
              placeholder="Ingrese su mensaje"
              required
            ></textarea>
          </div>
          <button type="submit" class="btn btn-dark col-4 align-self-center border border-light">Enviar</button>
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
