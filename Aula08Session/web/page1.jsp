<%-- 
    Document   : index
    Created on : 29 de mar. de 2021, 19:51:09
    Author     : rlarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page 1 - SesssionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <%if(session.getAttribute("session.username") == null){%>
            <div style="color:red">
                Você precisa estar identificado para ter acesso a este conteúdo.
            </div>
        <%}else{%>
            <h2>PAGE 1</h2>
            <p>Página 1 (hum) do site de demonstração do HttpSession.</p>
        <%}%>
    </body>
</html>
