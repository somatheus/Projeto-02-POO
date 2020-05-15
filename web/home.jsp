<%-- 
    Document   : home
    Created on : 15/05/2020, 19:46:46
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
        <title>Home</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            int cont = 0;
            
            for(Cliente a : DB.getClientes()){
                cont+=1;
            }
        %>
        <main>
            
            <div id="topo"><!-- Inicio topor-->
		<ul id="navegacao">
		    <li class="primeiro"> 
			<a id="home" href="home.jsp">Home</a>
		    </li>
		    <li> 
                        <a id="brasil" href="index.jsp">Listar</a>
                    </li>

	        </ul>
            </div><!-- Fim topor-->
            
            <div class="home"><!-- Inicio home-->
                <h2>Total de cadastrados</h2>
                <div class="clientes">
                    <h3>Clientes</h3>
                    <p>N° de Clientes: <%=cont%></p>
                    <h3><a href="incluir.jsp">Adicionar Cliente</a></h3>
                </div>
                <div class="fornecedores">
                    <h3>Fornecedores</h3>
                    <p>N° de Fornecedores: <%=cont%></p>
                    <a> </a>
                    
                    <a class="btn btn-primary" href="incluir.jsp" role="button">Adicionar Cliente</a>
                </div>
            </div> <!-- Fim home--> 
        </main>
        <br><br><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
