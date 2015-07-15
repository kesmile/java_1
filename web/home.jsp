<%-- 
    Document   : home
    Created on : 13/07/2015, 11:19:36 PM
    Author     : kelvi
--%>

<%@page import="java.util.List"%>
<%@page import="com.devsmile.dao.UsuarioBean"%>
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
            <div class="small-2 large-12 columns">
                <h1>Lista de usuarios</h1>
                <table>
                    <thead>
                      <tr>
                        <th>#</th>
                        <th width="200">Usuario</th>
                        <th width="150">Email</th>
                        <th width="150">Estado</th>
                        <th width="150">Acciones</th>
                      </tr>
                    </thead>
                    <tbody>
                        <%
                            List<UsuarioBean> usuarios = (List<UsuarioBean>) request.getAttribute("userlist");
                            if(usuarios !=null){
                              for(UsuarioBean usuario: usuarios){ %>   
                                  <tr>
                                    <td><%= usuario.getId() %></td>
                                    <td><%= usuario.getUsuario() %></td>
                                    <td><%= usuario.getEmail() %></td>
                                    <td></td>
                                    <td></td>
                                  </tr>
                        <%      }
                            }
                        %>
                      
                    </tbody>
                  </table>
            </div>
        </div>
       <script src="public/js/vendor/jquery.js"></script>
       <script src="public/js/foundation.min.js"></script>
       <script>
            $(document).foundation();
       </script>
    </body>
</html>
