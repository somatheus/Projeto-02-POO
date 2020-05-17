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
            <h1>Excluir Cliente</h1>

                <%if(erro!=null){%>
                        <div style="color:red"><%=erro%></div>
                <%}else{%>
                    <br/>
                    <form class="formexcluir" method="post">
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
