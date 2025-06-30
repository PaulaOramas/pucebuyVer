<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Editar Usuario</title>
</head>
<body>

<a href="#edit-usuario" class="visually-hidden-focusable" tabindex="-1">
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

<div id="edit-usuario" class="container">
    <h1 class="mb-4 text-primary">
        Editar Usuario
    </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-info" role="status">${flash.message}</div>
    </g:if>

    <g:hasErrors bean="${this.usuario}">
        <div class="alert alert-danger" role="alert">
            <ul class="mb-0">
                <g:eachError bean="${this.usuario}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                        ${error}
                    </li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:form resource="${this.usuario}" method="PUT" class="row g-3 needs-validation">

        <g:hiddenField name="version" value="${this.usuario?.version}" />

        <!-- Nombre -->
        <div class="col-md-6">
            <label for="nombre" class="form-label fw-bold">Nombre</label>
            <g:textField name="nombre" value="${usuario?.nombre}" class="form-control" required=""/>
        </div>

        <!-- Apellido -->
        <div class="col-md-6">
            <label for="apellido" class="form-label fw-bold">Apellido</label>
            <g:textField name="apellido" value="${usuario?.apellido}" class="form-control" required=""/>
        </div>

        <!-- Email -->
        <div class="col-md-6">
            <label for="email" class="form-label fw-bold">Email</label>
            <g:field type="email" name="email" value="${usuario?.email}" class="form-control" required=""/>
        </div>

        <!-- Contraseña -->
        <div class="col-md-6">
            <label for="contrasena" class="form-label fw-bold">Contraseña</label>
            <g:passwordField name="contrasena" value="${usuario?.contrasena}" class="form-control" required=""/>
        </div>

        <!-- Teléfono -->
        <div class="col-md-6">
            <label for="telefono" class="form-label fw-bold">Teléfono</label>
            <g:textField name="telefono" value="${usuario?.telefono}" class="form-control" />
        </div>

        <!-- Estado -->
        <div class="col-md-6">
            <label for="estado" class="form-label fw-bold">Estado</label>
            <g:select name="estado"
                      from="${['ACT':'Activo', 'INA':'Inactivo']}"
                      optionKey="key"
                      optionValue="value"
                      value="${usuario?.estado}"
                      class="form-select" />
        </div>

        <!-- Fecha de Creación (solo lectura) -->
        <div class="col-md-6">
            <label class="form-label fw-bold">Fecha de Creación</label>
            <div class="form-control bg-light">
                <g:formatDate date="${usuario?.fechaCreacion}" format="yyyy-MM-dd HH:mm:ss" />
            </div>
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
