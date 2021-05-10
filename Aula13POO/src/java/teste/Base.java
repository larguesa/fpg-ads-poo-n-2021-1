/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import java.util.ArrayList;

/**
 *
 * @author rlarg
 */
public class Base {
    private static ArrayList<Contato> contatos;
    public static ArrayList<Contato> getContatos(){
        if(contatos == null){
            contatos = new ArrayList<Contato>();
            contatos.add(new 
            Contato("Fulano", "(13)99999-0001", new Data(1, 1, 2000)));
            contatos.add(new 
            Contato("Belano", "(13)99999-0002", new Data(2, 1, 2000)));
            contatos.add(new 
            Contato("Cicrano", "(13)99999-0003", new Data(3, 1, 2000)));
        }
        return contatos;
    }
}