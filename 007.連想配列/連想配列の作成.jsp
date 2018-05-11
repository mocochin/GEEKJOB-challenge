<%-- 
    Document   : 連想配列の作成
    Created on : 2018/05/11, 14:42:22
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
         <%@ page import="java.util.HashMap" %>
         <%
        HashMap<String, String> prof = new HashMap<String, String>();    
        prof.put("1", "AAA");  
        prof.put("hello", "world");
        prof.put("soeda", "33");
        prof.put("20", "20");
        
        out.print("Name:" + prof.get("1"));
         %>   
            
        </h1>
    </body>
</html>
