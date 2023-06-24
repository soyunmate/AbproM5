<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.Capacitacion" %>
<%@ page import="Model.CapacitacionProcesos" %>
<%@ page import="java.util.*" %>
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
      class="container-fluid pt-3 about-us login-container justify-content-center"
    >
    <div class="table-container container justify-content-center px-5 ">
    <table class="table table-striped table-dark table-hover" id="tabla-cap">
  <thead>
    <tr>
      
      <th scope="col">Rut Cliente</th>
      <th scope="col">Lugar</th>
      <th scope="col">Dia</th>
      <th scope="col">Hora</th>
      <th scope="col">Duracion</th>
      <th scope="col">Asistentes</th>
    </tr>
  </thead>
  <tbody class="table-group-divider table-secondary">
  		<%
     	 ArrayList<Capacitacion> listado = (ArrayList<Capacitacion>)request.getAttribute("listado");
  		
		for (Capacitacion c : listado) {
			
		%>	
			<tr>
				<td> <%= c.getRutCliente() %> </td>
				<td><%= c.getLugar() %></td>
				<td><%= c.getDia() %></td>
				<td><%= c.getHora() %></td>
				<td><%= c.getDuracion() %></td>
				<td><%= c.getCantAsist() %></td>
			
			</tr>
			
	<%
		}  	
  	%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

<script>
$(document).ready(function() {
    $('#tabla-cap').DataTable();
});
</script>
    
</body>
</html>