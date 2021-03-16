<%-- 
    Document   : server-time
    Created on : 15 de mar. de 2021, 17:40:13
    Author     : rlarg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    double n1=0, n2=0, soma=0;
    String errorMessage = null;
    try{
        n1 = Double.parseDouble(request.getParameter("n1"));
        n2 = Double.parseDouble(request.getParameter("n2"));
        soma = n1+n2;
    }catch(Exception ex){
        errorMessage = "Erro na leitura dos parâmetros";
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma - JSP</title>
    </head>
    <body>
        <a href="index.html">Voltar</a>
        <h1>JSP</h1>
        <h2>Soma de dois números</h2>
        <%if(errorMessage != null){%>
        
            <div style="color:red"><%= errorMessage %></div>
        
        <%}else{%>
        
            <div><%= n1 %></div>+
            <div><%= n2 %></div>=
            <div><%= soma %></div>
        
        <%}%>
        <hr/>
        <h2>Nova soma:</h2>
        <form>
            <input type="number" name="n1"/>+
            <input type="number" name="n2"/>
            <input type="submit" name="sum" value="="/>
        </form>
    </body>
</html>