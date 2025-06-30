<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Login</title>

    <!-- Estilos personalizados -->
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4fa;
        margin: 0;
        padding: 0;
    }

    .container-login {
        max-width: 600px;
        margin: 60px auto;
        padding: 40px;
        background-color: white;
        border-radius: 15px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    .container-login h1 {
        font-size: 26px;
        color: #007bff;
        margin-bottom: 8px;
    }

    .container-login p {
        color: #444;
        margin-bottom: 16px;
    }

    .container-login img {
        height: 120px;
        margin: 20px 0;
    }

    .manual-link {
        margin-top: 20px;
        display: block;
        font-size: 14px;
    }

    .footer-version {
        font-size: 11px;
        color: #888;
        margin-top: 20px;
    }

    .alert {
        max-width: 400px;
        margin: 10px auto;
    }
    </style>
</head>

<body>

<div class="container-login">
    <h1>PuceBuy</h1>
    <p>Favor ingrese el sistema para utilizarlo</p>

    <asset:image src="PuceBuyLogo.jpeg" alt="Logo PUCEBUY"/>

    <g:if test="${flash.message}">
        <div class="alert alert-danger" role="alert">${flash.message}</div>
    </g:if>

    <button class="btn btn-outline-primary mt-3" id="ingresar">
        <i class="bi bi-box-arrow-in-right"></i> Ingresar
    </button>

    <a class="manual-link" href="${createLink(controller: 'descargas', action: 'manual')}">
        <asset:image src="apli/pdf_pq.png" style="height: 30px;"/> Manual del usuario
    </a>

    <p class="footer-version">Versión ${message(code: 'version', default: '1.1.0x')}</p>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">Ingresar al Sistema</h5>
                <button type="button" class="btn-close" id="btnCerrar" data-bs-dismiss="modal" aria-label="Cerrar"></button>
            </div>

            <div class="modal-body">
                <g:form name="frmLogin" action="validar" id="frmLogin" class="login-form">
                    <div class="mb-3">
                        <label for="login" class="form-label">Usuario</label>
                        <input type="text" name="login" id="login" class="form-control" placeholder="Usuario" required autofocus />
                    </div>

                    <div class="mb-3">
                        <label for="pass" class="form-label">Contraseña</label>
                        <input type="password" name="pass" id="pass" class="form-control" placeholder="Contraseña" required />
                    </div>

                    <button type="submit" class="btn btn-primary w-100" id="btn-login">
                        <i class="bi bi-shield-lock"></i> Validar
                    </button>
                </g:form>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap 5 JS Bundle (sin jQuery) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function () {
        const modal = new bootstrap.Modal(document.getElementById('myModal'));

        document.getElementById('ingresar').addEventListener('click', () => {
            modal.show();
        setTimeout(() => document.getElementById('login').focus(), 300);
    });

        document.getElementById('btnCerrar').addEventListener('click', () => {
            modal.hide();
    });

        document.getElementById('btn-login').addEventListener('click', () => {
            document.getElementById('frmLogin').submit();
    });

        document.querySelectorAll('#frmLogin input').forEach(input => {
            input.addEventListener('keyup', function (e) {
            if (e.key === 'Enter') {
                document.getElementById('frmLogin').submit();
            }
        });
    });
    });
</script>

</body>
</html>
