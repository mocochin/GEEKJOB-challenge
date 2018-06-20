<%-- 
    Document   : login
    Created on : 2018/06/18, 16:06:39
    Author     : PC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%    
        request.setCharacterEncoding("UTF-8");
        
        
        //HTMLのフォームから入力された文字をそれぞれに格納
        
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        
        
        
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;

        
        
        //エラーハンドリングを実装
        try {
            
            //mysqlに接続
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","imaishohei","1116moco");
            
            
            if(!(name.equals("")) && (!password.equals(""))){

                //型を変換
                int Password = Integer.parseInt(password);
                
                //sql文を構築
                db_st = db_con.prepareStatement("SELECT * FROM userjoho WHERE name = ? AND password = ?");

                //?の中に値を代入
                db_st.setString(1, name);
                db_st.setInt(2, Password);
                               
                //検索を実行
                db_data = db_st.executeQuery();

                boolean i = db_data.next();
                
                
                
                if (i){                    
                    response.sendRedirect( "sousa.jsp" ); 
                } else {                   
                    response.sendRedirect( "html.jsp" ); 
                }
                
                out.println(i);
                
                db_st.close();
                db_con.close();
                db_data.close();
                
                
            } else {
                out.println("すべての項目を入力してください"+ "<br><br><br>");
            }

                   
        // エラーハンドリング
        }  catch (SQLException e_sql) {    
            out.println("接続時にエラーが発生しました：" + e_sql.toString());
        }  catch (Exception e) {    
            out.println("接続時にエラーが発生しました：" + e.toString());
        } finally {
            if (db_con != null) {
                try {
                db_con.close();
                } catch (Exception e_con) {
                System.out.println (e_con.getMessage());
                }
            }
        }
         %>
    </body>
</html>
