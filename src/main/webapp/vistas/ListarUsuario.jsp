<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="m5abpro1.Model.Capacitacion" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="java.util.*" %>
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
<script defer type="text/javascript" src="vistas/scripts/script.js"> </script>
</head>
<body>
<%@ include file="NavBar.jsp" %>
<div
      class="container-fluid py-3 lista-usuarios"
      id="principal-container"
    >
    <div class="table-container container col-8 justify-content-center px-5 pt-5 ">
    <table class="table table-striped table-dark table-hover text-center" id="tabla-cap"
    	style="opacity: 75%"
    >
  <thead>
    <tr>
      
      <th scope="col">#Id</th>
      <th scope="col">Nombre</th>
      <th scope="col">Tipo</th>
      <th scope="col"> Acciones</th>
      
   
    </tr>
  </thead>
  	<tbody class="table-group-divider table-secondary">

			<c:forEach items="${listado}" var="user">
        		<tr>
            		<td>${user.id}</td>
            		<td>${user.nombre}</td>
           		 	<td>${user.tipo}</td>
           		 	<td> 
           		 		<a href="EditarUsuario?${user.id}" data-user-id="${user.id}" class="navbar-brand edit-user-btn" data-bs-toggle="modal" data-bs-target="#modalUserForm">
           		 		 <i class="bi bi-pencil-square fs-3"></i>
           		 		 </a> 
           		 		 <a href="EliminarUsuario?${user.id}" data-user-id="${user.id}" class="navbar-brand delete-user-btn" data-bs-toggle="modal" data-bs-target="#modalDeleteForm">
           		 		 <i class="bi bi-trash fs-3"></i>
           		 		 </a> 
           		 	</td>
           		 	
        		</tr>
    		</c:forEach>
    </tbody>
   </table>
</div>

<div class="modal fade" style="color: white" data-bs-theme="dark" id="modalUserForm" tabindex="-1" aria-labelledby="modalUserFormLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Editar datos de usuario</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form 
          action="EditarUsuario" method="post"
          class="formulario row col-10 offset-1 justify-content-center fw-bold"
        	
        >
        <h4 class="hidden">ID Usuario:</h4>
        <h4 class="hidden" id="user-id-form-field"></h4>
        <input type="hidden" name="user-id" id="hidden-user-id" value="">
        <%@ include file="FormBodyUsuario.jsp" %>
        
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" style="color: white" data-bs-theme="dark" id="modalDeleteForm" tabindex="-1" aria-labelledby="modalDeleteFormLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header justify-content-center">
        <h1 class="modal-title fs-5" id="exampleModalLabel">¿Seguro que desea eliminar este usuario?</h1>
<!--         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
      </div>
      <div class="modal-body">
      	
      	<form 
      	  action="EliminarUsuario" method="post"
          class="formulario row justify-content-center fw-bold"
      	>
      	
      
        <h4 class="hidden">ID Usuario:</h4>
        <h4 class="hidden" id="user-id-form-field-delete"></h4>
        <input type="hidden" name="user-id" id="hidden-user-id-delete" value="">
        
        <div class="d-flex justify-content-around">
        	<button type="submit" class="btn btn-danger btn-enviar-form col-4 align-self-center border border-light">Eliminar</button>
      		<button type="button" class="btn btn-dark col-4 border border-light" data-bs-dismiss="modal">Cancelar</button>
      		</div>
      	</form>
      		
      </div>
      <!--  
      <div class="modal-footer">
        
      </div>
      -->
    </div>
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