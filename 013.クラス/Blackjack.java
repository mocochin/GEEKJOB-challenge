/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC1
 */
public class Blackjack extends HttpServlet {
    
    ArrayList<Integer> myCards;    
    List<Integer> cards; 

    
    
    
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
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
              
            
            BlackjackUser User1 = new BlackjackUser();
            Dealer Dealer1 = new Dealer();
            //2つのクラスをインスタンス化

            
                        
                       
            Dealer1.setCard(Dealer1.deal());
            User1.setCard(Dealer1.deal());
            //myCardsにカードを持たせる
            
            out.println("ディーラーのカードは" + Dealer1.myCards +"です"+"<br>");
            out.println("ユーザーのカードは" + User1.myCards +"です"+"<br>");
                
            if(Dealer1.checkSum() == false){                   
                    Dealer1.setCard(Dealer1.hit());
                    out.println("ディーラーはhitします"+"<br>");
            } else {
                out.println("ディーラーはhitしませんでした"+"<br>");
            }
                
            if(User1.checkSum() == false){                   
                    User1.setCard(Dealer1.hit());
                    out.println("ユーザーはhitします"+"<br>");
            } else {
                out.println("ユーザーはhitしませんでした"+"<br>");
            } 
            //それぞれのカードをチェックし、hitするか判断,falseならhitする
            
            out.println("ディーラーのカードは"+Dealer1.myCards +"です"+"<br>");
            out.println("ユーザーのカードは"+User1.myCards +"です"+"<br>");
            
            int userAll = (User1.open());
            out.println("ユーザーのカードの合計は"+userAll +"です"+"<br>");
            
            int dealerAll = (Dealer1.open());            
            out.println("ディーラーのカードの合計は"+ dealerAll +"です"+"<br>");
  
            
            if (userAll > dealerAll && userAll <= 21) {
                out.println("ユーザーの勝ちです");
            } else if (userAll < dealerAll && dealerAll > 21){
                out.println("ユーザーの勝ちです");
            } else if (userAll == dealerAll){
                out.println("ドローです");
            } else {
                out.println("ディーラーの勝ちです");
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
