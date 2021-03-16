<%-- 
    Document   : server-time
    Created on : 15 de mar. de 2021, 17:40:13
    Author     : rlarg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sata/hora - JSP</title>
    </head>
    <body>
        <a href="index.html">Voltar</a>
        <h1>JSP</h1>
        <h2>Data/hora no servidor</h2>
        <h3>...com Scriptlet</h3>
        <%
            java.util.Date now = new java.util.Date();
            out.println(now);
        %>
        <h3>...com Expression</h3>
        <%= new java.util.Date() %>
    </body>
</html>
