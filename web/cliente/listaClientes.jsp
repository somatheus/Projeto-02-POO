<%@page import="br.sp.gov.fatec.objetos.Cliente"%>
<%@page import="br.sp.gov.fatec.controle.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
      p{
        font-size: 2.0em;
        text-align: center;
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
         <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <div id="area-cabeçalho"><!-- Inicio cabeçalho-->
            <div id="area-menu"> 
                <a href="../index.jsp">Home</a>  
                <a href="listaClientes.jsp">Listar Clientes</a>
                <a href="../fornecedor/listaFornecedores.jsp">Listar Fornecedores</a>
                </div>
            </div><!-- Fim cabeçalho-->
            
        <div style="text-align: center">
            <h1>Lista de Clientes</h1>
            <p><a href="adicionaCliente.jsp">Adicionar novo Cliente</a></p>
            
            <center>
                <table  width="700">
                    <tr>
                        <th>Índice Clientes</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>RG</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                        <th colspan="3">Ação</th>
                    </tr>
                    <%for (Cliente cliente : DB.getClientes()) {%>
                    <tr>
                        <td><%= DB.getClientes().indexOf(cliente)%></td>
                        <td><%= cliente.getNome()%></td>
                        <td><%= cliente.getCpf()%></td>
                        <td><%= cliente.getRg()%></td>
                        <td><%= cliente.getEmail()%></td>
                        <td><%= cliente.getTelefone()%></td>
                        <td><%= cliente.getEndereco()%></td>
                        <td>
                        <% int i = DB.getClientes().indexOf(cliente);%>
                        <a class="alterar" href="editaCliente.jsp?i=<%=i%>">Alterar</a>
                    </td>
                    <td>
                        <a class="exluir" href="excluiCliente.jsp?i=<%=i%>">Excluir</a>
                    </td>
                   
                    
                    <%}%>
                </table>
                
            </center>
                
            <br/>
        </div>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
