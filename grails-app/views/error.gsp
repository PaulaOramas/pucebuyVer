<!doctype html>
<html>
<head>
    <title>
        <g:if env="development">Grails Runtime Exception</g:if>
        <g:else>Error</g:else>
    </title>
    <meta name="layout" content="main">
    <g:if env="development">
        <asset:stylesheet src="errors.css" />
    </g:if>
</head>
<body>

<div class="container mt-5">
    <div class="alert alert-danger">
        <h1 class="text-danger">
            <i class="bi bi-exclamation-triangle-fill"></i>
            <g:if env="development">Error de Ejecución en Grails</g:if>
            <g:else>Ha ocurrido un error</g:else>
        </h1>
    </div>

    <g:if env="development">
        <g:if test="${Throwable.isInstance(exception)}">
            <div class="card card-body bg-light mb-4">
                <g:renderException exception="${exception}" />
            </div>
        </g:if>
        <g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
            <div class="card card-body bg-light mb-4">
                <g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
            </div>
        </g:elseif>
        <g:else>
            <ul class="list-group mb-4">
                <li class="list-group-item">❌ <strong>Exception:</strong> ${exception}</li>
                <li class="list-group-item">📝 <strong>Message:</strong> ${message}</li>
                <li class="list-group-item">📄 <strong>Path:</strong> ${path}</li>
            </ul>
        </g:else>
    </g:if>

    <g:else>
        <div class="alert alert-warning">
            <p>❗ Ha ocurrido un error inesperado.</p>
        </div>
    </g:else>
</div>

</body>
</html>
