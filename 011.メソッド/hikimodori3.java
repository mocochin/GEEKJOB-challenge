/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC1
 */
public class hikimodori3 extends HttpServlet {

    
    
    String[] data1 = {"0001", "1997/03/14", null};
    String[] data2 = {"0002", "1996/04/02", "東京都世田谷区"};
    String[] data3  ={"0003", "1999/11/24", "長野県松本市"};
    
    
    
    String[] hello(String name) {
    
     if (name.equals("0001") ){        
        return data1;

     }else if (name.equals ("0002")){        
        return data2;
    
     
     }else if (name.equals("0003")){         
         return data3;
          
     }else return null;
     
    
    }
    
    
    
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet hikimodori3</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
           
            int limit = 2;
            int ID = 1;
            for(int h = 0; h < limit; h++){
            
              
                            
              String str = Integer.toString(ID);
              String test = ("000" + str) ;                                   
              String[] newhello = hello("000" + str);
            
                
              for(int i = 0; i < 3; i++){
                
                    if(newhello[i] == null){
                        continue;
                    }else if(newhello[i] != null){   
                      out.println(newhello[i]);
                    }   
                }
                
                ID++;
            }
            
            
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
