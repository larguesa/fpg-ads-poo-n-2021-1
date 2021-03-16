<%-- 
    Document   : server-time
    Created on : 15 de mar. de 2021, 17:40:13
    Author     : rlarg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    double n=0;
    String errorMessage = null;
    try{
        n = Double.parseDouble(request.getParameter("n"));
    }catch(Exception ex){
        errorMessage = "Erro na leitura do parâmetro";
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números aleatórios - JSP</title>
    </head>
    <body>
        <a href="index.html">Voltar</a>
        <h1>JSP</h1>
        <h2>Números aleatórios</h2>
        <%if(errorMessage != null){%>
        
            <div style="color:red"><%= errorMessage %></div>
        
        <%}else{%>
            
            <table border="1">
                <tr>
                    <th>Índice</th>
                    <th>Número</th>
                </tr>
                <%for(int i=1; i<=n; i++){%> 
                    <tr>
                        <th><%= i %></th>
                        <td><%= (int)(Math.random()*100) %></td>
                    </tr>
               <%}%> 
            </table>
        
        <%}%>
        <hr/>
        <h2>Novos números aleatórios:</h2>
        <form>
            <input type="number" name="n"/>
            <input type="submit" name="random" value="Gerar"/>
        </form>
    </body>
</html>