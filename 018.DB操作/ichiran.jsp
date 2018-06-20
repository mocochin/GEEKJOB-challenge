<%-- 
    Document   : ichiran
    Created on : 2018/06/20, 10:58:38
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
        
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        
        
        //エラーハンドリングを実装
        try {
            
            //mysqlに接続
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","imaishohei","1116moco");

            
            //全件検索
            db_st = db_con.prepareStatement("SELECT * from shohinnjoho");

            db_data = db_st.executeQuery();

            while(db_data.next()){
                out.print(db_data.getString("num") + " ");
                out.print(db_data.getString("name") + " ");
                out.print(db_data.getString("price") + " ");
                out.print(db_data.getString("category") + " ");
                out.print(db_data.getString("day") + "<br>");
            }

            db_st.close();
            db_con.close();
            db_data.close();

            
            
        
            
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
