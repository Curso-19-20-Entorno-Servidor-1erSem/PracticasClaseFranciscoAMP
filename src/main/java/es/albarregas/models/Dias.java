/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.models;

/**
 *
 * @author Francisco_Antonio
 */
public class Dias {
    private String[] dias;

public Dias(){
    dias = new String[7];
    dias[0]="Lunes";
    dias[1]="Martes";
    dias[2]="Miércoles";
    dias[3]="Jueves";
    dias[4]="Viernes";
    dias[5]="Sábado";
    dias[6]="Domingo";
}

public String[] getDias(){
    return dias;
}
}
