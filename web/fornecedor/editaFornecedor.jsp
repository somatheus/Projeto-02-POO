<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	String erro = null;
	Fornecedor fornecedor = null;
	int i = -1;
	
	if(request.getParameter("i")!=null){
            i = Integer.parseInt(request.getParameter("i"));
            fornecedor = DB.getFornecedores().get(i);
		
            if(fornecedor == null){
                erro = "Não foi possível encontrar o fornecedor";
            }else{
                if(request.getParameter("editar")!=null){
                    String nome = request.getParameter("nome");
                    String razaoSocial = request.getParameter("razaoSocial");
                    String cnpj = request.getParameter("cnpj");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    String endereco = request.getParameter("endereco");
                    
                    if(nome.isEmpty()){
                            erro = "Nome inválido";
                    }else if(razaoSocial.isEmpty()){
                            erro = "Razão social inválida";
                    }else if(cnpj.isEmpty()){
                            erro = "CNPJ inválido";
                    }else if(razaoSocial.isEmpty()){
                            erro = "Email inválido";
                    }else if(telefone.isEmpty()){
                            erro = "Telefone inválido";
                    }else if(endereco.isEmpty()){
                            erro = "Endereço inválido";
                    }else{
                        Fornecedor fornecedorEditado = new Fornecedor();
                        
                        fornecedorEditado.setNome(nome);
                        fornecedorEditado.setRazaoSocial(razaoSocial);
                        fornecedorEditado.setCnpj(cnpj);
                        fornecedorEditado.setEmail(email);
                        fornecedorEditado.setTelefone(telefone);
                        fornecedorEditado.setEndereco(endereco);
                        
                        DB.getFornecedores().set(i,fornecedorEditado);
                        response.sendRedirect("listaFornecedores.jsp");
                    }
                }
            }
	}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <title>Editar Fornecedor</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
        <center>
            <h1>Editar fornecedor</h1>
            <h3><a href="../index.jsp">Início</a></h3>
            <h3><a href="listaFornecedores.jsp">Lista de fornecedores</a></h3>
            <%if(erro!=null){%>
                    <div style="color:red"><%=erro%></div>
            <%}else{%>
                <br/>
                <form method="post">
                    <input type="hidden" name="i" value="<%=i%>"/>
                    Nome da empresa<br/>
                    <input type="text" name="nome" value="<%=fornecedor.getNome()%>"/><br/>
                    Razão social:<br/>
                    <input type="text" name="razaoSocial" value="<%=fornecedor.getRazaoSocial()%>"/><br/>
                    CNPJ:<br/>
                    <input type="text" name="cnpj" value="<%=fornecedor.getCnpj()%>"/><br/>
                    Email: <br/>
                    <input type="text" name="email" value="<%=fornecedor.getEmail()%>"/><br/>
                    Telefone:<br/>
                    <input type="text" name="telefone" value="<%=fornecedor.getTelefone()%>"/><br/>
                    Endereço:<br/>
                    <input type="text" name="endereco" value="<%=fornecedor.getEndereco()%>"/><br/>
                    <br/><br/>
                    <input type="submit" name="editar" value="Editar"><br/>
                </form>
            <%}%>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
