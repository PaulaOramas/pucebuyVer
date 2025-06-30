<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Lista de Usuarios</title>
</head>
<body>

<a href="#list-usuario" class="visually-hidden-focusable" tabindex="-1">
    Saltar al contenido…
</a>

<nav class="navbar navbar-expand-lg navbar-dark shadow-sm mb-4" style="background-color: #212529;">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold text-white" href="${createLink(uri: '/')}">
            Principal
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <g:link class="nav-link btn btn-outline-light" action="create">
                        <i class="bi bi-plus-circle"></i>
                        Nuevo Usuario
                    </g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="list-usuario" class="container">
    <h1 class="mb-4 text-primary">
        Lista de Usuarios
    </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-info" role="alert">${flash.message}</div>
    </g:if>

    <div class="table-responsive mb-4">
        <table class="table table-hover table-striped table-bordered align-middle text-center">
            <thead class="table-primary">
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Contraseña</th>
                <th>Teléfono</th>
                <th>Estado</th>
                <th>Fecha Creación</th>
                <th>Acciones</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${usuarioList}" var="usuario">
                <tr>
                    <td>${usuario.nombre}</td>
                    <td>${usuario.apellido}</td>
                    <td>${usuario.email}</td>
                    <td>${usuario.contrasena}</td>
                    <td>${usuario.telefono}</td>
                    <td>${usuario.estado}</td>
                    <td><g:formatDate date="${usuario.fechaCreacion}" format="yyyy-MM-dd HH:mm:ss" /></td>
                    <td>
                        <g:link controller="usuario" action="show" id="${usuario.id}" class="btn btn-sm btn-info me-1">
                            <i class="bi bi-eye"></i>
                        </g:link>
                        <g:link controller="usuario" action="edit" id="${usuario.id}" class="btn btn-sm btn-warning me-1">
                            <i class="bi bi-pencil-square"></i>
                        </g:link>
                        <g:form controller="usuario" action="delete" id="${usuario.id}" method="DELETE" class="d-inline">
                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('¿Estás seguro de eliminar este usuario?');">
                                <i class="bi bi-trash"></i>
                            </button>
                        </g:form>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

    <div class="d-flex justify-content-center">
        <g:paginate total="${usuarioCount ?: 0}" class="pagination" />
    </div>
</div>

</body>
</html>
