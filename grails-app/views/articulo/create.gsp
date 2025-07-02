<%@ page import="pucebuy.Categoria" %>
<%@ page import="pucebuy.Usuario" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Crear Artículo</title>
</head>
<body>

<a href="#create-articulo" class="visually-hidden-focusable" tabindex="-1">
    Saltar al contenido…
</a>

<nav class="navbar navbar-expand-lg navbar-light bg-light mb-4">
    <div class="container-fluid">
        <a class="navbar-brand" href="${createLink(uri: '/')}">
            Principal
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <g:link class="nav-link" action="index">
                        Lista de Artículos
                    </g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="create-articulo" class="container">
    <h1 class="mb-4 text-primary">
        Crear Artículo
    </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-info" role="status">${flash.message}</div>
    </g:if>

    <g:hasErrors bean="${this.articulo}">
        <div class="alert alert-danger" role="alert">
            <ul class="mb-0">
                <g:eachError bean="${this.articulo}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                        ${error}
                    </li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:form resource="${this.articulo}" method="POST" class="row g-3 needs-validation">

        <!-- Nombre -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Nombre</label>
            <g:textField name="nombre" class="form-control" required="" />
        </div>

        <!-- Precio -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Precio</label>
            <g:textField name="precio" class="form-control" required="" />
        </div>

        <!-- Estado -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Estado</label>
            <g:select name="estado"
                      from="${['ACT':'Activo', 'INA':'Inactivo', 'NUE':'Nuevo']}"
                      optionKey="key"
                      optionValue="value"
                      class="form-select" />
        </div>

        <!-- Categoría -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Categoría</label>
            <g:select name="categoria.id"
                      from="${Categoria.list()}"
                      optionKey="id"
                      optionValue="nombre"
                      class="form-select" />
        </div>

        <!-- Usuario -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Usuario</label>
            <g:select name="usuario.id"
                      from="${Usuario.list()}"
                      optionKey="id"
                      optionValue="nombre"
                      class="form-select" />
        </div>

        <!-- Imagen -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Imagen (URL)</label>
            <g:textField name="imagen" class="form-control" />
        </div>

        <!-- Botón Crear -->
        <div class="col-12 mt-3">
            <button type="submit" class="btn btn-success">Crear</button>
        </div>

    </g:form>
</div>

</body>
</html>
