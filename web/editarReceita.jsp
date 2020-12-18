<%-- 
    Document   : editarReceita
    Created on : 18 de dez de 2020, 09:51:39
    Author     : entra21
--%>

<%@page import="Modelos.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edição Receita</h1>
         <hr />
        <%
        int id =Integer.parseInt(request.getParameter("id"));
        Receita r = new Receita();
        if(id != 0){
        r = r.consultar(id);
        }
        %>
        <form action="" method = "POST">
            
            
            <label>Descrição</label>
            <input type="text" name="descrição"
                   disable="true"
                   value="<%out.write(""+r.getDescricao());%>"/>
            <br />
            <label>Valor</label>
            <input type="text" name="valor"
                   value="<%out.write(""+r.getValor());%>" />
            <br />
            <label>Data</label>
            <input type="date" name="data"
                   value="<%out.write(""+String.valueOf(r.getData()));%>"/>
           
            <br />
            <hr />
            <input type="submit" value="ALTERAR" />
            
        </form>
    </body>
</html>
 
