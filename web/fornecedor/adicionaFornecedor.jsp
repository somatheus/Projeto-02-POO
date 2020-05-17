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
    
    .botão{
        width: 100px;
        padding: 5px;
        color:white;
        background-color: palegreen;
    }
    
    .botão:hover{
         color:palegreen;
         background-color: #FFF;
    }
    
    .botão2{
        width: 100px;
        padding: 5px;
        color:#FFF;
        background-color: Tomato;
    }
    
    .botão2:hover{
        color:Tomato;
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
        <h1>Adicionar Fornecedor</h1>
            <form>
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
            </form>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
