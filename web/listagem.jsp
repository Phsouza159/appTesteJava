<%-- 
    Document   : listagem
    Created on : 09/09/2019, 20:31:35
    Author     : laboratorio
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="servico.ContaServico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <style>
        th , td {
            text-align: center;
        }  
    </style>
        
    </head>
    <body>
        
        <section class='m-5'>
            <a class='btn btn-primary' href="/appTeste/cadastro.jsp">Cadastro</a>
        </section>
        
        <div class='mt-5  container d-flex justify-content-center'>
            <table class='table border shadow-sm'>
                <thead class="thead-dark">
                    <tr>
                        <th colspan='4' class='text-center'>Lista de contas</th>
                    </tr>
                    <tr>
                        <th>Id</th>
                        <th>Valor</th>
                        <th>Tipo</th>
                        <th>Data Cadastro</th>
                    </tr>
                </thead>
                <tbody>
                    
                        <%
                            
                            String id = "";
                            String valor = "";
                            String tipo = "";
                            String data = "";

                            ContaServico _contaSerivo = new ContaServico();
                            List<domain.Conta> _List = _contaSerivo.GetAll();

                            for (int i = 0; i < _List.size(); i++) {

                                domain.Conta item = _List.get(i);

                                id = String.valueOf(item.getId());
                                valor = String.valueOf(item.getValor());
                                tipo = item.getTipo() == 1 ? "A pagar" : "A Receber";
                                
                                data = new SimpleDateFormat("dd/MM/yyyy").format(item.getDataCadastro());

                        %>
                        <tr>
                            <td><%=id%></th>
                            <td><%=valor%></td>
                            <td><%=tipo%></td>
                            <td><%=data%></td>
                        </tr>
                        <% }%>
                    
                </tbody>
            </table>
        </div>
    </body>
</html>
