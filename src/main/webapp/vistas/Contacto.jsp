<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - Contacto</title>
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

<!--     <header class="container-fluid contact-header d-flex align-items-center"> -->
<!--       <div -->
<!--         class="container-fluid title-container text-center d-flex justify-content-center" -->
<!--       > -->
<!--         <h1 class="display-1 titulo-principal titulo-contacto"> -->
<!--           Contactanos -->
<!--         </h1> -->
<!--       </div> -->
<!--     </header> -->

    <div
      class="container-fluid text-center pt-3 contact-container"
    >
    <div class="container col-sm-8 col-lg-6 col-xs-12 d-flex flex-column justify-content-center align-items-center">
      <h1 class="display-3 mb-3">
        ¡Llena nuestro formulario!
      </h1>

        <form
          class="formulario row col-6 justify-content-center"
        >
          <div class="mb-3 row justify-content-center ">
            <label for="nombre" class="form-label col">Nombre completo</label>
            <input
              type="text"
              class="form-control col"
              id="nombre"
              placeholder="Ingrese su nombre"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center ">
            <label for="email" class="form-label col">Correo Electronico</label>
            <input
              type="email"
              class="form-control col"
              id="email"
              placeholder="Ingrese su email"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center ">
            <label for="mensaje" class="form-label col">Mensaje</label>
            <textarea
              class="form-control col"
              id="mensaje"
              rows="5"
              placeholder="Ingrese su mensaje"
              required
            ></textarea>
          </div>
          <button type="submit" class="btn btn-dark btn-sm col-2">Enviar</button>
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
