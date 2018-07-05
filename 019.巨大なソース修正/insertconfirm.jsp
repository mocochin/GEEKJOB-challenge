<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans data = (UserDataBeans)hs.getAttribute("DATA");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
        <%-- すべての項目が空白でないときに実行する --%>
    <% if(!data.getName().equals("") && 
          !data.getYear().equals("") && 
          !data.getMonth().equals("") && 
          !data.getDay().equals("") &&
          !String.valueOf(data.getType()).equals("") && 
          !data.getTell().equals("") &&
          !data.getComment().equals("") ){ %>
        <h1>登録確認</h1>
        名前:<%=data.getName()%><br>
        生年月日:<%= data.getYear()+"年"+data.getMonth()+"月"+data.getDay()+"日"%><br>
        種別:<%= String.valueOf(data.getType())%><br>
        電話番号:<%= data.getTell()%><br>
        自己紹介:<%= data.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
    <% }else{ %>     
            <%if( data.getName().equals("")){%>
                <h2>名前の入力がされていません</h2>
            <%} if( data.getYear().equals("")){%>
                <h2>年の入力がされていません</h2>
            <%} if( data.getMonth().equals("")){%>
                <h2>月の入力がされていません</h2>
            <%} if( data.getDay().equals("")){%>
                <h2>日の入力がされていません</h2>
            <%} if( String.valueOf(data.getType()).equals("")){%>
                <h2>種別の入力がされていません</h2>
            <%} if( data.getTell().equals("")){%>
                <h2>電話番号の入力がされていません</h2>
            <%} if( data.getComment().equals("")){%>
                <h2>自己紹介の入力がされていません</h2>
            <%} 
      } %>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
