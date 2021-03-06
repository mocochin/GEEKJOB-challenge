<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="jums.UserDataDTO"%>
<%@page import="jums.JumsHelper" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    HttpSession hs = request.getSession();
    UserDataDTO searchData = (UserDataDTO) hs.getAttribute("ResultDatail");
    Date date = searchData.getBirthday();
    String year = new SimpleDateFormat("yyyy").format(date);
    String month = new SimpleDateFormat("MM").format(date);
    String day = new SimpleDateFormat("dd").format(date);
    int Year = Integer.parseInt(year);
    int Month = Integer.parseInt(month);
    int Day = Integer.parseInt(day);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS変更画面</title>
    </head>
    <body>
        
    <form action="UpdateResult" method="POST">
        名前:
        <input type="text" name="name" value="<% out.print(searchData.getName()); %>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="">----</option>
            <% for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" <% if(Year == i){out.print("selected");}%>><%=i%></option>
            <% } %>
        </select>年
        <select name="month">
            <option value="">--</option>
            <% for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"<% if(Month == i){out.print("selected");}%>><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="">--</option>
            <% for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"<% if(Day == i){out.print("selected");}%>><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
            <% for(int i = 1; i<=3; i++){ %>
            <input type="radio" name="type" value="<%=i%>"<%if(searchData.getType() == i){out.print("checked");}%>><%=jh.exTypenum(i)%><br>
            <% } %>
        <br>

        電話番号:
        <input type="text" name="tell" value="<% out.print(searchData.getTell()); %>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%out.print(searchData.getComment());%></textarea><br><br>
        
        <input type="submit" name="btnSubmit" value="確認画面へ進む"><br><br>
        
        <input type="button" value="詳細画面へ戻る" onClick="history.back()"><br><br>
        
    </form>
        <br>
        <%=jh.home()%>
    </body>
</html>
