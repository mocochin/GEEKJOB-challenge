<%-- 
    Document   : soinsuu
    Created on : 2018/06/04, 16:50:07
    Author     : PC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String n = request.getParameter("N");
        int num = Integer.parseInt("N");
        
        out.print(num + " = ");
        
        int amari = 0;
        
        ArrayList<Integer> list = new ArrayList<Integer>();
        
        int[] suu = {2 ,3, 5, 7};
        
        for (int i = 0; i < 4; i++ ){
            
            while ( num % suu[i] == 0) {
            
                amari = num / suu[i];
            
            list.add(suu[i]);
            
            num = amari;
            }
        }
        
        for ( int h = 0; h < list.size(); h++ ){
            
            if( h != 0){
                out.println(" * " + list.get(h));
            } else {
                out.println(list.get(h));
            }
        }
        out.println(" あまり " + num);
       
        
        
        
        %>
    </body>
</html>
