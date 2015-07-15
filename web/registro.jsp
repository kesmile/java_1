<%-- 
    Document   : login
    Created on : 12/07/2015, 04:12:26 PM
    Author     : kelvi
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Foundation | Welcome</title>
        <link rel="stylesheet" href="public/css/normalize.css" />
        <link rel="stylesheet" href="public/css/foundation.min.css" />
        <link rel="stylesheet" href="public/css/style.css" />
        <script src="public/js/vendor/modernizr.js"></script>
    </head>
    <body>
        <div class="row" id="container">
            <div class="small-2 large-5 large-offset-3 columns">
                <form action="registro" method="post" >
                   <fieldset>
                       <legend>Registro</legend>
                    <input type="text" name="usuario" placeholder="usuario" />
                    <input type="email" name="email" placeholder="email" />
                    <input type="password" name="password" placeholder="password" />
                    <input type="password" name="password_confirm" placeholder="confirm password" />
                    <br>
                    <%
                        String mensaje = (String)request.getAttribute("mensaje");
                        if(mensaje != null){
                    %>
                    <div data-alert class="alert-box alert">
                        <% out.println(mensaje); %>
                        <a href="#" class="close">&times;</a>
                    </div>
                        <% } 
                        %>
                    <input type="submit" value="Aceptar" class="button small" />
                   </fieldset>
                </form>
            </div>
        </div>
       <script src="public/js/vendor/jquery.js"></script>
       <script src="public/js/foundation.min.js"></script>
       <script>
            $(document).foundation();
       </script>
    </body>
</html>

