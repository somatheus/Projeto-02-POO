<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("cancel") != null){
        response.sendRedirect("../index.jsp");
    }if(request.getParameter("add") != null){
        
        Fornecedor fornecedor = new Fornecedor();
        
        fornecedor.setNome(request.getParameter("nome")); 
        fornecedor.setRazaoSocial(request.getParameter("razaoSocial"));
        fornecedor.setCnpj(request.getParameter("cnpj"));
        fornecedor.setEmail(request.getParameter("email"));
        fornecedor.setTelefone(request.getParameter("telefone"));
        fornecedor.setEndereco(request.getParameter("endereco"));
        
        DB.getFornecedores().add(fornecedor);
        response.sendRedirect("listaFornecedores.jsp");
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
                        <a href="../cliente/listaClientes.jsp">Listar Clientes</a>
                        <a href="listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
        
        <center>
        <h1>Adicionar Fornecedor</h1>
        
             <div class="editar1">
                <div class="form1">
                  Nome:<br/>
                <input placeholder="Digite o Nome" type="text" name="nome"/><br>
                Razão Social:<br/>
                <input placeholder="Digite a Razão Social" type="text" name="razaoSocial"/><br>
                CNPJ:<br/>
                <input placeholder="Digite o CNPJ" type="text" name="cnpj"/><br> 
                 <input  type="submit" class="botão" name="add" value="Adicionar"/>
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
