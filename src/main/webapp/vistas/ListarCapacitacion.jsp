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
<script defer type="text/javascript" src="vistas/scripts/script.js"></script>

</head>
<body>
<%@ include file="NavBar.jsp" %>
<div
      class="container-fluid py-3 lista-capacitaciones"
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
      <th scope="col">Detalle</th>
      <th scope="col"> Acciones</th>
      
   
    </tr>
  </thead>
  	<tbody class="table-group-divider table-secondary">

			<c:forEach items="${listado}" var="cap">
        		<tr>
            		<td>${cap.id}</td>
            		<td>${cap.nombre}</td>
           		 	<td>${cap.detalle}</td>
           		 	<td> 
           		 		<a href="EditarCapacitacion" class="navbar-brand ">
           		 		 <i class="bi bi-pencil-square fs-3"></i>
           		 		 </a> 
           		 		 <a href="EliminarCapacitacion?${cap.id}" class="navbar-brand ">
           		 		 <i class="bi bi-trash fs-3"></i>
           		 		 </a> 
           		 	</td>
           		 	
        		</tr>
    		</c:forEach>
    </tbody>
   </table>
</div>
    	
      
     
      
    </div>


<%@ include file="footer.jsp" %>

	<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
<!--     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<!-- <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script> -->

<!-- <script> 
// $(document).ready(function() {
//     $('#tabla-cap').DataTable();
// });
-->
<!-- </script> -->
    
</body>
</html>