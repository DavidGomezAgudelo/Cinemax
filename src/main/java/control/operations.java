/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control;

import BD.connectionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Pelicula;


/**
 *
 * @author David Gomez
 */
public class operations {
    
    
    public void addPeliculaDB(Pelicula pelicula) {
        Connection conexion = connectionDB.getConnection();
        try {
            String insercion = "INSERT INTO peliculas (nombre, sinopsis, foto, autor) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = conexion.prepareStatement(insercion);

            // Establece los valores de los parámetros
            preparedStatement.setString(1, pelicula.getNombre());
            preparedStatement.setString(2, pelicula.getDescripcion());
            preparedStatement.setString(3, pelicula.getFoto());
            preparedStatement.setString(4, pelicula.getAutor());

            // Ejecuta la inserción
            int filasAfectadas = preparedStatement.executeUpdate();
            if (filasAfectadas > 0) {
                System.out.println("Persona agregada exitosamente a la base de datos.");
            } else {
                System.err.println("Error al agregar persona a la base de datos.");
            }

            preparedStatement.close();
        } catch (Exception e) {
            System.err.println("Error al agregar persona: " + e.getMessage());
        }
        
        connectionDB.closeConnection(conexion);
    }
    
    public List<Pelicula> getPeliculasDB() {
        Connection conexion = connectionDB.getConnection();
        List<Pelicula> peliculas = new ArrayList<>();
        try {
            String consulta = "SELECT id_pelicula, nombre, sinopsis, foto, autor FROM peliculas";
            PreparedStatement preparedStatement = conexion.prepareStatement(consulta);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idPelicula = resultSet.getInt("id_pelicula");
                String nombre = resultSet.getString("nombre");
                String foto = resultSet.getString("foto");
                String descripcion = resultSet.getString("sinopsis");
                String autor = resultSet.getString("autor");

                Pelicula pelicula = new Pelicula(nombre,foto,autor,descripcion);
                pelicula.setId_pelicula(idPelicula);
                peliculas.add(pelicula);
            }

            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            System.err.println("Error al obtener productos: " + e.getMessage());
        }
        connectionDB.closeConnection(conexion);
        return peliculas;
    }
}
