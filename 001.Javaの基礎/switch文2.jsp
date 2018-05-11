<%-- 
    Document   : switch文2
    Created on : 2018/05/11, 13:05:52
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
        
            char a = 'い';
            switch(a) {
            case ('A'):
                out.print("英語");
            break;
            case ('あ'):
                out.print("日本語");
            break;
            
} 
        
        
        %>
        </h1>
    </body>
</html>
