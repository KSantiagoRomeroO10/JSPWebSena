<%-- 
    Document   : LoginUser
    Created on : 3/09/2024, 1:57:26 p. m.
    Author     : Santiago Romero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario Logueado</title>
    </head>
    <body>
        <%
            String[] persona = (String[]) request.getSession().getAttribute("Logeado");
            if(persona == null){
                HttpSession sesion = request.getSession();
                sesion.setAttribute("NoLogueado", 0);
                response.sendRedirect("index.jsp");
            }
            else{
        %>
        <h1>¡Bienvenido!</h1>
        <p>Nombre: <%=persona[0]%></p>
        <p>Correo: <%=persona[1]%></p>
        <p>Clave: <%=persona[2]%></p>
        <!-- Formulario con botón para cerrar sesión -->
        <form action="CerrarSesion" method="post">
            <input type="submit" value="Cerrar Sesión">
        </form>
        <%
            }
        %>
    </body>
</html>
