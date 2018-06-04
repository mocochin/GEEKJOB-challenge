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
 /* 貯金箱クラス。 */
  

class Human {
    // フィールドの宣言
    public String name = "";
    public int age = 0;

    // メソッドの宣言
    public void setHuman(String n, int a) {
        // 引数をフィールドへ設定
        this.name = n;
        this.age = a;
    }
    public void getHuman() {
        // 引数をフィールドへ設定
        System.out.println(name);
        System.out.println(age);
    }
}

class Test {

    public void main(String[] args) {
        // Humanクラスのインスタンス生成
        Human hito = new Human();

        // 人インスタンスのsetHumanメソッドを利用
        hito.setHuman("今井翔平", 21);
        hito.getHuman();
    }
}

