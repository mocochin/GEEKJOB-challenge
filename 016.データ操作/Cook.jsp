<%-- 
    Document   : Cook
    Created on : 2018/06/06, 11:11:05
    Author     : PC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "java.util.Date" import = "java.text.SimpleDateFormat" import = "javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Date now = new Date();
            
            SimpleDateFormat sdf =
            new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            
            
            out.print( "現在の時刻は、" + sdf.format(now) + "<br>");
        
        
            Cookie cookie = new Cookie("LastLogin", sdf.format(now));
            
            
            response.addCookie(cookie);
            
            
            Cookie[] cs = request.getCookies();
            
                      
            
            if (cs != null) {
                for (int i = 0; i < cs.length; i++) {
                   if (cs[i].getName().equals("LastLogin")) { 
                       out.print("前回アクセスした時間は、" + cs[i].getValue());
                       break;
                   }
                }
            }
        
        
        
        %>
    </body>
</html>
