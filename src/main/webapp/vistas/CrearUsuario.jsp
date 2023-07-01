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
  </head>
  <body>
    <%@ include file="NavBar.jsp" %>

    <div
      class="container-fluid pt-3 crear-usuario"
    >
      
      <div class="container form-container col-sm-8 col-lg-12 col-xs-12 d-flex justify-content-around align-items-center pb-5">
      <h1 class="display-3 mb-3 col-4 text-center titulo-crear-usuario">
        Ingresar Datos
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
            <label for="tipo" class="form-label col">Tipo</label>
            <textarea
              class="form-control col"
              name="tipo"
              rows="5"
              placeholder="Ingrese detalles"
              required
            ></textarea>
          </div>
          
          <button type="submit" class="btn btn-dark col-4 align-self-center border border-light">Enviar</button>
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
