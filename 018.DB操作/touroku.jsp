<%-- 
    Document   : touroku
    Created on : 2018/06/19, 23:15:16
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
        String num = request.getParameter("num");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String category = request.getParameter("category");
        String day = request.getParameter("day");
        
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        
       
        
        
        //エラーハンドリングを実装
        try {
            
            //mysqlに接続
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","imaishohei","1116moco");

            //すべての項目に入力されていた時に実行
            if(!(num.equals(""))  && !name.equals("") && !price.equals("") && !category.equals("") && !day.equals("")){
                //sql文を構築
                db_st = db_con.prepareStatement("INSERT INTO shohinnjoho (num, name, price, category, day ) VALUES (?, ?, ?, ?, ?)");

                int NUM = Integer.parseInt(num); 
                int Price = Integer.parseInt(price);
                Date Day= Date.valueOf(day);

                //?の中に値を代入
                db_st.setInt(1, NUM);
                db_st.setString(2, name);
                db_st.setInt(3, Price);
                db_st.setString(4, category);
                db_st.setDate(5, Day);

                //sql文を実行
                int i = db_st.executeUpdate();

                out.println("データの挿入完了しました"+ "<br><br><br>");
            
            } else {
                out.println("すべての項目に入力してください"+ "<br><br><br>");
            }

            
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
