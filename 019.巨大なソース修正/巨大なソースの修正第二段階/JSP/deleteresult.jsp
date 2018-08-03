
<%@page import="jums.JumsHelper"%>
<%@page import="jums.UserDataBeans"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>削除結果画面</title>
    </head>
    <body>
    <h1>削除確認</h1>
    削除しました。<br><br>
    <%
        HttpSession nyuryoku = request.getSession();
        UserDataBeans udb = new UserDataBeans();
        udb = (UserDataBeans)nyuryoku.getAttribute("Data1");
        JumsHelper jh = JumsHelper.getInstance();
    %>
    <form action="SearchResult" method="POST">
      <input type="submit" value="検索結果画面へ" style="width:120px">
      <input type="hidden" name="name" value=<%= udb.getName() %>>
      <input type="hidden" name="year" value=<%= udb.getYear() %>>
      <input type="hidden" name="type" value=<%= udb.getType() %>>
    </form>
    <br>
        <%=jh.home()%>
    </body>
</html>
