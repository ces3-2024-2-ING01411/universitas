<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>

<%
    //varible primitivas
    int a = 2;
    float x = 4;
    char myChart = '9';
    boolean isAvaible = false;

    /*
    * Variables de tipo objeto
    * */
    String name = new String("Carlos");
    Integer myNumber = Integer.valueOf(99);
%>
<br/>
<b>El resultado de la suma es <%= x + a %>
<br/>
<a href="hello-servlet">Hello Servlet</a>

    <p>El nombre es:<%= name.toLowerCase() %></p>
</body>
</html>


