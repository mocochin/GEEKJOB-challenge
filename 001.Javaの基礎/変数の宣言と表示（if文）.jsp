<%-- 
    Document   : 変数の宣言と表示（if文）
    Created on : 2018/05/11, 10:54:38
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
        int num = 3;


        if (num == 1) {
           out.print("1です！");
          } else if (num == 2) {
           out.print("プログラミングキャンプ！");
          } else {
           out.print("その他です！");
          }
        
        
        %>
        </h1>
    </body>
</html>
