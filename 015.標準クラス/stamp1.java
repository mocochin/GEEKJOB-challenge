/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;
import java.util.Date;
import java.text.SimpleDateFormat;
/**
 *
 * @author PC1
 */
public class stamp1 {
    
    public static void main(String[] args) {
        // 今日の日付作成
        Date d = new Date(116 , 10 , 4 , 10 , 0 , 0);
        // SimpleDateFormat作成
       
        System.out.print(d.getTime());
        
        
        Date now = new Date(d.getTime());
        
        SimpleDateFormat sdf =
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss" );

        System.out.print(sdf.format(now));
        
    }
}
