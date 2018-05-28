/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

/**
 *
 * @author PC1
 */
class Teacher extends Human {
    public void clear() {
        // 引数をフィールドへ設定
        this.name = null;
        this.age = 0;
    }
        
    
}
   
class test1 {
     
    public static void main(String[] args) {
    
    Teacher imai = new Teacher();
    
    imai.clear();
    imai.getHuman();
}
}


    



