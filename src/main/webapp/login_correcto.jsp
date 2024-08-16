<%@ page import="co.edu.cue.iniciosesion.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ingreso correcto</title>
</head>
<body>
<table style="width: 50%">
    <tr>
        <td>
            <a>Bienvenid@ <%= ((Usuario) request.getSession().getAttribute("usuario")).getUsuario().toUpperCase() %>! Su inicio de sesión es correcto.</a>
        </td>
    </tr>
    <tr></tr>
    <tr>
        <td>
            <a href="index.jsp"><b>Cerrar sesión</b></a>
        </td>
    </tr>
</table>

<h2>Conceptos sobre las Directivas JSP</h2>
<table border="1" style="width: 100%">
    <tr>
        <th>La directiva page</th>
        <th>De que trata</th>
    </tr>
    <tr>
        <td><b>page</b></td>
        <td>
            La directiva `page` se utiliza para definir ciertas propiedades de la página JSP como el lenguaje utilizado, la codificación de caracteres, el manejo de errores, etc.
        </td>
    </tr>
    <tr>
        <td>Atributos de la directiva page</td>
        <td>
            <ul>
                <li><b>language:</b> Define el lenguaje de programación utilizado, típicamente "java".</li>
                <li><b>extends:</b> Especifica la clase que extiende la clase de la servlet generada.</li>
                <li><b>import:</b> Importa paquetes o clases específicas en la página JSP.</li>
                <li><b>session:</b> Indica si la página JSP utiliza sesiones HTTP.</li>
                <li><b>buffer:</b> Especifica el tamaño del buffer de salida.</li>
                <li><b>autoFlush:</b> Indica si se debe vaciar automáticamente el buffer de salida cuando esté lleno.</li>
                <li><b>isThreadSafe:</b> Indica si la página JSP es segura para hilos múltiples.</li>
                <li><b>info:</b> Proporciona información sobre la página JSP.</li>
                <li><b>errorPage:</b> Especifica una página a la que se redirige en caso de error.</li>
                <li><b>isErrorPage:</b> Indica si la página actual es una página de error.</li>
                <li><b>contentType:</b> Define el tipo de contenido MIME de la respuesta.</li>
                <li><b>pageEncoding:</b> Especifica la codificación de caracteres de la página JSP.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <th>La directiva taglib</th>
        <th>De que trata</th>
    </tr>
    <tr>
        <td><b>taglib</b></td>
        <td>
            La directiva `taglib` se utiliza para declarar una biblioteca de etiquetas (tag library) en la página JSP, lo que permite utilizar etiquetas personalizadas.
        </td>
    </tr>
    <tr>
        <td>Atributos de la directiva taglib</td>
        <td>
            <ul>
                <li><b>uri:</b> Especifica la URI que identifica la biblioteca de etiquetas.</li>
                <li><b>prefix:</b> Define un prefijo que se utiliza para las etiquetas de la biblioteca en la página JSP.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <th>La directiva include</th>
        <th>De que trata</th>
    </tr>
    <tr>
        <td><b>include</b></td>
        <td>
            La directiva `include` se utiliza para incluir el contenido de un archivo en la página JSP en tiempo de compilación.
        </td>
    </tr>
    <tr>
        <td>Atributos de la directiva include</td>
        <td>
            <ul>
                <li><b>file:</b> Especifica el archivo que se va a incluir en la página JSP.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Ejemplo de include</td>
        <td>
            <pre>
&lt;%@ include file="header.jsp" %&gt;
            </pre>
            Este ejemplo incluye el contenido de "header.jsp" en la página actual.
        </td>
    </tr>
</table>
</body>
</html>



