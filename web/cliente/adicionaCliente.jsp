<%-- 
    Document   : home
    Created on : 12/05/2020, 23:53:41
    Author     : Priscila Nascimento
--%>

<%@page import="br.sp.gov.fatec.objetos.Cliente"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("cancel") != null){
        response.sendRedirect("../index.jsp");
    }if(request.getParameter("add") != null){
        Cliente cliente = new Cliente(); 
        cliente.setNome(request.getParameter("nome")); 
        cliente.setCpf(request.getParameter("cpf"));
        cliente.setRg(request.getParameter("rg"));
        cliente.setEmail(request.getParameter("email"));
        cliente.setTelefone(request.getParameter("telefone"));
        cliente.setEndereco(request.getParameter("endereco"));
        DB.getClientes().add(cliente);
        response.sendRedirect("listaClientes.jsp");
    }

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <title>Incluir</title> 
        
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
        <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
                
                   <div id="area-menu"> 
                        <a href="../index.jsp">Home</a>  
                        <a href="listaClientes.jsp">Listar Clientes</a>
                        <a href="../fornecedor/listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
            
        <center>
        <h1>Adicionar Cliente</h1>
    

            <div class="editar1">
            <div class="form1">
                Nome:<br/>
                <input placeholder="Digite o Nome" type="text" name="nome" /><br>
                CPF:<br/>
                <input placeholder="Digite o CPF" type="text" name="cpf"/><br>
                RG:<br/>
                <input placeholder="Digite o RG" type="text" name="rg"/><br>
                <input type="submit" class="botão" name="add" value="Adicionar"/>
            </div>
            
            <div class="form2">
                E-mail:<br/>
                <input placeholder="Digite o E-mail" type="text" name="email"/><br>
                Telefone:<br/>
                <input placeholder="Digite o Telefone" type="text" name="telefone"/><br>
                Endereço:<br/>
                <input placeholder="Digite o Endereço" type="text" name="endereco"/><br>
                <input type="submit" class="botão2" name="cancel" value="Cancelar"/>
            </div>
         </div>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>