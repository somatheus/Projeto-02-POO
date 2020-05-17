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
    StringBuilder erro=null;
    int qtdCamposEstaoVazios=0;
    if(request.getParameter("cancel") != null){
        response.sendRedirect("../index.jsp");
    }if(request.getParameter("add") != null){
        
        erro = new StringBuilder("Os seguintes campos estão vazios:<br>");
        
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
         if(nome.isEmpty()){
            erro.append("Nome<br>");
            qtdCamposEstaoVazios++;
        }
        if(cpf.isEmpty()){
            erro.append("CPF<br>");
            qtdCamposEstaoVazios++;
        }
        if(rg.isEmpty()){
            erro.append("RG<br>");
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
            erro.append("Endereço");
            qtdCamposEstaoVazios++;
        }
        if(qtdCamposEstaoVazios == 6) erro = new StringBuilder("Preencha todos os campos antes de continuar");
        
        if(qtdCamposEstaoVazios == 0){
            Cliente cliente = new Cliente(); 
            cliente.setNome(nome); 
            cliente.setCpf(cpf);
            cliente.setRg(rg);
            cliente.setEmail(email);
            cliente.setTelefone(telefone);
            cliente.setEndereco(endereco);
            DB.getClientes().add(cliente);
            response.sendRedirect("listaClientes.jsp");
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
        <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
                
                   <div id="area-menu"> 
                        <a href="../index.jsp">Home</a>  
                        <a href="listaClientes.jsp">Listar Clientes</a>
                        <a href="../fornecedor/listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
            
        <center>
        <h1>Adicionar Cliente</h1>
        <%if(erro!=null){%>
                <div style="color:white"><%=erro%></div><br>
                <a href="adicionaCliente.jsp" style="color:black">Voltar</a>
            <%}else{%>
                <form>
                    <div class="editar1">
                        <div class="form1">
                            Nome:<br/>
                            <input placeholder="Digite o Nome" type="text" name="nome" /><br>
                            CPF:<br/>
                            <input placeholder="Digite o CPF" type="text" name="cpf"/><br>
                            RG:<br/>
                            <input placeholder="Digite o RG" type="text" name="rg"/><br><br/>
                            <input type="submit" class="botão" name="add" value="Adicionar"/>
                        </div>

                        <div class="form2">
                            E-mail:<br/>
                            <input placeholder="Digite o E-mail" type="text" name="email"/><br>
                            Telefone:<br/>
                            <input placeholder="Digite o Telefone" type="text" name="telefone"/><br>
                            Endereço:<br/>
                            <input placeholder="Digite o Endereço" type="text" name="endereco"/><br><br/>
                            <input type="submit" class="botão2" name="cancel" value="Cancelar"/>
                        </div>
                    </div>
                </form>
            <%}%>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>