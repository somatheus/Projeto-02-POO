<%@page import="br.sp.gov.fatec.objetos.Fornecedor"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <title>Listar Fornecedores</title>
        
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
     Formatação Tabela
   --------------------------*/
   table{
     background-color:LightBlue;  
     border-radius: 30px;
     width: 999px;
   }   
   
   td{
       padding: 7px;
   }
   th{
       font-size: 1.5em;
   }
   
   .exluir{
       color:#FFF;
       background-color: Tomato;
   }
   .excluir:hover{
       color:Tomato;
       background-color:#FFF; 
   }
   
   .alterar:hover{
       color:palegreen;
       background-color: #FFF;
   }
   .alterar{
       color:#FFF;
       background-color: PaleGreen;
   }
   
   td:hover{
       color: white;
       background-color:SteelBlue; ;
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

        <h1>Lista de Fornecedores</h1>
        <p><a href="adicionaFornecedor.jsp">Adicionar novo fornecedor</a></p>
        
    <center>
        
    
        <table  style="text-align: center">
            <tr>
                <th>Nome da empresa</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th colspan="3">Ação</th>
            </tr>
            <%for(Fornecedor fornecedor : DB.getFornecedores()){%>
                <tr>
                    <td><%=fornecedor.getNome()%></td>
                    <td><%=fornecedor.getRazaoSocial()%></td>
                    <td><%=fornecedor.getCnpj()%></td>
                    <td><%=fornecedor.getEmail()%></td>
                    <td><%=fornecedor.getTelefone()%></td>
                    <td><%=fornecedor.getEndereco()%></td>
                    <td>
                        <% int i = DB.getFornecedores().indexOf(fornecedor);%>
                        <a class="alterar" href="editaFornecedor.jsp?i=<%=i%>">Alterar</a>
                    </td>
                    <td>
                        <a class ="exluir" href="excluiFornecedor.jsp?i=<%=i%>">Excluir</a>
                    </td>
                </tr>
            <%}%>
        </table>
    </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
