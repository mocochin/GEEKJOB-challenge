<%-- 
    Document   : challenge1-1
    Created on : 2018/05/09, 15:26:21
    Author     : PC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%
String text = "私の名前は今井翔平です。";

out.print(text);
%>
        </h1>
    </body>
</html>
