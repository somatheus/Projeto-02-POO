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
        <main>
            
            <div id="topo"><!-- Inicio topor-->
		<ul id="navegacao">
		    <li> 
                        <a id="listaCliente" href="cliente/listaClientes.jsp">Listar clientes</a>
                    </li>
                    <li> 
                        <a id="listaFornecedor" href="fornecedor/listaFornecedores.jsp">Listar fornecedores</a>
                    </li>
	        </ul>
            </div><!-- Fim topor-->
            
            <div class="home"><!-- Inicio home-->
                <h2>Total de Cadastros</h2>
                <div class="clientes">
                    <h3>Clientes</h3>
                    <p>N° de Clientes: <%=DB.getClientes().size()%></p>
                    <a href="cliente/adicionaCliente.jsp">Adicionar cliente</a>
                </div>
                <div class="fornecedores">
                    <h3>Fornecedores</h3>
                    <p>N° de Fornecedores: <%=DB.getFornecedores().size()%></p>                    
                    <a class="btn btn-primary" href="fornecedor/adicionaFornecedor.jsp" role="button">Adicionar fornecedor</a><br/>
                </div>
            </div> <!-- Fim home--> 
        </main>
        <br><br><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
