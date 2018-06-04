<%-- 
    Document   : kueriString
    Created on : 2018/06/04, 16:03:02
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
        
        String Total = request.getParameter("total");
        
        String Count = request.getParameter("count");
        
        String Type = request.getParameter("type");
        
        if(Type.equals("1")){            
            out.print("この商品は雑貨です"+ "<br>");
        } else if (Type.equals("2")) {
            out.print("この商品は生鮮食品です"+ "<br>");
        } else {
            out.print("その他"+ "<br>");
        }
        
        int T = Integer.parseInt(Total);
        int C = Integer.parseInt(Count);
        
        double All = T / C ;
        
        out.print("一つ当たりの金額は" + All + "円です" + "<br>");
        
        
        double point = 0;
        
        if(T >= 5000){
            point = T * 0.05;
        } else if ( T < 5000 || T >= 3000){
            point = T * 0.04;
        } 

        out.print("ポイントは" + point + "です");
        
        
        
        
        
        
        %>
    </body>
</html>
