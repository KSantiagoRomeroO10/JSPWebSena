<%-- 
    Document   : index
    Created on : 3/09/2024, 11:13:08 a. m.
    Author     : Santiago Romero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <%
            String persona = (String) request.getSession().getAttribute("ErrorLogueandose");
            if(persona != null){                      
        %>
                <h1>Credenciales incorrectas</h1>
        <%
                HttpSession sesion = request.getSession();
                sesion.removeAttribute("ErrorLogueandose");
            }            
        %>
        <h1>¡Hola mundo Sena!</h1>
        <form action="Form" method="POST">
            <p><label for="Nomnre">Nombre: </label><input type="text" name="Nomnre" id="Nomnre"></p>
            <p><label for="Correo">Correo: </label><input type="text" name="Correo" id="Correo"></p>
            <p><label for="Clave">Clave: </label><input type="password" name="Clave" id="Clave"></p>
            <button type="submit">Aceptar</button>
        </form>
    </body>
</html>
