/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.*;
/**
 *
 * @author PC1
 */
public class yomidashihyouji {
    
    
       
    public static void main(String[] args) {
        
            try{
        
            File fp = new File("test.txt");
    
            FileReader fr = new FileReader(fp);
    // BufferedReader作成
            BufferedReader br = new BufferedReader(fr);
    //  1行読み出し
            System.out.print(br.readLine());

                br.close();
    
            } catch (IOException e) {
            e.printStackTrace();
        } 
    }
    
}

