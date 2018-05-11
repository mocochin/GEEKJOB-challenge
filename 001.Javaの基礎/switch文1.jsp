<%-- 
    Document   : switch文1
    Created on : 2018/05/11, 12:55:04
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
    int type = (2);
        switch(type) {
              case 1:
                  out.print("one");  
              break;
              case 2:
                  out.print("two");
              break;
              default:
                  out.print("想定外");
              break;
             }
    
    
    
    %>
    </h1>
    </body>
</html>
