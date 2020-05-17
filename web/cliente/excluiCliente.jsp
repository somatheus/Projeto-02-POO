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
            if(request.getParameter("excluir")!=null){
                DB.getClientes().remove(i);
                response.sendRedirect("listaClientes.jsp");
            }
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <title>JSP Page</title>
        
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
    
    .excluir{
        width: 100px;
        padding: 5px;
        color:#FFF;
        background-color: Tomato;
    }
    
    .excluir:hover{
        color:Tomato;
        background-color: #FFF;
    }
    
  
    
    form{
        width: 450px;
        background-color:LightBlue ;
        text-align: center;
        border-radius: 40px;
        padding: 5px;
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
            <h1>Excluir Cliente</h1>

                <p>Deseja excluir?</p>
                <%if(erro!=null){%>
                        <div style="color:red"><%=erro%></div>
                <%}else{%>
                    <br/>
                    <form method="post">
                        <input type="hidden" name="i" value="<%=i%>"/>
                        <p>Nome do fornecedor: <%=cliente.getNome()%><p/>
                        <p>CNPJ: <%=cliente.getCpf()%><p/>
                        <br/>
                        <input  class="excluir" type="submit" name="excluir" value="Excluir"><br/>
                    </form>
                <%}%>
            </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
