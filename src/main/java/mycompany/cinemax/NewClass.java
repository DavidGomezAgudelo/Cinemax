/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mycompany.cinemax;

import control.operations;
import java.util.List;
import model.Pelicula;

/**
 *
 * @author David Gomez
 */
public class NewClass {
    
   
    public static void main(String[] args) {
        operations BD = new operations();
        List<Pelicula> listaPeliculas = BD.getPeliculasDB();
        for(Pelicula pelicua:listaPeliculas){
            System.out.println(pelicua.getId_pelicula());
        }
    }
}
