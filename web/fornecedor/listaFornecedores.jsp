<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <title>Listar Fornecedores</title>
    </head>
    
    <body>
        
        <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
                   <div id="area-menu"> 
                       <a href="../index.jsp">Home</a>  
                       <a href="../cliente/listaClientes.jsp">Listar Clientes</a>
                       <a href="listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
            
            <div class="list">
                <h1>Lista de Fornecedores</h1>
                <p><a href="adicionaFornecedor.jsp">Adicionar novo fornecedor</a></p>
            </div>
          
        
        
    <center>
        
    
        <table  style="text-align: center">
            <tr>
                <th>Nome da empresa</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th colspan="3">Ação</th>
            </tr>
            <%for(Fornecedor fornecedor : DB.getFornecedores()){%>
                <tr>
                    <td><%=fornecedor.getNome()%></td>
                    <td><%=fornecedor.getRazaoSocial()%></td>
                    <td><%=fornecedor.getCnpj()%></td>
                    <td><%=fornecedor.getEmail()%></td>
                    <td><%=fornecedor.getTelefone()%></td>
                    <td><%=fornecedor.getEndereco()%></td>
                    <td>
                        <% int i = DB.getFornecedores().indexOf(fornecedor);%>
                        <a class="alterar" href="editaFornecedor.jsp?i=<%=i%>">Alterar</a>
                    </td>
                    <td>
                        <a class ="exluir" href="excluiFornecedor.jsp?i=<%=i%>">Excluir</a>
                    </td>
                </tr>
            <%}%>
        </table>
    </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
