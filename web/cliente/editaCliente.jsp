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
        <title>Editar Fornecedor</title>
        
         <style>
    body{
    background: SteelBlue;
     }
    /*------------------------
      Formatação Cabeçalho
    --------------------------*/
    #area-cabeçalho{
    background-color:LightBlue;
    padding: 15px;
    text-align:center;
    }


    h1{
    color: #4e4e4e;
    font-size: 2.5em;
    }

    a:link, a:visited{
    color:#FFF;
    padding: 8px 12px;

    }

    a{
    color:#FFF;
    text-decoration: none;
    font-size: 0.9em;
    padding: 0.5 1.5em;
    }

    a:hover{
    color:SteelBlue;
    background-color: #FFF;
    border-radius: 40px;
    }

    #area-menu{
        padding: 10px;
    }
    
    #area-menu a{
        font-size: 1.5em;
    }

    h1{
        color:#4e4e4e;
        font-size: 2.5em;
        text-align: center;
    }
    
    p{
        font-size: 2.0em;
        text-align: center;
    }

    .branco{
        color:white;
    }

    .blue{
        color:SteelBlue;
    }
    
    /*------------------------
      Formatação INPUT
    --------------------------*/
    
    .salvar{
        width: 100px;
        padding: 5px;
        color:white;
        background-color: palegreen;
    }
    
    .salvar:hover{
         color:palegreen;
         background-color: #FFF;
    }
    
  
    
    form{
        width: 450px;
    }
    
    .form1{
      float: left;
      width: 200px;  
      margin-bottom: 15px;
    }
    
    .form2{
      float:right; 
      width: 225px;  
      margin-bottom: 15px;
    }
  </style>
    
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
        
        <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
                
                   <div id="area-menu"> 
                        <a href="index.jsp">Home</a>  
                        <a href="cliente/listaClientes.jsp">Listar Clientes</a>
                        <a href="fornecedor/listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
        
        <center>
            <h1>Editar Cliente</h1>
            <%if(erro!=null){%>
                    <div style="color:red"><%=erro%></div>
            <%}else{%>
                <br/>
                <form method="post">
                    
                    <div class="form1">
                        <input type="hidden" name="i" value="<%=i%>"/>
                    Nome do Cliente<br/>
                    <input type="text" name="nome" value="<%=cliente.getNome()%>"/><br/>
                    CPF:<br/>
                    <input type="text" name="razaoSocial" value="<%=cliente.getRg()%>"/><br/>
                    RG:<br/>
                     <input type="text" name="cnpj" value="<%=cliente.getRg()%>"/><br/>   
                    </div>
                    
                    <div class="form2">
                        Email: <br/>
                    <input type="text" name="email" value="<%=cliente.getEmail()%>"/><br/>
                    Telefone:<br/>
                    <input type="text" name="telefone" value="<%=cliente.getTelefone()%>"/><br/>
                    Endereço:<br/>
                    <input type="text" name="endereco" value="<%=cliente.getEndereco()%>"/><br/>
                    <br/><br/>
                    <input  class="salvar" type="submit" name="editar" value="Salvar Edição"><br/>
                    </div> 
                </form>
            <%}%>
        </center>
    </body>
</html>
