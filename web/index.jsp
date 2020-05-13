<%-- 
    Document   : home
    Created on : 10/05/2020, 16:26:43
    Author     : Priscila Nascimento
--%>

<%@page import="contato.Db"%>
<%@page import="contato.Dados"%>
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
            
            <h3><a href="incluir.jsp">Adicionar</a></h3>
            
            <center>
            <table width="700" style="text-align: center">
                <tr>
                    <th>Índice</th>
                    <th>Nome</th>
                    <th>E-mail</th>
                    <th>Telefone</th>
                    <th>Comandos</th>
                </tr>
                <%for (Dados c : Db.getDados()) {%>
                <tr>
                    <td><%= Db.getDados().indexOf(c)%></td>
                    <td><%= c.getnome()%></td>
                    <td><%= c.getemail()%></td>
                    <td><%= c.gettelefone()%></td>
                    <td>
                        <a href="alterar.jsp?index=<%=Db.getDados().indexOf(c)%>">Alterar</a>
                        <a href="excluir.jsp?index=<%=Db.getDados().indexOf(c)%>">Excluir</a>
                    </td>
                </tr>
                <%}%>
            </table>
            </center>
            <br/>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
