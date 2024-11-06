<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>

<%
    int a = 2;
    float x = 4;
%>
<br/>
<b>El resultado de la suma es <%= x + a %>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>