<!DOCTYPE html>
<html>
<%@ page import="pucebuy.Categoria" %>
<%@ page import="pucebuy.Usuario" %>
<head>
    <meta name="layout" content="main" />
    <title>Editar Artículo</title>
</head>
<body>

<a href="#edit-articulo" class="visually-hidden-focusable" tabindex="-1">
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

<div id="edit-articulo" class="container">
    <h1 class="mb-4 text-primary">
        Editar Artículo
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

    <g:form resource="${this.articulo}" method="PUT" class="row g-3 needs-validation">

        <g:hiddenField name="version" value="${this.articulo?.version}" />

        <!-- Nombre -->
        <div class="col-md-6">
            <label for="nombre" class="form-label fw-bold">Nombre</label>
            <g:textField name="nombre" value="${articulo?.nombre}" class="form-control" required=""/>
        </div>

        <!-- Precio -->
        <div class="col-md-6">
            <label for="precio" class="form-label fw-bold">Precio</label>
            <g:textField name="precio" value="${articulo?.precio}" class="form-control" required=""/>
        </div>

        <!-- Estado -->
        <div class="col-md-6">
            <label for="estado" class="form-label fw-bold">Estado</label>
            <g:select name="estado"
                      from="${['ACT':'Activo', 'INA':'Inactivo', 'NUE':'Nuevo']}"
                      optionKey="key"
                      optionValue="value"
                      value="${articulo?.estado}"
                      class="form-select" />
        </div>

        <!-- Categoría -->
        <div class="col-md-6">
            <label for="categoria" class="form-label fw-bold">Categoría</label>
            <g:select name="categoria.id"
                      from="${Categoria.list()}"
                      optionKey="id"
                      optionValue="nombre"
                      value="${articulo?.categoria?.id}"
                      class="form-select" />
        </div>

        <!-- Usuario -->
        <div class="col-md-6">
            <label for="usuario" class="form-label fw-bold">Usuario</label>
            <g:select name="usuario.id"
                      from="${Usuario.list()}"
                      optionKey="id"
                      optionValue="nombre"
                      value="${articulo?.usuario?.id}"
                      class="form-select" />
        </div>

        <!-- Imagen -->
        <div class="col-md-6">
            <label for="imagen" class="form-label fw-bold">Imagen (URL)</label>
            <g:textField name="imagen" value="${articulo?.imagen}" class="form-control" />
        </div>

        <!-- Botón guardar -->
        <div class="col-12 mt-4">
            <button type="submit" class="btn btn-primary">
                <i class="bi bi-save"></i> Actualizar
            </button>
        </div>

    </g:form>
</div>

</body>
</html>
