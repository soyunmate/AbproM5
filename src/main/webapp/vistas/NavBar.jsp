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
            <c:if test="${sessionScope.user != null}">
            	<a class="nav-link btn-menu-principal" href="#menu-desplegable" data-bs-toggle="offcanvas" aria-controls="menu-desplegable">Menu Principal</a>
            </c:if>
            <c:if test="${sessionScope.tipo eq 'Cliente'}">
            	<a class="nav-link" href="Contacto" >Contacto</a>
            </c:if>
            
            
            <c:if test="${sessionScope.user == null}">
			
           		 <a class="nav-link" href="Login">Login</a>
			
            </c:if>
          </div>
        </div>
        <div>
        
        
        <div class="dropstart">
  
  	<c:if test="${sessionScope.user == null}">
        <a class="navbar-brand dropdown-toggle" href="#"
        	data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside"
        	data-bs-offset="100,100"
        	
        >
        	<i class="bi bi-person-circle fs-3 contactIcons"></i>
        	</a>
        </c:if>
  <form action="Login" method="post" class="dropdown-menu p-4 dropdown-menu-end dropdown-menu-lg-start" data-bs-theme="dark">
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
    	<button type="submit" class="btn btn-dark border border-light col-4">Entrar</button>
    </div>
  </form>
</div>
        
        
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
    	background-image: url('vistas/css/img/offcanvasimg3.jpeg');
    	background-position: center;
		background-size: cover;
    	height: 100vh;
  		"
    >
  <div class="offcanvas-header text-center">
    <h5 class="offcanvas-title" id="menu-desplegable-Label">Menu Principal: </h5>
    <h5 class="var-tipoUsuario mt-2" id="tipoUsuario"> <% String tipoUsuario = (String)request.getSession().getAttribute("tipo"); %>
    	<%= tipoUsuario != null ? tipoUsuario : ""  %>
    </h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body text-center">
  
		<div class="dropdown admin-view">
	  <button class="btn btn-dark border border-light dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Usuarios
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="CrearUsuario">Registrar Usuarios</a></li>
	    <li><a class="dropdown-item" href="ListarUsuario">Lista Usuarios</a></li>
	    
	  </ul>
	</div>

	<div class="dropdown pt-4 client-view">
	  <button class="btn btn-dark border border-light  dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Capacitaciones
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="CrearCapacitacion">Crear Capacitacion</a></li>
	    <li><a class="dropdown-item" href="ListarCapacitacion">Listar Capacitacion</a></li>
	    
	  </ul>
	</div>

	<div class="dropdown pt-4 prof-view">
	  <button class="btn btn-dark border border-light dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Asesorias
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="#">Crear Asesoria</a></li>
	    <li><a class="dropdown-item" href="#">Lista Asesorias</a></li>
	  </ul>
	</div>
	
	<div class="dropdown pt-4 client-view">
	  <button class="btn btn-dark border border-light dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Asistentes
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="#">Ingresar Asistentes</a></li>
	    <li><a class="dropdown-item" href="#">Listar Asistentes</a></li>
	  </ul>
	</div>
	
		<div class="dropdown pt-4 admin-view">
	  <button class="btn btn-dark border border-light dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Pagos
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="#">Ingresar Pago</a></li>
	    <li><a class="dropdown-item" href="#">Listar Pagos</a></li>
	  </ul>
	</div>
	
	<div class="dropdown pt-4 prof-view">
	  <button class="btn btn-dark border border-light dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Visitas
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="#">Ingresar Visita</a></li>
	    <li><a class="dropdown-item" href="#">Listar Visitas</a></li>
	  </ul>
	</div>
	
	<div class="dropdown pt-4 admin-view">
	  <button class="btn btn-dark border border-light dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Chequeos
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="#">Ingresar Chequeo</a></li>
	    <li><a class="dropdown-item" href="#">Listar Chequeos</a></li>
	  </ul>
	</div>
	
	<div class="dropdown pt-4 client-view">
	  <button class="btn btn-dark border border-light dropdown-toggle col-8" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Administrar Accidentes
	  </button>
	  <ul class="dropdown-menu dropdown-menu-dark">
	    <li><a class="dropdown-item" href="#">Ingresar Accidente</a></li>
	    <li><a class="dropdown-item" href="#">Listar Accidentes</a></li>
	  </ul>
	</div>
	
  </div>
</div>
 

</script>
</body>
</html>