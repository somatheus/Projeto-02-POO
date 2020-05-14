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



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Incluir</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <center>
        <h2>Adicionar Fornecedor</h2>
        <form>
            Nome:<br/>
            <input type="text" name="nome"/><br>
            Razão Social:<br/>
            <input type="text" name="Razao Social"/><br>
            CNPJ:<br/>
            <input type="text" name="CNPJ"/><br></br>
            E-mail:<br/>
            <input type="text" name="email"/><br>
            
            <input type="submit" class="botao" name="add" value="Adicionar"/>
            <input type="submit" class="botao" name="cancel" value="Cancelar"/>
        </form>
        
         
        
        
        </center>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
