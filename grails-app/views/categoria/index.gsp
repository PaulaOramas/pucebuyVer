<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Lista de Categorías</title>
</head>
<body>

<a href="#list-categoria" class="visually-hidden-focusable" tabindex="-1">
    Saltar al contenido…
</a>

<!-- Barra de navegación Bootstrap con fondo oscuro -->
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
                        Nueva Categoría
                    </g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Contenido principal -->
<div id="list-categoria" class="container">
    <h1 class="mb-4 text-primary">
        Lista de Categorías
    </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-info" role="alert">${flash.message}</div>
    </g:if>

    <!-- Tabla responsiva con clases Bootstrap -->
    <div class="table-responsive mb-4">
        <table class="table table-hover table-striped table-bordered align-middle text-center">
            <thead class="table-primary">
            <tr>
                <th>Nombre</th>
                <th>Acciones</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${categoriaList}" var="categoria">
                <tr>
                    <td>${categoria.nombre}</td>
                    <td>
                        <g:link controller="categoria" action="show" id="${categoria.id}" class="btn btn-sm btn-info me-1">
                            <i class="bi bi-eye"></i>
                        </g:link>
                        <g:link controller="categoria" action="edit" id="${categoria.id}" class="btn btn-sm btn-warning me-1">
                            <i class="bi bi-pencil-square"></i>
                        </g:link>
                        <g:form controller="categoria" action="delete" id="${categoria.id}" method="DELETE" class="d-inline">
                            <button type="submit" class="btn btn-sm btn-danger"
                                onclick="return confirm('¿Está usted seguro de eliminar esta categoría?');">
                                <i class="bi bi-trash"></i>
                            </button>
                        </g:form>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

    <!-- Paginación centrada -->
    <div class="d-flex justify-content-center">
        <g:paginate total="${categoriaCount ?: 0}" class="pagination" />
    </div>
</div>

</body>
</html>