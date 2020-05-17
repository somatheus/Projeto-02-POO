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
                erro = "Não foi possível encontrar o Fornecedor";
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
                            erro = "Razão Social inválido";
                    }else if(cnpj.isEmpty()){
                            erro = "CNPJ inválido";
                    }else if(email.isEmpty()){
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
        
            <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
                <div id="area-menu"> 
                    <a href="../index.jsp">Home</a>  
                    <a href="../cliente/listaClientes.jsp">Listar Clientes</a>
                    <a href="listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
        
        <center>
            <h1>Editar Fornecedores</h1>

            <%if(erro!=null){%>
                    <div style="color:red"><%=erro%></div>
            <%}else{%>
                <br/>
                
                <div class="editar1">
                    <div class="form3">
                        <input type="hidden" name="i" value="<%=i%>"/>
                        Nome do Fornecedor<br/>
                        <input type="text" name="nome" value="<%=fornecedor.getNome()%>"/><br/>
                        Razão Social:<br/>
                        <input type="text" name="razaoSocial" value="<%=fornecedor.getRazaoSocial()%>"/><br/>
                        CNPJ:<br/>
                        <input type="text" name="cnpj" value="<%=fornecedor.getCnpj()%>"/><br/>
                        
                    </div>
                     <div class="form4">
                         Email: <br/>
                        <input type="text" name="email" value="<%=fornecedor.getEmail()%>"/><br/>
                        Telefone:<br/>
                        <input type="text" name="telefone" value="<%=fornecedor.getTelefone()%>"/><br/>
                        Endereço:<br/>
                        <input type="text" name="endereco" value="<%=fornecedor.getEndereco()%>"/><br/>
                        <br/><br/>
                        <input class="salvar" type="submit" name="editar" value="Salvar Edição"><br/>   
                            
                    </div>
                    
                </div>  
            <%}%>
        </center>
    </body>
</html>
