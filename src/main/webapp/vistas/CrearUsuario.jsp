<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - Capacitaciones</title>
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
    
    <script defer type="text/javascript" src="vistas/scripts/script.js"></script>
  </head>
  <body>
    <%@ include file="NavBar.jsp" %>

    <div
      class="container-fluid pt-3 crear-usuario"
    >
      
      <div class="container form-container col-sm-8 col-lg-12 col-xs-12 d-flex justify-content-around align-items-center pb-5">
      <h1 class="display-3 mb-3 col-4 text-center titulo-crear-usuario">
        Registrar Nuevo Usuario
      </h1>

        <form
          action="CrearUsuario" method="post"
          class="formulario row col-4 justify-content-center fw-bold"
        >
        
          <div class="mb-3">
            <label for="nombre" class="form-label col">Nombre</label>
            <input
              type="text"
              class="form-control col"
              name="nombre"
              placeholder="Ingrese nombre/titulo"
              required
            />
          </div>
          <div class="mb-3 ">
            <label for="pw">Contraseña</label>
    		<input type="password" class="form-control" id="pw" name="pw" placeholder="Contraseña">
          </div>
          <label for="TipoUsuario">Tipo de Usuario</label>
          <div class="btn-group mb-3" name="TipoUsuario" role="group" data-toggle="buttons" aria-label="Basic radio toggle button group">
			  <input type="radio" value="Cliente" class="btn-check" id="Cliente" name="tipo" autocomplete="off">
			  <label class="btn btn-outline-light btn-dark btn-tipo" for="Cliente">Cliente</label>	
			  <input type="radio" value="Profesional" class="btn-check" id="Profesional" name="tipo" autocomplete="off">
			  <label class="btn btn-outline-light btn-dark btn-tipo" for="Profesional">Profesional</label>
			
			  <input type="radio" value="Administrativo" class="btn-check" id="Administrativo" name="tipo" autocomplete="off">
			  <label class="btn btn-outline-light btn-dark btn-tipo" for="Administrativo">Administrativo</label>
			</div>
			
			<input type="hidden" id="TipoUsuario" name="TipoUsuario">
			
			<div class="mb-3 opcional opt-rut">
            <label for="rut" class="form-label col">Rut</label>
            <input
              type="text"
              class="form-control col extra-field1 "
              name="rut"
              placeholder="Ingrese numero de Rut"
              
            />
          </div>
          
          <div class="mb-3 opcional opt-titulo">
            <label for="titulo" class="form-label col">Titulo</label>
            <input
              type="text"
              class="form-control col extra-field2 "
              name="titulo"
              placeholder="Ingrese titulo"
              
            />
          </div>
          
          <div class="mb-3 opcional opt-area">
            <label for="area" class="form-label col">Area</label>
            <input
              type="text"
              class="form-control extra-field3 col"
              name="area"
              placeholder="Ingrese Area de trabajo"
              
            />
          </div>
		
          
          <button type="submit" class="btn btn-dark btn-enviar-form col-4 align-self-center border border-light">Enviar</button>
        </form>
      
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
