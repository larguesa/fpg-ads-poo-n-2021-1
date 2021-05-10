/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

/**
 * Classe que representa uma data no calendário gregoriano
 * @author rlarg
 */
public class Data {
    //Atributos (campos ou variáveis)
    /**
     * Variável que representa o dia da data
     */
    private int dia;
    /**
     * Variável que representa o mês da data
     */
    private int mês;
    /**
     * Variável que representa o ano da data
     */
    private int ano;
    
    //Construtores
    /**
     * Inicializa o objeto com a data cabalística 01/01/2000
     */
    public Data(){
        dia = 1;
        mês = 1;
        ano = 2000;
    }
    /**
     * Inicializa o objeto com os parâmetros informados
     * @param dia dia da data
     * @param mês mês da data
     * @param ano ano da data
     */
    public Data(int dia, int mês, int ano){
        this.dia = dia;
        this.mês = mês;
        this.ano = ano;
    }
    
    //Métodos de acesso
    public int getDia() {
        return dia;
    }
    public void setDia(int dia) {
        this.dia = dia;
    }
    public int getMês() {
        return mês;
    }
    public void setMês(int mês) {
        this.mês = mês;
    }
    public int getAno() {
        return ano;
    }
    public void setAno(int ano) {
        this.ano = ano;
    }

    //Métodos complementares(funções)
    public String getAniversário(){
        String out = "";
        if(dia < 10)
            out += "0";
        out += dia + "/";
        if(mês < 10)
            out += "0";
        out += mês;
        return out;
    }
    public String getData(){
        return getAniversário()+"/"+ano;
    }
    public void printData(){
        System.out.println("Nasci em: "+getData());
    }
}