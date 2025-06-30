<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Editar Categoría</title>
</head>
<body>

<a href="#edit-categoria" class="visually-hidden-focusable" tabindex="-1">
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
                        Lista de Categorías
                    </g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link text-white" action="create">
                        Nueva Categoría
                    </g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="edit-categoria" class="container">
    <h1 class="mb-4 text-primary">
        Editar Categoría
    </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-info" role="status">${flash.message}</div>
    </g:if>

    <g:hasErrors bean="${this.categoria}">
        <div class="alert alert-danger" role="alert">
            <ul class="mb-0">
                <g:eachError bean="${this.categoria}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                        ${error}
                    </li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:form resource="${this.categoria}" method="PUT" class="row g-3 needs-validation">

        <g:hiddenField name="version" value="${this.categoria?.version}" />

        <!-- Nombre -->
        <div class="col-md-6">
            <label for="nombre" class="form-label fw-bold">Nombre</label>
            <g:textField name="nombre" value="${categoria?.nombre}" class="form-control" required=""/>
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
