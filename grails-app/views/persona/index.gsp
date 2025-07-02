<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Panel Administrador</title>
    <style>
        body {
            background: #f8fafc;
        }
        .panel-admin {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 4px 24px rgba(0,0,0,0.08);
            padding: 2.5rem 2rem 2rem 2rem;
            margin-top: 3rem;
        }
        .panel-admin h1 {
            font-weight: 700;
            letter-spacing: 1px;
        }
        .panel-admin .lead {
            color: #6c757d;
        }
        .list-group-item {
            font-size: 1.2rem;
            border: none;
            border-radius: 10px;
            margin-bottom: 0.7rem;
            transition: background 0.2s, color 0.2s;
        }
        .list-group-item:hover {
            background: #0d6efd;
            color: #fff;
        }
        .btn-info {
            margin-top: 2rem;
            font-weight: 600;
            letter-spacing: 1px;
            border-radius: 8px;
            padding: 0.7rem 2.5rem;
            box-shadow: 0 2px 8px rgba(13,110,253,0.08);
        }
        @media (max-width: 600px) {
            .panel-admin {
                padding: 1rem;
            }
            .btn-info {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<!-- Contenido principal -->
<div class="container mt-5 panel-admin" role="main">
    <section class="mb-4">
        <h1 class="text-primary mb-3">Bienvenido Administrador</h1>
        <p class="lead">Aquí puedes ver:</p>
    </section>

    <section>
        <div class="row g-4 justify-content-center">
            <div class="col-md-4">
                <div class="card shadow-sm h-100 border-0">
                    <div class="card-body text-center">
                        <i class="bi bi-people-fill" style="font-size:2.5rem;color:#0d6efd;"></i>
                        <h5 class="card-title mt-3">Usuarios</h5>
                        <p class="card-text">Gestiona los usuarios del sistema.</p>
                        <g:link controller="usuario" action="index" class="btn btn-primary mt-2">Ver Usuarios</g:link>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm h-100 border-0">
                    <div class="card-body text-center">
                        <i class="bi bi-tags-fill" style="font-size:2.5rem;color:#0d6efd;"></i>
                        <h5 class="card-title mt-3">Categorías</h5>
                        <p class="card-text">Administra las categorías disponibles.</p>
                        <g:link controller="categoria" action="index" class="btn btn-primary mt-2">Ver Categorías</g:link>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm h-100 border-0">
                    <div class="card-body text-center">
                        <i class="bi bi-file-earmark-text-fill" style="font-size:2.5rem;color:#0d6efd;"></i>
                        <h5 class="card-title mt-3">Artículos</h5>
                        <p class="card-text">Consulta y administra los artículos registrados.</p>
                        <g:link controller="articulo" action="index" class="btn btn-primary mt-2">Ver Artículos</g:link>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<a href="${createLink(controller: 'login', action: 'logout')}" type="button"
   class="btn btn-info">Salir del Sistema</a>
</body>
</html>
