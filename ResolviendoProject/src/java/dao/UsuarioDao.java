/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import javax.swing.JOptionPane;
import conexion.Conexion;
import modelo.Usuario;

/**
 *
 * @author Bianca
 */
public class UsuarioDao {
    
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    Usuario user = new Usuario();
    
    public Usuario login(String usuario,String clave) throws SQLException{
        String sql = "SELECT id_usuario, nombre, apellido, usuario, correo "
                    +"FROM USUARIO "
                    +"WHERE USUARIO = ? "
                    +"AND CLAVE = ?";
        try {
            conexion = Conexion.conectar();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            while (rs.next()) {
                user.setId(Integer.parseInt(rs.getString("id_usuario")));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setUsuario(rs.getString("usuario"));
                user.setCorreo(rs.getString("correo"));
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return null;
    }
    
    public boolean validarCredenciales(String usuario,String contrasenia) throws SQLException{
        user = new Usuario();
        user = login(usuario, contrasenia);
        return user.getCorreo()!= null && user.getClave()!= null;
    }
    
    public int obtenerId(String usuario, String password) throws SQLException{
        int id;
        user = login(usuario, password);
        id = user.getId();
        return id;
    }
    
    public void registrarCuenta(String nombre, String apellido, String usuario, String correo, String clave) 
        throws SQLException{
        
        String sql = "INSERT INTO usuario (nombre, apellido,"
                + "usuario,correo,clave) VALUES (?,?,?,?,?)";
        try {
            conexion = Conexion.conectar();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, apellido);
            ps.setString(3, usuario);
            ps.setString(4, correo);
            ps.setString(5, clave);
            ps.execute();
            user = new Usuario(nombre, apellido, usuario, correo, clave,0);
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.toString());
            
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println(e.toString());

            }
        }
    }
    
}
