<%-- 
    Document   : index
    Created on : 10 de mai. de 2021, 19:44:46
    Author     : rlarg
--%>

<%@page import="teste.Contato"%>
<%@page import="java.util.ArrayList"%>
<%@page import="teste.Base"%>
<%@page import="teste.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data hoje = new Data(10,5,2021);
    Data nasc = new Data(1,7,1979);
    
    ArrayList<Contato> contatos = Base.getContatos();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaOO</title>
    </head>
    <body>
        <h1>Java OO</h1>
        <h2>Testes com a classe 'Data'</h2>
        <h3>Hoje: <%= hoje.getData() %></h3>
        <h3>Meu nascimento: <%= nasc.getData() %></h3>
        <h3>Meu aniversário: <%= nasc.getAniversário() %></h3>
        <h2>Testes com as classes 'Base' e 'Contato'</h2>
        <table border='1'>
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Aniversário</th>
            </tr>
            <%for(Contato c: contatos){%>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getAniversário() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
