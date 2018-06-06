<%-- 
    Document   : Session2
    Created on : 2018/06/06, 13:30:29
    Author     : PC1
--%>


<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8" 
        import = "javax.servlet.http.Cookie" import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        String name = "";
        String shumi = "";
        String seibetsu = "";
        String encodedData = "";
        String otoko = "";
        String onna = "";
        String seibetsu2 = "";
        
        //クッキー取得
        Cookie[] cs = request.getCookies();
            
            //氏名のデータを取得
            if (cs != null) {
                for (int i = 0; i < cs.length; i++) {
                    if (cs[i].getName().equals("Data")) {                                               
                       String cookieData = cs[i].getValue();
                       //デコード済み文字列の生成
                       String decodedData = URLDecoder.decode(cookieData,"UTF-8");                       
                       name = decodedData;
                       break;
                    }
                }
            }
            //趣味のデータを取得
            if (cs != null) {
                for (int i = 0; i < cs.length; i++) {     
                    if (cs[i].getName().equals("Data2")){
                        String cookieData = cs[i].getValue();
                       //デコード済み文字列の生成
                        String decodedData = URLDecoder.decode(cookieData,"UTF-8");                       
                        shumi = decodedData;
                        break;
                    }
                }
            }
            //性別のデータを取得
            if (cs != null) {
                for (int i = 0; i < cs.length; i++) {
            
                    if (cs[i].getName().equals("Data3")){
                        String cookieData = cs[i].getValue();
                        //デコード済み文字列の生成
                        String decodedData = URLDecoder.decode(cookieData,"UTF-8");
                        seibetsu2 = decodedData;
                        //男か女か判断
                            if(seibetsu2.equals("男")){
                                otoko = "checked";
                            } else if(seibetsu2.equals("女")){
                                onna = "checked";
                            }   
                    break;
                    }
                }
            }
        %>
        
        
        
        <%--HTML作成--%>
        <form action="Session2.jsp" method="post">
            氏名<input type="text" name="txtName" value="<%=name%>"><br><br>
            男<input type="radio" name="rdoSample" value="男" <%=otoko%>>
            女<input type="radio" name="rdoSample" value="女" <%=onna%>>  <br><br>         
            趣味<textarea name="mulText" ><%=shumi%></textarea><br><br>
            <input type="submit" name="btnSubmit" value="送信">
        </form> 
            
        
        <%
        //文字コードを指定
        request.setCharacterEncoding("UTF-8");
        
        //入力した値をString型で取得
        name = request.getParameter("txtName");
        shumi = request.getParameter("mulText");
        seibetsu = request.getParameter("rdoSample");
        
        //名前の値をエンコードし、クッキーに追加    
        if (name != null){    
            encodedData = URLEncoder.encode( name,"UTF-8" );

            Cookie c = new Cookie("Data",encodedData);

            response.addCookie(c);
        }
        //趣味の値をエンコードし、クッキーに追加
        if (shumi != null){    
            encodedData = URLEncoder.encode( shumi,"UTF-8" );

            Cookie c = new Cookie("Data2",encodedData);

            response.addCookie(c);
        }
        //趣味の値をエンコードし、クッキーに追加
        if (seibetsu != null){
            encodedData = URLEncoder.encode( seibetsu,"UTF-8" );
            
            Cookie c = new Cookie("Data3", encodedData);
            
            response.addCookie(c);
            
        }

        
        %>
    </body>
</html>