<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Crear Categoría</title>
</head>
<body>

<a href="#create-categoria" class="visually-hidden-focusable" tabindex="-1">
    Saltar al contenido…
</a>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light mb-4">
    <div class="container-fluid">
        <a class="navbar-brand" href="${createLink(uri: '/')}">
            Principal
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <g:link class="nav-link" action="index">
                        Lista de Categorías
                    </g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Formulario Crear -->
<div id="create-categoria" class="container">
    <h1 class="mb-4 text-primary">
        Crear Categoría
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

    <g:form resource="${this.categoria}" method="POST" class="row g-3 needs-validation">

        <!-- Nombre -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Nombre</label>
            <g:textField name="nombre" class="form-control" required="" />
        </div>

        <!-- Botón Crear -->
        <div class="col-12 mt-3">
            <button type="submit" class="btn btn-success">Crear</button>
        </div>

    </g:form>
</div>

</body>
</html>
