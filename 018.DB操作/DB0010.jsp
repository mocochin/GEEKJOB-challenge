<%-- 
    Document   : DB0010
    Created on : 2018/06/15, 15:35:47
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
        String ID = request.getParameter("txtID");
        
        
        if(ID == null){
            ID = "";
        }  
        
        
        
        
        
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        
       
        
        
        //エラーハンドリングを実装
        try {
            
            //mysqlに接続
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","imaishohei","1116moco");

            
            if(ID != "" ){
                //sql文を構築
                db_st = db_con.prepareStatement("DELETE FROM profiles WHERE profilesID = ?");
                
                //IDを数値に変換
                int id = Integer.parseInt(ID); 
                
                //?の中に値を代入
                db_st.setInt(1, id);
                

                //sql文を実行
                int i = db_st.executeUpdate();

                out.println("データの削除完了しました"+ "<br><br><br>");
            
                
            } else {
                out.println("IDを入力してください"+ "<br><br><br>");
            }

            
            out.println("全件検索します"+ "<br><br>");
            //全件検索
            db_st = db_con.prepareStatement("SELECT * from profiles");

            db_data = db_st.executeQuery();

            while(db_data.next()){
                out.print(db_data.getString("profilesID") + " ");
                out.print(db_data.getString("name") + " ");
                out.print(db_data.getString("tel") + " ");
                out.print(db_data.getString("age") + " ");
                out.print(db_data.getString("birthday") + "<br>");
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
