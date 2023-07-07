<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Asesorias S.A - Login</title>

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
      class="container-fluid pt-5 login-container"
      id="principal-container"
    >
      <div class="container  form-login-container col-sm-8 col-lg-6 col-xs-12 d-flex justify-content-center align-items-start">
        <form
          action="Login" method="post"
          class="formulario form-login col-7 border border-light p-3 bg-dark rounded"
        >
          <div class="mb-3">
            <label for="nombre" class="form-label fw-bold">Usuario</label>
            <input
              type="text"
              class="form-control"
              name="nombre"
              placeholder="Nombre de usuario"
              required
            />
          </div>
          <div class="mb-3">
            <label for="email" class="form-label fw-bold">Contraseña</label>
            <input
              type="password"
              class="form-control"
              name="password"
              placeholder="Ingrese su contraseña"
              required
            />
          </div>
          <div class="text-center">
          <button type="submit" class="btn btn-dark  col-4 align-self-center border border-light">Login</button>
        	</div>
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