<%-- 
    Document   : ultrasecreta
    Created on : 16 de dez de 2020, 08:36:54
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
      <style>
            p{
                font-size: 48px;
                color: red;
                background-color: yellow;
            }
        </style>
    </head>
    <body>
        <%
          String usuario = (String) session.getAttribute("usuario");
          if(usuario == null){
              response.sendRedirect("login.jsp");
          }
          out.print("<p>"+usuario+"</p>");
        %>
    </body>
</html>
   
