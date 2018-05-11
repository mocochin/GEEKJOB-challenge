<%-- 
    Document   : while文
    Created on : 2018/05/11, 16:43:00
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
        double 	 A = 1000;
        while(A >= 100) {
        A = A / 2;
    
        }

        out.print(A);
        
        
        %>
        </h1>
    </body>
</html>
