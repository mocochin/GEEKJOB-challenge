<%-- 
    Document   : for文3
    Created on : 2018/05/11, 16:14:10
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
        long All = 0;
        for (int i = 1; i <= 100; i++) {
          All = All + i;
        }
        out.print(All);
        
        
        
        %>
        </h1>
    </body>
</html>
