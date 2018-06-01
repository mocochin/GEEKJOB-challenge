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
public class timestamp {
    
    public static void main(String[] args) {
        // カレンダーインスタンスの作成
        Calendar c = Calendar.getInstance();

        // 2017年8月12日 18時10分33秒
        c.set(2016, 0, 1, 0, 0, 0);
    
        System.out.print(c.getTime());
    }    
       
    
}
