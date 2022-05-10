<%-- 
    Document   : customers
    Created on : 9 de mai de 2022, 21:11:52
    Author     : Carla Suemi Nonaka
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Cliente> list = new ArrayList<>();
    int count = 0;
    try{
        count = Cliente.getCount();
        list = Cliente.getlist();
    }catch(Exception e){
        requestEx = e;
    }
  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <a href="index.jsp">Voltar</a>
        <h1>JDBC</h1>
        <h2>Lista de Clientes(<%= count %> registros)</h2>
        <%if (requestEx != null) {%>
        <h3 style="color: red"><%= requestEx.getMessage()%></h3>
        <%}%>
        <table border="1">
            <tr><th>id</th><th>Firstname</th><th>Lastname</th><th>Company</th></tr>
            <% for(Cliente c: list) { %>
            <tr>
                <td><%= c.getId()%></td>
                <td><%= c.getName()%></td>
                <td><%= c.getLastname()%></td>
                <td><%= c.getCompany()%></td>
            </tr>
            <%}%>
            </tr>
        </table>
    </body>
</html>
