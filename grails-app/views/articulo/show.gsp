<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Ver Artículo</title>
</head>
<body>

<a href="#show-articulo" class="visually-hidden-focusable" tabindex="-1">
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
                        Lista de Artículos
                    </g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link text-white" action="create">
                        Nuevo Artículo
                    </g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="show-articulo" class="container">
    <h1 class="mb-4 text-primary">
        Ver Artículo
    </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-info" role="status">${flash.message}</div>
    </g:if>

    <div class="mb-4">
        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label fw-bold">Nombre</label>
                <div class="form-control bg-light">${articulo.nombre}</div>
            </div>
            <div class="col-md-6">
                <label class="form-label fw-bold">Precio</label>
                <div class="form-control bg-light">${articulo.precio}</div>
            </div>
            <div class="col-md-6">
                <label class="form-label fw-bold">Estado</label>
                <div class="form-control bg-light">${articulo.estado}</div>
            </div>
            <div class="col-md-6">
                <label class="form-label fw-bold">Categoría</label>
                <div class="form-control bg-light">${articulo.categoria?.nombre}</div>
            </div>
            <div class="col-md-6">
                <label class="form-label fw-bold">Usuario</label>
                <div class="form-control bg-light">${articulo.usuario?.nombre}</div>
            </div>
            <div class="col-md-6">
                <label class="form-label fw-bold">Imagen</label>
                <div class="form-control bg-light">${articulo.imagen}</div>
            </div>
        </div>
    </div>

    <g:form resource="${this.articulo}" method="DELETE" class="d-flex gap-2">
        <g:link class="btn btn-warning" action="edit" resource="${this.articulo}">
            <i class="bi bi-pencil-square"></i>
            Editar
        </g:link>
        <input type="submit" class="btn btn-danger"
               value="Eliminar"
               onclick="return confirm('¿Está seguro de eliminar este artículo?');" />
    </g:form>
</div>

</body>
</html>
