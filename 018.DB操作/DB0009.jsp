<%-- 
    Document   : DB0009
    Created on : 2018/06/15, 11:32:51
    Author     : PC1
--%>

<%@page import="java.text.SimpleDateFormat"%>
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
        String name = request.getParameter("txtName");
        String tel = request.getParameter("txttel");
        String age = request.getParameter("txtage");
        String birth = request.getParameter("txtbirth");
        
        
//        if(ID == null){
//            ID = "";
//        }  
//        if (name == null){
//            name = "";
//        }  
//        if ( tel == null){
//            tel = "";
//        }  
//        if (age == null){
//            age = "";
//        }  
//        if (birth == null){
//            birth = "";
//        }
        
        
        
        
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        
       
        
        
        //エラーハンドリングを実装
        try {
            
            //mysqlに接続
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","imaishohei","1116moco");

            //すべての項目に入力されていた時に実行
            if(!(ID.equals(""))  && !name.equals("") && !tel.equals("") && !age.equals("") && !birth.equals("")){
                //sql文を構築
                db_st = db_con.prepareStatement("INSERT INTO profiles (profilesID, name, tel, age, birthday ) VALUES (?, ?, ?, ?, ?)");

                int id = Integer.parseInt(ID); 
                int Age = Integer.parseInt(age);
                Date Birth= Date.valueOf(birth);

                //?の中に値を代入
                db_st.setInt(1, id);
                db_st.setString(2, name);
                db_st.setString(3, tel);
                db_st.setInt(4, Age);
                db_st.setDate(5, Birth);

                //sql文を実行
                int i = db_st.executeUpdate();

                out.println("データの挿入完了しました"+ "<br><br><br>");
            
            } else {
                out.println("すべての項目に入力してください"+ "<br><br><br>");
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
