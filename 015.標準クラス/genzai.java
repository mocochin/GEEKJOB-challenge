/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;
import java.util.Calendar;
/**
 *
 * @author PC1
 */
public class genzai {
    
    public static void main(String[] args) {
        // カレンダーインスタンスの作成
        Calendar c = Calendar.getInstance();

        // 2017年8月12日 18時10分33秒
        c.set(1988, 5, 21, 1, 23, 45);
        
        System.out.print(c.get(Calendar.YEAR) + "年");
        System.out.print(c.get(Calendar.MONTH) + "月");
        System.out.print(c.get(Calendar.DAY_OF_MONTH) + "日");
        System.out.print(c.get(Calendar.HOUR_OF_DAY) + "時");
        System.out.print(c.get(Calendar.MINUTE) + "分");
        System.out.print(c.get(Calendar.SECOND) + "秒");
        
    }
    
    
}
