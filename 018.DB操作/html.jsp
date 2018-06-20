<%-- 
    Document   : html
    Created on : 2018/06/18, 14:25:36
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
        <header>
        <h1>TestLogin</h1>
        <p>ログインフォーム</p>
        </header>

        <main>
        <div>
        <form method="post" action="./login.jsp">
        <p>ユーザー名<input type="text" name="name" placeholder="username"></p>
        <p>パスワード<input type="password" name="password" placeholder="PASSWORD"></p>
        <p><input type="submit" value="ログイン"></p>
        </form>
        </div>
        </main>
    </body>
</html>
