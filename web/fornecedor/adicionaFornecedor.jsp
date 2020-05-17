<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    StringBuilder erro=null;
    int qtdCamposEstaoVazios=0;
    if(request.getParameter("cancel") != null){
        response.sendRedirect("../index.jsp");
    }if(request.getParameter("add") != null){
        
        erro = new StringBuilder("Os seguintes campos estão vazios:<br>");
        
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razaoSocial");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        if(nome.isEmpty()){
            erro.append("Nome<br>");
            qtdCamposEstaoVazios++;
        }
        if(razaoSocial.isEmpty()){
            erro.append("Razão<br>");
            qtdCamposEstaoVazios++;
        }
        if(cnpj.isEmpty()){
            erro.append("CNPJ<br>");
            qtdCamposEstaoVazios++;
        }
        if(email.isEmpty()){
            erro.append("Email<br>");
            qtdCamposEstaoVazios++;
        }
        if(telefone.isEmpty()){
            erro.append("Telefone<br>");
            qtdCamposEstaoVazios++;
        }
        if(endereco.isEmpty()){
            erro.append("Endereço<br>");
            qtdCamposEstaoVazios++;
        }
        if(qtdCamposEstaoVazios == 6) erro = new StringBuilder("Preencha todos os campos antes de continuar");
        
        if(qtdCamposEstaoVazios == 0){
            Fornecedor fornecedor = new Fornecedor();

            fornecedor.setNome(nome); 
            fornecedor.setRazaoSocial(razaoSocial);
            fornecedor.setCnpj(cnpj);
            fornecedor.setEmail(email);
            fornecedor.setTelefone(telefone);
            fornecedor.setEndereco(endereco);

            DB.getFornecedores().add(fornecedor);
            response.sendRedirect("listaFornecedores.jsp");
        }
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
        <div id="area-cabeçalho">
            <div id="area-menu"> 
                <a href="../index.jsp">Home</a>  
                <a href="../cliente/listaClientes.jsp">Listar Clientes</a>
                <a href="listaFornecedores.jsp">Listar Fornecedores</a>
            </div>
        </div>
        
        <center>
            <h1>Adicionar Fornecedor</h1>

            <%if(erro!=null){%>
                <div style="color:white"><%=erro%></div><br>
                <a href="adicionaFornecedor.jsp" style="color:black">Voltar</a>
            <%}else{%>
                <form>
                    <div class="editar1">
                        <div class="form1">
                        Nome:<br/>
                        <input placeholder="Digite o Nome" type="text" name="nome"/><br>
                        Razão Social:<br/>
                        <input placeholder="Digite a Razão Social" type="text" name="razaoSocial"/><br>
                        CNPJ:<br/>
                        <input placeholder="Digite o CNPJ" type="text" name="cnpj"/><br><br>
                         <input  type="submit" class="botão" name="add" value="Adicionar"/>
                        </div>

                        <div class="form2">
                        E-mail:<br/>
                        <input placeholder="Digite o E-mail" type="text" name="email"/><br>
                        Telefone:<br/>
                        <input placeholder="Digite o Telefone" type="text" name="telefone"/><br>
                        Endereço:<br/>
                        <input placeholder="Digite o Endereço" type="text" name="endereco"/><br><br>
                        <input type="submit" class="botão2" name="cancel" value="Cancelar"/>
                        </div>
                     </div>
                </form>
            <%}%>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
