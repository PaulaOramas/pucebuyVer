<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Panel Administrador</title>
</head>
<body>

<!-- Contenido principal -->
<div class="container mt-5" role="main">
    <section class="mb-4">
        <h1 class="text-primary mb-3">Bienvenido Administrador</h1>
        <p class="lead">Aquí puedes ver:</p>
    </section>

    <section>
        <ul class="list-group">
            <li class="list-group-item">
                <g:link controller="usuario" action="index">Usuarios</g:link>
            </li>
        </ul>
    </section>
</div>

</body>
</html>
