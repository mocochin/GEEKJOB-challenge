<%-- 
    Document   : 配列の作成
    Created on : 2018/05/11, 13:52:59
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
       String[] data = {"10","100","soeda","hayashi","-20","118","END"};
       out.print(data[0]);
       out.print(data[1]);       
       out.print(data[2]);
       out.print(data[3]);
       out.print(data[4]);
       out.print(data[5]);
       out.print(data[6]);
        %>
        </h1>
    </body>
</html>
