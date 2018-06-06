<%-- 
    Document   : Session
    Created on : 2018/06/06, 12:01:51
    Author     : PC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" 
        import = "javax.servlet.http.HttpSession" import = "java.util.Date" 
        import = "java.text.SimpleDateFormat" import = "javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    HttpSession hs = request.getSession();
    
    if ( hs.getAttribute("LastLogin") != null) {
        out.print ("前回アクセスした時刻は、" + hs.getAttribute("LastLogin") + "<br>"); 
    } else {
        out.print("初ログインです" + "<br>");
    }
    
    Date now = new Date();
            
    SimpleDateFormat sdf =
    new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            
            
    out.print( "現在の時刻は、" + sdf.format(now) + "<br>");
        
    

    hs.setAttribute("LastLogin", sdf.format(now));
        
      
        
        
        
        
        
        
        
        
        %>
        
    </body>
</html>
