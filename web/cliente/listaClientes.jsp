<%@page import="br.sp.gov.fatec.objetos.Cliente"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <div style="text-align: center">
            
            <h3><a href="adicionaCliente.jsp">Adicionar Cliente</a></h3>
            
            <center>
                <table width="700" style="text-align: center">
                    <tr>
                        <th>Índice Clientes</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>RG</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                    </tr>
                    <%for (Cliente c : DB.getClientes()) {%>
                    <tr>
                        <td><%= DB.getClientes().indexOf(c)%></td>
                        <td><%= c.getNome()%></td>
                        <td><%= c.getCpf()%></td>
                        <td><%= c.getRg()%></td>
                        <td><%= c.getEmail()%></td>
                        <td><%= c.getTelefone()%></td>
                        <td><%= c.getEndereco()%></td>
                    </tr>
                    <%}%>
                </table>
            </center>
            <br/>
        </div>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
