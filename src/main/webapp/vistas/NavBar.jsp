<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<nav
      class="navbar navbar-expand-lg navbar-dark  border-bottom border-light"
      style="background-color: black"
    >
      <div class="container-fluid justify-content-between mx-3">
        <a class="navbar-brand" href="Inicio">
        	<i class="bi bi-box-fill fs-2"></i>
        </a>
        <button
          class="navbar-toggler position-absolute end-0"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav container justify-content-center">
            <a class="nav-link active" aria-current="page" href="Inicio"
              >Inicio</a
            >
            <a class="nav-link" href="Contacto" >Contacto</a>
            <a class="nav-link" href="#menu-desplegable" data-bs-toggle="offcanvas" aria-controls="menu-desplegable">Menu Capacitaciones</a>
            
            
            
            
            
            <a class="nav-link" href="CrearCapacitacion">Crear Capacitaciones</a>
            <a class="nav-link" href="ListarCapacitacion">Listar Capacitaciones</a>
            
            <c:if test="${sessionScope.user == null}">
			<%--             <% if(request.getSession().getAttribute("user") == null) {%> --%>
           		 <a class="nav-link" href="Login">Login</a>
			<%--             <% } %> --%>
            </c:if>
          </div>
        </div>
        <div>
        <c:if test="${sessionScope.user == null}">
        <a class="navbar-brand " href="Login">
        	<i class="bi bi-person-circle fs-3 contactIcons"></i>
        	</a>
        </c:if>
        
        <c:if test="${sessionScope.user != null}">
        <a class="navbar-brand" href="Logout">
        	<i class="bi bi-box-arrow-right fs-3 contactIcons"></i>
        </a>
       
        </c:if>
        </div>
      </div>
    </nav>
    
    <div class="offcanvas offcanvas-start text-bg-dark bg-image" tabindex="-1" id="menu-desplegable" aria-labelledby="menu-desplegable-Label"
    	style="
    	background-image: url('https://images.pexels.com/photos/716398/pexels-photo-716398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
    	height: 100vh;
  		"
    >
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="menu-desplegable-Label">Acciones: </h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body ">
<!--   
    <div class="container-fluid boton-menu mx-0 px-0 text-center my-2"
    	style="background-image: linear-gradient(to right bottom, #5b5896, #274c79, #003b55, #042832, #071516)"
    >
    <a href="CrearCapacitacion" class="nav-link">
      Crear Capacitaciones
      </a>
    </div>
    
    <div class="container-fluid boton-menu mx-0 px-0 text-center my-2"
    	style="background-image: linear-gradient(to right bottom, #5b5896, #274c79, #003b55, #042832, #071516)"
    >
      <a href="ListarCapacitacion" class="nav-link">
      Crear Capacitaciones
      </a>
    </div>
    
    <div class="container-fluid boton-menu mx-0 px-0 text-center my-2"
    	style="background-image: linear-gradient(to right bottom, #5b5896, #274c79, #003b55, #042832, #071516)"
    >
      <a href="#" class="nav-link">
      Eliminar Capacitacion
      </a>
    </div>
    -->
  </div>
</div>

</body>
</html>