<%@page import="java.util.ArrayList"%>
<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> udd = (ArrayList<UserDataDTO>)request.getAttribute("resultData");
    UserDataDTO resultUd = new UserDataDTO();
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        
        <%if(udd != null){%>
        <table border=1>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>           
            <% for ( int i = 0; i <= udd.size() - 1; i++ ){ 
            resultUd = udd.get(i);
            %>
            <tr>
                <td><a href="ResultDetail?id=<%= resultUd.getUserID()%>"><%= resultUd.getName()%></a></td>
                <td><%= resultUd.getBirthday()%></td>
                <td><%= jh.exTypenum(resultUd.getType())%></td>
                <td><%= resultUd.getNewDate()%></td>
             </tr>
            <% } %>
        <% } else { %>
        <h2>条件に該当するユーザーは登録されていません</h2>
        <% } %>
        </table>
    </body>
    <%=jh.home()%>
</html>
