<%@page import="jums.UserDataDTO"%>
<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataBeans udb = (UserDataBeans)request.getAttribute("udb");
    
    
    HttpSession hs = request.getSession();
    UserDataDTO searchData = (UserDataDTO) hs.getAttribute("ResultDatail");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS更新結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        名前:<%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%= jh.exTypenum(udb.getType())%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        以上の内容で更新しました。<br>
            
    <form action="ResultDetail" method="POST">
      <input type="submit" value="詳細画面へ戻る" style="width:120px">
      <input type="hidden" name="id" value=<%= searchData.getUserID() %>> 
    </form>
    
    
    <%=jh.home()%>
    </body>
</html>
