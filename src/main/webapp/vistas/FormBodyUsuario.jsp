<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	
</head>
<body>
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
          
          <c:set var="currentUrl" value="${pageContext.request.requestURL}" />
			<c:if test="${fn:endsWith(currentUrl, '/CrearUsuario.jsp')}">
          
          <div class="mb-3 ">
            <label for="pw">Contraseña</label>
    		<input type="password" class="form-control" id="pw" name="pw" placeholder="Contraseña" required>
          </div>
          
          </c:if>
          <label for="TipoUsuario">Tipo de Usuario</label>
          <div class="btn-group mb-3" name="TipoUsuario" role="group" data-toggle="buttons" aria-label="Basic radio toggle button group">
			  <input type="radio" value="Cliente" class="btn-check" id="Cliente" name="tipo" autocomplete="off" required>
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
<!-- <script defer type="text/javascript" src="vistas/scripts/script.js"> </script> -->
</body>
</html>