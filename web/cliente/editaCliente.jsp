<%@page import="br.sp.gov.fatec.objetos.Cliente"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	String erro = null;
	Cliente cliente = null;
	int i = -1;
	
	if(request.getParameter("i")!=null){
            i = Integer.parseInt(request.getParameter("i"));
            cliente = DB.getClientes().get(i);
		
            if(cliente == null){
                erro = "Não foi possível encontrar o Cliente";
            }else{
                if(request.getParameter("editar")!=null){
                    String nome = request.getParameter("nome");
                    String cpf = request.getParameter("cpf");
                    String rg = request.getParameter("rg");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    String endereco = request.getParameter("endereco");
                    
                    if(nome.isEmpty()){
                            erro = "Nome inválido";
                    }else if(cpf.isEmpty()){
                            erro = "CPF inválido";
                    }else if(rg.isEmpty()){
                            erro = "RG inválido";
                    }else if(email.isEmpty()){
                            erro = "Email inválido";
                    }else if(telefone.isEmpty()){
                            erro = "Telefone inválido";
                    }else if(endereco.isEmpty()){
                            erro = "Endereço inválido";
                    }else{
                        Cliente clienteEditado = new Cliente();
                        
                        clienteEditado.setNome(nome);
                        clienteEditado.setCpf(cpf);
                        clienteEditado.setRg(rg);
                        clienteEditado.setEmail(email);
                        clienteEditado.setTelefone(telefone);
                        clienteEditado.setEndereco(endereco);
                        
                        DB.getClientes().set(i,clienteEditado);
                        response.sendRedirect("listaClientes.jsp");
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
        <title>Editar Clientes</title>
    
    </head>
    <body>
        
        <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
                   <div id="area-menu"> 
                        <a href="../index.jsp">Home</a>  
                        <a href="listaClientes.jsp">Listar Clientes</a>
                        <a href="../fornecedor/listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
        
        <center>
            <h1>Editar Cliente</h1>
            <%if(erro!=null){%>
                    <div style="color:red"><%=erro%></div>
            <%}else{%>
                <br/>
                <form>
                    <div class="editar1">
                        <div class="form3">
                            <input type="hidden" name="i" value="<%=i%>"/>
                            Nome do Cliente<br/>
                            <input type="text" name="nome" value="<%=cliente.getNome()%>"/><br/>
                            CPF:<br/>
                            <input type="text" name="cpf" value="<%=cliente.getCpf()%>"/><br/>
                            RG:<br/>
                             <input type="text" name="rg" value="<%=cliente.getRg()%>"/><br/>   
                        </div>

                        <div class="form4">
                            Email: <br/>
                            <input type="text" name="email" value="<%=cliente.getEmail()%>"/><br/>
                            Telefone:<br/>
                            <input type="text" name="telefone" value="<%=cliente.getTelefone()%>"/><br/>
                            Endereço:<br/>
                            <input type="text" name="endereco" value="<%=cliente.getEndereco()%>"/><br/>
                            <br/><br/>
                            <input  class="salvar" type="submit" name="editar" value="Salvar Edição"><br/>
                        </div> 

                    </div>
                </form>
               
            <%}%>
        </center>
    </body>
</html>
