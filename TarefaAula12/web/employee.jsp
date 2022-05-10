<%-- 
    Document   : employee
    Created on : 9 de mai de 2022, 21:21:10
    Author     : Carla Suemi Nonaka
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Funcionario> list = new ArrayList<>();
    int count = 0;
    try{
        count = Funcionario.getCount();
        list = Funcionario.getlist();
    }catch(Exception e){
        requestEx = e;
    }
  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionário</title>
    </head>
    <body>
        <a href="index.jsp">Voltar</a>
        <h2>Lista de Funcinários(<%= count %> registros)</h2>
        <%if (requestEx != null) {%>
        <h3 style="color: red"><%= requestEx.getMessage()%></h3>
        <%}%>
        <table border="1">
            <tr><th>id</th><th>Firstname</th><th>Lastname</th></tr>
            <% for(Funcionario f: list) { %>
            <tr>
                <td><%= f.getId()%></td>
                <td><%= f.getFirstname()%></td>
                <td><%= f.getLastname()%></td>
            </tr>
            <%}%>
            </tr>
        </table>
    </body>
</html>
