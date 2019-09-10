<%-- 
    Document   : cadastro
    Created on : 09/09/2019, 19:47:57
    Author     : laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <section class='m-5'>
            <a href="/appTeste/listagem.jsp" class='btn btn-primary'>Listagem</a>
        </section>
        
        <div class='mt-5  container d-flex justify-content-center'>
            <form action="api.Conta" method='POST' class='form-group' >
                <div class="card shadow-sm" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Cadastrar um conta</h5>
                        
                        <label>Digite um valor</label>
                        <br/>
                        <input type='number' step="0.01" name='valor'  class='form-control'>
                        
                        <br/>
                        
                        <label>Selecione o tipo:</label>
                        <br/>
                       
                        <select class='form-control' name='tipo'>
                            <option value='1'>A pagar</option>
                            <option value='2'>A receber</option>
                        </select>
                        
                        <section class='mt-2'>
                           
                        <button type='submit' class='btn btn-primary'>Enviar</button>
                        <button type='reset' class='btn btn-dark'>Limpar</button>
                        </section>
                    </div>
                </div>
            </form>

        </div>
    </body>
</html>
