<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Asesorias S.A - Contacto</title>
    <link href="vistas/css/estilos.css" rel="stylesheet" type="text/css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <nav
      class="navbar navbar-expand-lg navbar-dark"
      style="background-color: #213555"
    >
      <div class="container-fluid">
        <a class="navbar-brand" href="Inicio">Asesorias S.A</a>
        <button
          class="navbar-toggler"
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
          <div class="navbar-nav">
            <a class="nav-link active" aria-current="page" href="Inicio"
              >Inicio</a
            >
            <a class="nav-link" href="Contacto">Contacto</a>
            <a class="nav-link" href="CrearCapacitacion">Crear Capacitacion</a>
          </div>
        </div>
      </div>
    </nav>

    <header class="container-fluid pt-5 contact-header">
      <div
        class="container-fluid title-container text-center d-flex justify-content-center pt-5"
      >
        <h1 class="display-1 titulo-principal titulo-contacto pt-5 px-5">
          Contactanos
        </h1>
      </div>
    </header>

    <div
      class="container-fluid text-center pt-3 about-us row rows-cols-2 justify-content-center"
    >
      <h1 class="display-3 about-title col-lg-6 col-sm-12 my-auto py-auto">
        Llena nuestro formulario!
      </h1>

      <div class="container text-center col-sm-8 col-lg-6 col-xs-12 py-3 my-3">
        <form
          class="d-flex flex-column justify-content-center align-items-center"
        >
          <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input
              type="text"
              class="form-control"
              id="nombre"
              placeholder="Ingrese su nombre"
              required
            />
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input
              type="email"
              class="form-control"
              id="email"
              placeholder="Ingrese su email"
              required
            />
          </div>
          <div class="mb-3">
            <label for="mensaje" class="form-label">Mensaje</label>
            <textarea
              class="form-control"
              id="mensaje"
              rows="5"
              placeholder="Ingrese su mensaje"
              required
            ></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
      </div>
    </div>

    <!-- aqui puede ir parte de contacto-->
    <footer class="container-fluid position-relative text-center my-auto">
      <p>Abpro Modulo 5 - Grupo 3</p>
      <p>
        Integrantes: Gabriel Muñoz - Juan Romero - Fabian Ugalde - Marcelo
        Aceituno
      </p>
    </footer>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
