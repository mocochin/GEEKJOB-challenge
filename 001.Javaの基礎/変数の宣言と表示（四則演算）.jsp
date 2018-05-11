<%-- 
    Document   : 変数の宣言と表示（四則演算）
    Created on : 2018/05/11, 10:07:43
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
    final int BASE = 10;
    int num = 5;

    int tasu = BASE + num;

    int hiku = BASE - num;

    int kake = BASE * num;

    int wari = BASE / num;

    out.println(tasu);

    out.println(hiku);

    out.println(kake);

    out.println(wari);
    
    %>    

        </h1>
    </body>
</html>
