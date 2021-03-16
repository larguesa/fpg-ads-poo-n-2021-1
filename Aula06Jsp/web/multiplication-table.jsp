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
        <title>Tabuada - JSP</title>
    </head>
    <body>
        <a href="index.html">Voltar</a>
        <h1>JSP</h1>
        <h2>Tabuada</h2>
        <%if(errorMessage != null){%>
        
            <div style="color:red"><%= errorMessage %></div>
        
        <%}else{%>
            
            <table>
                <%for(int i=1; i<=10; i++){%> 
                    <tr>
                        <td><%= n %></td>
                        <td>x</td>
                        <td><%= i %></td>
                        <td>=</td>
                        <td><%= (n*i) %></td>
                    </tr>
               <%}%> 
            </table>
        
        <%}%>
        <hr/>
        <h2>Nova tabuada:</h2>
        <form>
            <input type="number" name="n"/>
            <input type="submit" name="random" value="Gerar"/>
        </form>
    </body>
</html>