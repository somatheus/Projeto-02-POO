<%@page import="br.sp.gov.fatec.objetos.Cliente"%>
<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Home</title>   
        
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

#area-logo, #area-menu{
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

h1{
    color:#4e4e4e;
    font-size: 2.5em;
}

.branco{
    color:white;
}

.blue{
    color:SteelBlue;
}

/*------------------------
  Total Cadastros
--------------------------*/
.home{
    
    width: 440px;
    margin: 0 auto;
    text-align: center;
    
}

.cadastro{
   width: 210px; 
   float:left ;
   background: LightBlue;
   border-radius: 40px;
}

.cadastro2{
    width: 210px;   
    float:right ;
    background: LightBlue;
    border-radius: 40px;
   
}
.rodape{
     width: 500px;  
     padding: 15px;
 }

 
 h3{
     font-size: 1.0em;
 }
 
 .cadastro, a p{
     font-size: 1.3em;
 }
  .cadastro2, a p{
     font-size: 1.3em;
 }
 
 /*------------------------
  Total Cadastros
--------------------------*/
 
 .rodape{
     
    width: 100%;
    margin-top: 50px;
    text-align: center;
 }
 
 .rodape p{
     float: both;
     font-size: 1.5em;
     width: 440px;
 }
            
        </style>
        
    </head>
    
    <body>
        <main>
            
            <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
                <div id="area-logo"> 
                    <h1 class="blue"> Cadastro<span class="branco">Tec</span></h1>
                </div>
                
                   <div id="area-menu"> 
                        <a href="index.jsp">Home</a>  
                        <a href="cliente/listaClientes.jsp">Listar Clientes</a>
                        <a href="fornecedor/listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
            
            <div class="home"><!-- Inicio home-->
                <h1>Total de Cadastros</h1>
                <div class="cadastro">
                    <h3>Clientes</h3>
                    <p>N° de Clientes: <%=DB.getClientes().size()%></p>
                    <a href="cliente/adicionaCliente.jsp">Adicionar cliente</a><br/><br/>
                </div>
                <div class="cadastro2">
                    <h3>Fornecedores</h3>
                    <p>N° de Fornecedores: <%=DB.getFornecedores().size()%></p>                    
                    <a class="btn btn-primary" href="fornecedor/adicionaFornecedor.jsp" role="button">Adicionar fornecedor</a><br/><br/>
                </div> <br><br><br>
                
                <div class="rodape">
                    <%@include file="WEB-INF/jspf/footer.jspf" %>
                </div>
            </div> <!-- Fim home--> 
       
        </main>
        <br><br><br>
    </body>
</html>
