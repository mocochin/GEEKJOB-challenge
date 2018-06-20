<%-- 
    Document   : DB0008
    Created on : 2018/06/13, 17:20:08
    Author     : PC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            
            out.print("入力された文字は　" + request.getParameter("txtName") +"　です。<br><br>");
        
            String name = request.getParameter("txtName");

            Connection db_con = null;
            PreparedStatement db_st = null;
            ResultSet db_data = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();  
                db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","imaishohei","1116moco");
            
                db_st = db_con.prepareStatement("SELECT * FROM profiles WHERE name LIKE ?");
                db_st.setString(1, "%" + name + "%");
                                                
                db_data = db_st.executeQuery();
                
                while(db_data.next()){
                    out.print(db_data.getInt("profilesID") + " ");
                    out.print(db_data.getString("name") + " ");
                    out.print(db_data.getString("tel") + " ");
                    out.print(db_data.getInt("age") + " ");
                    out.print(db_data.getString("birthday") + "<br><br>");
                }
                
                
            
                db_st.close();
                db_con.close();
                db_data.close();
            
                out.println("検索完了しました");
            
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
