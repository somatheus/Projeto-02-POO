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
        <center>
        <h2>Adicionar Fornecedor</h2>
            <form>
                Nome:<br/>
                <input type="text" name="nome"/><br>
                Razão Social:<br/>
                <input type="text" name="razaoSocial"/><br>
                CNPJ:<br/>
                <input type="text" name="cnpj"/><br></br>
                E-mail:<br/>
                <input type="text" name="email"/><br>
                Telefone:<br/>
                <input type="text" name="telefone"/><br>
                Endereço:<br/>
                <input type="text" name="endereco"/><br>

                <input type="submit" class="botao" name="add" value="Adicionar"/>
                <input type="submit" class="botao" name="cancel" value="Cancelar"/>
            </form>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
