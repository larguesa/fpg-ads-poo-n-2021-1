/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

/**
 *
 * @author rlarg
 */
public class Main {
    public static void main(String[] args) {
        Data hoje = new Data();
        hoje.setDia(10);
        hoje.setMês(5);
        hoje.setAno(2021);
        
        Data nasc = new Data(1, 7, 1979);
        
        System.out.println("Estamos no mês "+hoje.getMês());
        hoje.printData();
        nasc.printData();
    }
}