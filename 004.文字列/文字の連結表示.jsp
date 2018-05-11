<%-- 
    Document   : 文字の連結表示
    Created on : 2018/05/11, 10:37:24
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
        final String NAME1 = "groove";
        final String NAME2 = "-";     
        final String NAME3 = "gear";

        out.print(NAME1 + NAME2 + NAME3);    
        %>   
        </h1>
    </body>
</html>
