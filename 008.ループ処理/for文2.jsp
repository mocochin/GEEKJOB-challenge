<%-- 
    Document   : for文2
    Created on : 2018/05/11, 16:03:37
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
        String sample = "A";
        
        for (int i = 0; i < 29; i++) {
          sample = sample + "A";
        }
         out.print(sample); 
        
        
        %>
        </h1>
    </body>
</html>
