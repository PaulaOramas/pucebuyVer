<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Ver Usuario</title>
</head>
<body>

<a href="#show-usuario" class="visually-hidden-focusable" tabindex="-1">
    Saltar al contenido…
</a>

<nav class="navbar navbar-expand-lg navbar-dark mb-4" style="background-color: #212529;">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="${createLink(uri: '/')}">
            Principal
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <g:link class="nav-link text-white" action="index">
                        Lista de Usuarios
                    </g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link text-white" action="create">
                        Nuevo Usuario
                    </g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div id="show-usuario" class="container">
    <h1 class="mb-4 text-primary">
        Ver Usuario
    </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-info" role="status">${flash.message}</div>
    </g:if>

    <div class="mb-4">
        <div class="row g-3">

            <div class="col-md-6">
                <label class="form-label fw-bold">Nombre</label>
                <div class="form-control bg-light">${usuario.nombre}</div>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-bold">Apellido</label>
                <div class="form-control bg-light">${usuario.apellido}</div>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-bold">Email</label>
                <div class="form-control bg-light">${usuario.email}</div>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-bold">Contraseña</label>
                <div class="form-control bg-light">${usuario.contrasena}</div>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-bold">Teléfono</label>
                <div class="form-control bg-light">${usuario.telefono}</div>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-bold">Estado</label>
                <div class="form-control bg-light">${usuario.estado}</div>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-bold">Fecha de Creación</label>
                <div class="form-control bg-light">
                    <g:formatDate date="${usuario.fechaCreacion}" format="yyyy-MM-dd HH:mm:ss" />
                </div>
            </div>

        </div>
    </div>

    <g:form resource="${this.usuario}" method="DELETE" class="d-flex gap-2">
        <g:link class="btn btn-warning" action="edit" resource="${this.usuario}">
            <i class="bi bi-pencil-square"></i>
            Editar
        </g:link>

        <input type="submit" class="btn btn-danger"
               value="Eliminar"
               onclick="return confirm('¿Está seguro de eliminar este usuario?');" />
    </g:form>
</div>

</body>
</html>
