<%-- 
    Document   : home
    Created on : 12/05/2020, 23:53:41
    Author     : Priscila Nascimento
--%>

<%@page import="br.sp.gov.fatec.objetos.Cliente"%>
<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("cancel") != null){
        response.sendRedirect("index.jsp");
    }if(request.getParameter("add") != null){
        Cliente cliente = new Cliente(); 
        cliente.setNome(request.getParameter("nome")); 
        cliente.setCpf(request.getParameter("cpf"));
        cliente.setRg(request.getParameter("rg"));
        cliente.setEmail(request.getParameter("email"));
        cliente.setTelefone(request.getParameter("telefone"));
        cliente.setEndereco(request.getParameter("endereco"));
        DB.getClientes().add(cliente);
        response.sendRedirect("index.jsp");
    }

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Incluir</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <center>
        <h2>Adicionar Cliente</h2>
        <form>
            Nome:<br/>
            <input type="text" name="nome"/><br>
            CPF:<br/>
            <input type="text" name="cpf"/><br>
            RG:<br/>
            <input type="text" name="rg"/><br></br>
            E-mail:<br/>
            <input type="text" name="email"/><br>
            Telefone:<br/>
            <input type="text" name="telefone"/><br>
            Endereço:<br/>
            <input type="text" name="endereco"/><br>
            
            <input type="submit" class="botão" name="add" value="Adicionar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
        </center>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
