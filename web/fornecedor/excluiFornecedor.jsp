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
            if(request.getParameter("excluir")!=null){
                DB.getFornecedores().remove(i);
                response.sendRedirect("listaFornecedores.jsp");
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
        <center>
            <h1>Excluir contato</h1>
                <h3><a href="../index.jsp">Início</a></h3>
                <h3><a href="listaFornecedores.jsp">Lista de fornecedores</a></h3>
                <p>Deseja excluir?</p>
                <%if(erro!=null){%>
                        <div style="color:red"><%=erro%></div>
                <%}else{%>
                    <br/>
                    <form method="post">
                        <input type="hidden" name="i" value="<%=i%>"/>
                        <p>Nome do fornecedor: <%=fornecedor.getNome()%><p/>
                        <p>CNPJ: <%=fornecedor.getCnpj()%><p/>
                        <br/>
                        <input type="submit" name="excluir" value="Excluir"><br/>
                    </form>
                <%}%>
            </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
