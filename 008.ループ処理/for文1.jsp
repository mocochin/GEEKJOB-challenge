<%-- 
    Document   : for文1
    Created on : 2018/05/11, 15:12:40
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
        long All = 8;
        for (int i = 1; i < 20; i++) {
          All = All * 8;
        }
        out.print(All);
        
        %>
        </h1>
    </body>
</html>
