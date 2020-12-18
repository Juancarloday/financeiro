<%-- 
    Document   : editarDespesa
    Created on : 18 de dez de 2020, 09:58:37
    Author     : entra21
--%>

<%@page import="Modelos.Despesa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edição Despesa</h1>
        <hr />
        <%
        int id =Integer.parseInt(request.getParameter("id"));
        Despesa d = new Despesa();
        if(id != 0){
        d = d.consultar(id);
        }
        %>
        <form action="" method = "POST">
            
            
            <label>Descrição</label>
            <input type="text" name="descrição"
                   disable="true"
                   value="<%out.write(""+d.getDescricao());%>"/>
            <br />
            <label>Valor</label>
            <input type="text" name="valor"
                   value="<%out.write(""+d.getValor());%>" />
            <br />
            <label>Data</label>
            <input type="date" name="data"
                   value="<%out.write(""+String.valueOf(d.getData()));%>"/>
           
            <br />
            <hr />
            <input type="submit" value="ALTERAR" />
            
        </form>
    </body>
</html>

