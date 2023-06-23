<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - HomePage</title>
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

    <header class="container-fluid pt-5">
      <div
        class="container-fluid title-container text-center d-flex justify-content-center pt-5"
      >
        <h1 class="display-1 titulo-principal pt-5 px-5">Bienvenidos</h1>
      </div>
    </header>

    <div
      class="container-fluid text-center pt-3 about-us"
    >
    <div class="row rows-cols-2 justify-content-center align-items-center">
      <h1 class="display-3 about-title col-lg-6 col-sm-12">¿Quienes somos?</h1>
      <div
        class="descripcion container text-center col-sm-8 col-lg-6 col-xs-12 p-5"
      >
        <div>
          Somos una empresa especializada en la prevencion de riesgos.
          Desarrollamos soluciones integrales Iniciamos con una visita por parte
          de nuestros consultores o una reunión virtual, para realizar un
          diagnóstico y detectar las necesidades de nuestros clientes, y los
          acompañamos hasta la implementación de las soluciones integrales con
          especialistas experimentados en la materia, si se requieren.
        </div>
      </div>
      </div>
    </div>

    <div
      class="servicios container-fluid "
    >
    <div class="justify-content-center px-5 pt-3 row rows-cols-3">
      <div class="container title-container text-center px-5 row col-12">
        <h1 class="display-3 text-center pb-4 titulo-servicios">
          Nuestros Servicios
        </h1>
      </div>

      <div
        class="container row col-xs-3 col-sm-6 col-lg-9 col-xl-12 justify-content-center"
      >
        <div
          class="card text-center mb-3 bg-dark servicio-card text-light mx-3"
          style="width: 18rem"
        >
          <div class="card-body">
            <h5 class="card-title">Resolución</h5>
            <p class="card-text">
              Soluciones integrales Equipos multidisciplinarios
            </p>
            <a href="#" class="btn btn-primary">Más Informacion</a>
          </div>
        </div>
        <div
          class="card text-center mb-3 bg-dark servicio-card text-light mx-3"
          style="width: 18rem"
        >
          <div class="card-body">
            <h5 class="card-title">Gestión</h5>
            <p class="card-text">
              Gestión documental Productos de alta calidad, sencillos y
              legalizados.
            </p>
            <a href="#" class="btn btn-primary">Más Informacion</a>
          </div>
        </div>

        <div
          class="card text-center mb-3 bg-dark servicio-card text-light mx-3"
          style="width: 18rem"
        >
          <div class="card-body">
            <h5 class="card-title">Ventas</h5>
            <p class="card-text">
              Venta de EPP Distribuidores oficiales de VICSA SAFETY.
            </p>
            <a href="#" class="btn btn-primary">Más Informacion</a>
          </div>
        </div>

        <div
          class="card text-center mb-3 bg-dark servicio-card text-light mx-3"
          style="width: 18rem"
        >
          <div class="card-body">
            <h5 class="card-title">Soporte</h5>
            <p class="card-text">
              Soporte legal Descargos legales, apelaciones y asesorías técnicas.
            </p>
            <a href="#" class="btn btn-primary">Más Informacion</a>
          </div>
        </div>
      </div>
      </div>
    </div>
    <!-- aqui puede ir parte de contacto-->
    <%@ include file="footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
