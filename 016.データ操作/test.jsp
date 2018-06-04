<%-- 
    Document   : test
    Created on : 2018/06/04, 15:01:41
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
        <%
        request.setCharacterEncoding("UTF-8");
        out.print("名前は" + request.getParameter("txtName") +"<br>");
        out.print("性別は" + request.getParameter("rdoSample") +"<br>");
        out.print("趣味は" + request.getParameter("mulText") +"<br>");   
        %>
    </body>
</html>
