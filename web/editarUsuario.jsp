<%-- 
    Document   : editarUsuario
    Created on : 16 de dez de 2020, 10:40:02
    Author     : entra21
--%>

<%@page import="Modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDITAR USUARIO</title>
    </head>
    <body>
        <h1>Edição de Usuário!</h1>
        <hr />
        <%
        int id =Integer.parseInt(request.getParameter("id"));
        Usuario u = new Usuario();
        if(id != 0){
        u = u.consultar(id);
        }
        %>
        <form action="" method = "POST">
            
            
            <label>CPF</label>
            <input type="text" name="cpf"
                   disable="true"
                   value="<%out.write(""+u.getCpf());%>"/>
            <br />
            <label>Nome</label>
            <input type="text" name="nome"
                   value="<%out.write(""+u.getNome());%>" />
            <br />
            <label>Numero do Cartao</label>
            <input type="text" name="datanascimento"
                   value="<%out.write(""+String.valueOf(u.getDatanascimento()));%>"/>
            <br />
            <label>email</label>
            <input type="text" name="email"
                   value="<%out.write(""+u.getEmail());%>" />
            <br />
            <label>Fone</label>
            <input type="text" name="fone"
                   value="<%out.write(""+u.getFone());%>" />
            <br />
            <hr />
            <input type="submit" value="ALTERAR" />
            
        </form>
    </body>
</html>
