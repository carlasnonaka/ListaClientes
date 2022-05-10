<%-- 
    Document   : index
    Created on : 9 de mai de 2022, 14:33:27
    Author     : Carla Suemi Nonaka
--%>

<%@page import="models.Funcionario"%>
<%@page import="models.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    int count = 0;
    int count1 = 0;
    try{
        count = Cliente.getCount();
        count1 = Funcionario.getCount();
    }catch(Exception e){
        requestEx = e;
    }
  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JDBC </title>
    </head>
    <body>
        
        <h1>JDBC - Listas </h1>
        
        <a href="customers.jsp"><h2>Lista de Clientes  <%= count %> registros</h2></a>
        
        <a href="employee.jsp"><h2>Lista de Funcionários <%= count1 %> registros</h2></a>
            
            
    </body>
</html>
