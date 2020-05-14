<%-- 
    Document   : Home
    Created on : 12/05/2020, 22:32:23
    Author     : Priscila Nascimento
--%>

<%@page import="br.sp.gov.fatec.objetos.Cliente"%>
<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div style="text-align: center">
            
            <h3><a href="incluir.jsp">Adicionar Cliente</a></h3>
            
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
            
            <div style="text-align: center">
            
            <h3><a href="incluir.jsp">Adicionar Fornecedor</a></h3>
            
            <center>
            <table width="700" style="text-align: center">
                <tr>
                    <th>Índice Fornecedores</th>
                    <th>Nome</th>
                    <th>Razão Social</th>
                    <th>CNPJ</th>
                    <th>E-mail</th>
                </tr>
                <%for (Fornecedor c : DB.getFornecedores()) {%>
                
                <tr>
                    <td><%= DB.getFornecedores().indexOf(c)%></td>
                    <td><%= c.getNome()%></td>
                    <td><%= c.getRazaoSocial()%></td>
                    <td><%= c.getCnpj()%></td>
                    <td><%= c.getEmail()%></td>
                </tr>
                
                <%}%>
            </table>
            </center>
            <br/>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
