<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Asesorias S.A - Login</title>
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
      class="container-fluid text-center about-us login-container pt-5"
    >


      <div class="container col-sm-8 col-lg-6 col-xs-12 d-flex justify-content-center">
        <form
          action="Login" method="post"
          class="formulario row col-6 justify-content-center"
        >
          <div class="mb-3 row justify-content-center ">
            <label for="nombre" class="form-label fw-bold">Usuario</label>
            <input
              type="text"
              class="form-control"
              name="nombre"
              placeholder="Ingrese su nombre"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center">
            <label for="email" class="form-label fw-bold">Contraseña</label>
            <input
              type="password"
              class="form-control"
              name="password"
              placeholder="Ingrese su contraseña"
              required
            />
          </div>
          <button type="submit" class="btn btn-dark btn-sm col-2">Login</button>
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