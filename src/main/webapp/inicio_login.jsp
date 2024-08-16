<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Formulario de inicio de sesión</title>
</head>
<body>
<!-- Formulario de inicio de sesión -->
<h1>Formulario de inicio de sesión.</h1>
<form action="login" method="post">
    <table style="width: 50%">
        <tr>
            <td>Usuario:</td>
            <td><input type="text" name="textUsuario" id="textUsuario" /></td>
        </tr>
        <tr>
            <td>Contraseña:</td>
            <td><input type="password" name="textClave" id="textClave" /></td>
        </tr>
    </table>
    <input type="submit" value="Iniciar" />
</form>
</body>
</html>


