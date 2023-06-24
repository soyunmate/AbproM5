<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - Capacitaciones</title>
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

<!--     <header class="container-fluid capacitacion-header d-flex align-items-center"> -->
<!--       <div -->
<!--         class="container-fluid title-container text-center d-flex justify-content-center" -->
<!--       > -->
<!--         <h1 class="display-1 titulo-principal titulo-capacitacion"> -->
<!--           Portal de Capacitaciones -->
<!--         </h1> -->
<!--       </div> -->
<!--     </header> -->

    <div
      class="container-fluid text-center pt-3 form-container "
    >
      
      <div class="container col-sm-8 col-lg-6 col-xs-12 d-flex flex-column justify-content-center align-items-center pb-3">
      <h1 class="display-3 mb-3">
        Ingresar Capacitacion
      </h1>

        <form
          action="CrearCapacitacion" method="post"
          class="formulario row col-6 justify-content-center"
        >
          <div class="mb-3 row justify-content-center ">
            <label for="rutCliente" class="form-label col">RUT Cliente</label>
            <input
              type="text"
              class="form-control col"
              name="rutCliente"
              placeholder="Ingrese el RUT del cliente"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center ">
            <label for="dia" class="form-label col">Día</label>
            <input
              type="text"
              class="form-control col"
              name="dia"
              placeholder="Ingrese el día"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center ">
            <label for="hora" class="form-label col">Hora</label>
            <input
              type="text"
              class="form-control col"
              name="hora"
              placeholder="Ingrese la hora"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center ">
            <label for="lugar" class="form-label col">Lugar</label>
            <input
              type="text"
              class="form-control col"
              name="lugar"
              placeholder="Ingrese el lugar"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center ">
            <label for="duracion" class="form-label col"
              >Duración (en minutos)</label
            >
            <input
              type="number"
              class="form-control col"
              name="duracion"
              placeholder="Ingrese la duración"
              required
            />
          </div>
          <div class="mb-3 row justify-content-center ">
            <label for="cantidadAsistentes" class="form-label col"
              >Cantidad de Asistentes</label
            >
            <input
              type="number"
              class="form-control col"
              name="cantidadAsistentes"
              placeholder="Ingrese la cantidad de asistentes"
              required
            />
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
