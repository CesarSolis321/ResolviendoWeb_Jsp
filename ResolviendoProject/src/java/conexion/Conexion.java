/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Bianca
 */

public class Conexion {

    public static Connection conectar(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/db_resolviendo?serverTimezone=UTC";
            String user="root";
            String password="root";
            Connection conn = DriverManager.getConnection(url,user,password);
            System.out.println("Conexión exitosa a la base de datos");
            return conn;
        } catch (SQLException|ClassNotFoundException e) {
            System.out.println("Error de conexion: " + e);
        return null;
        }
    }
       
    public void desconectar(Connection conexion) {
        try {
            conexion.close();
        } catch (SQLException error) {
            System.out.println(error);
        }
    }
}


