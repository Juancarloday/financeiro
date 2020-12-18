<%-- 
    Document   : editarUsuario
    Created on : 16 de dez de 2020, 10:40:02
    Author     : entra21
--%>

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
        String cpf = request.getParameter("cpf");
        Usuario u = new Usuario();
        if(cpf != null){
        u = u.consultar(cpf);
        }
        %>
        <form action="recebeeditarcliente.jsp" method = "POST">
            
            
            <label>CPF</label>
            <input type="text" name="cpf"
                   disable="true"
                   value="<%out.write(""+c.getCpf());%>"/>
            <br />
            <label>Nome</label>
            <input type="text" name="nome"
                   value=""<%out.write(c.getNome());%> />
            <br />
            <label>Numero do Cartao</label>
            <input type="text" name="numerocartao"
                   value=""<%out.write(c.getNumerocartao());%> />
            <br />
            <label>email</label>
            <input type="text" name="email"
                   value="<%out.write(""+c.getEmail());%>" />
            <br />
            <label>Fone</label>
            <input type="text" name="fone"
                   value="<%out.write(""+c.getFone());%>" />
            <br />
            <hr />
            <input type="submit" value="ALTERAR" />
            
        </form>
    </body>
</html>
