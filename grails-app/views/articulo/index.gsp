<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Lista de Artículos</title>
    <style>
        body {
            background: #f8fafc;
        }
        .panel-articulo {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 4px 24px rgba(0,0,0,0.08);
            padding: 2.5rem 2rem 2rem 2rem;
            margin-top: 3rem;
        }
        .panel-articulo h1 {
            font-weight: 700;
            letter-spacing: 1px;
        }
        .panel-articulo .lead {
            color: #6c757d;
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
            .panel-articulo {
                padding: 1rem;
            }
            .btn-info {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<div class="container mt-5 panel-articulo" role="main">
    <section class="mb-4">
        <h1 class="text-primary mb-3">Lista de Artículos</h1>
        <p class="lead">Aquí puedes consultar y administrar los artículos registrados.</p>
    </section>

    <section>
        <div class="d-flex justify-content-end mb-3">
            <g:link class="btn btn-primary" action="create">
                <i class="bi bi-plus-circle"></i> Nuevo Artículo
            </g:link>
        </div>
        <div class="table-responsive mb-4">
            <table class="table table-hover table-striped table-bordered align-middle text-center">
                <thead class="table-primary">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Estado</th>
                    <th>Categoría</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${articuloList}" var="articulo">
                    <tr>
                        <td>${articulo.id}</td>
                        <td>${articulo.nombre}</td>
                        <td>${articulo.precio}</td>
                        <td>${articulo.estado}</td>
                        <td>${articulo.categoria?.nombre}</td>
                        <td>
                            <g:link controller="articulo" action="show" id="${articulo.id}" class="btn btn-sm btn-info me-1">
                                <i class="bi bi-eye"></i>
                            </g:link>
                            <g:link controller="articulo" action="edit" id="${articulo.id}" class="btn btn-sm btn-warning me-1">
                                <i class="bi bi-pencil-square"></i>
                            </g:link>
                            <g:form controller="articulo" action="delete" id="${articulo.id}" method="DELETE" class="d-inline">
                                <button type="submit" class="btn btn-sm btn-danger"
                                    onclick="return confirm('¿Está seguro de eliminar este artículo?');">
                                    <i class="bi bi-trash"></i>
                                </button>
                            </g:form>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-center">
            <g:paginate total="${articuloCount ?: 0}" class="pagination" />
        </div>
    </section>
</div>
</body>
</html>