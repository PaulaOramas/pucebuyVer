<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="login">
    <title>Seleccionar Perfil</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.6.2/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
    body {
        background-color: #f2f6fc;
        font-family: Arial, sans-serif;
    }

    .perfil-container {
        max-width: 500px;
        margin: 60px auto;
        padding: 40px;
        background-color: #fff;
        border-radius: 15px;
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        text-align: center;
    }

    .perfil-container h3 {
        color: #007bff;
        margin-bottom: 20px;
    }

    .perfil-container .fa-users {
        font-size: 48px;
        color: #28a745;
        margin-bottom: 20px;
    }

    .message {
        margin: 20px auto;
        padding: 10px;
        border: 1px solid #dc3545;
        background-color: #f8d7da;
        color: #721c24;
        border-radius: 5px;
        max-width: 400px;
    }

    .divBtn {
        margin-top: 30px;
    }

    .hidden {
        display: none;
    }
    </style>
</head>

<body>

<div class="perfil-container">
    <g:if test="${flash.message}">
        <div class="message" role="alert">${flash.message}</div>
    </g:if>

    <h3>Seleccione su perfil de trabajo</h3>
    <i class="fa fa-users"></i>

    <g:form name="frmLogin" action="savePer" id="frmLogin" class="form-signin" role="form">
        <label for="prfl" class="sr-only">Perfil</label>
        <g:select name="prfl" class="form-control mt-3" from="${perfilesUsr}" optionKey="id" optionValue="nombre"/>

        <div class="divBtn">
            <a href="#" class="btn btn-primary btn-block btn-login" id="btnPerfiles">
                <i class="fa fa-lock"></i> Entrar
            </a>
        </div>
    </g:form>

    <div id="cargando" class="text-center hidden mt-4">
        <img src="${resource(dir: 'images', file: 'spinner32.gif')}" alt="Cargando..." width="32px" height="32px"/>
        <p class="text-muted mt-2">Validando...</p>
    </div>
</div>

<!-- jQuery y Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.6.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function doLogin() {
        $("#cargando").removeClass('hidden');
        $("#btnPerfiles").hide();
        $("#frmLogin").submit();
    }

    $(function () {
        $("#btnPerfiles").click(function () {
            doLogin();
        });

        $("input, select").keyup(function (e) {
            if (e.keyCode === 13) {
                doLogin();
            }
        });
    });
</script>

</body>
</html>
