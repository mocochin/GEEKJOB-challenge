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
public class kakidashihozon {
     public static void main(String[] args) {
        
        try{
// ファイルオープン
        File fp = new File("test.txt");

        // FileWriter作成
        FileWriter fw = new FileWriter(fp);
        // 書き込み
        fw.write("私の名前は今井翔平です。");
        // クローズ
        fw.close();
    
        } catch (IOException e) {
            e.printStackTrace();
        }
    
     }
}
     
