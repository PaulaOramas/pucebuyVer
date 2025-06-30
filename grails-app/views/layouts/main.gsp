<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title><g:layoutTitle default="Grails"/></title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>

    <asset:link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <asset:stylesheet href="application.css" />
    <g:layoutHead/>
</head>

<body>

<!-- Header vacío -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <!-- Header dejado vacío intencionalmente -->
    </div>
</nav>

<!-- Contenido dinámico -->
<g:layoutBody/>

<!-- Footer vacío -->
<footer class="container-fluid bg-light text-dark mt-5 py-4">
    <div class="row text-center">
        <div class="col-md-12">
            <!-- Footer dejado vacío intencionalmente -->
        </div>
    </div>
</footer>

<!-- Spinner -->
<div id="spinner" class="spinner d-none text-center mt-3">
    <div class="spinner-border text-secondary" role="status">
        <span class="visually-hidden"><g:message code="spinner.alt" default="Loading&hellip;"/></span>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<asset:javascript src="application.js"/>

</body>
</html>
