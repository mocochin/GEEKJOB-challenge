<%-- 
    Document   : sousa
    Created on : 2018/06/18, 17:47:13
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
        
        商品登録<br>
        <form action="./touroku.jsp" method="post">
      
            ナンバー　　　<input type="text" name="num"><br>
            名前　　　　　<input type="text" name="name"><br>
            値段　　　　　<input type="text" name="price">円<br>
            カテゴリー　　<input type="text" name="category"><br>
            登録日　　　　<input type="text" name="day" placeholder="0000-00-00"><br>
            
            <input type="submit" name="btnSubmit" value="送信"><br><br><br>
        </form>
        
        
        商品削除<br>
        <form action="./sakujo.jsp" method="post">
      
            削除するナンバーを入力　<input type="text" name="num"><br>
            <input type="submit" name="btnSubmit" value="送信"><br><br><br>
        </form>
        
        
        
        
         
        商品一覧<br>
        <form action="./ichiran.jsp" method="post">
      
            <input type="submit" name="kensaku" value="検索"><br><br><br>
            
        </form> 
        
        
    </body>
</html>
