/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import modelo.Comentario;
import conexion.Conexion;
import java.util.Date;
import modelo.Comentario;

/**
 *
 * @author Bianca
 */
public class ComentarioDao {

    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    
    public List listarComentarios(){
        List<Comentario> listComentario = new ArrayList();
        String sql = "SELECT * "
                    + "FROM comentario";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Comentario com = new Comentario();
                com.setId(rs.getInt("id_comentario"));
                com.setId_pregunta(rs.getInt("id_pregunta"));
                com.setId_usuario(rs.getInt("id_usuario"));
                com.setId_comentario_padre(rs.getInt("id_comentario_padre"));
                com.setComentario(rs.getString("comentario"));
                com.setFecha(rs.getString("fecha"));
                
                listComentario.add(com);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listComentario;
    } 

    public List listarComentariosXPregunta(int id_pregunta){
        List<Comentario> listComentXPreg = new ArrayList();
        String sql = "SELECT * FROM comentario WHERE id_pregunta = ?";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);   
            ps.setInt(1, id_pregunta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Comentario com = new Comentario();
                com.setId(rs.getInt("id_comentario"));
                com.setId_pregunta(rs.getInt("id_pregunta"));
                com.setId_usuario(rs.getInt("id_usuario"));
                com.setId_comentario_padre(rs.getInt("id_comentario_padre"));
                com.setComentario(rs.getString("comentario"));
                com.setFecha(rs.getString("fecha"));
                listComentXPreg.add(com);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listComentXPreg;
    }
    
    public List listarComentariosXHijos(int id_comentario_padre){
        List<Comentario> listComentXHijo = new ArrayList();
        String sql = "SELECT * FROM comentario WHERE id_comentario_padre = ?";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);   
            ps.setInt(1, id_comentario_padre);
            rs = ps.executeQuery();
            while (rs.next()) {
                Comentario com = new Comentario();
                com.setId(rs.getInt("id_comentario"));
                com.setId_pregunta(rs.getInt("id_pregunta"));
                com.setId_usuario(rs.getInt("id_usuario"));
                com.setId_comentario_padre(rs.getInt("id_comentario_padre"));
                com.setComentario(rs.getString("comentario"));
                com.setFecha(rs.getString("fecha"));
                listComentXHijo.add(com);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listComentXHijo;
    }
    
    public boolean eliminarComentario(int id_comentario,int id_usuario){
        String sql = "DELETE "
                    + "FROM comentario "
                    + "WHERE id_comentario = ? and id_usuario = ";
        try {
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id_comentario);
            ps.setInt(1, id_usuario);
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return  false;
        } finally{
            try {
                conexion.close();
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
        }
    }
    
    public boolean agregarComentarioPadre(int id_pregunta, int id_usuario, String comentario, Date fecha) {
        String sql = "INSERT INTO comentario (id_pregunta, id_usuario,"
                + "comentario, fecha) VALUES (?,?,?,?)";
        try {
            conexion = Conexion.conectar();
            ps = conexion.prepareStatement(sql);
            System.out.println("prueba1");
            ps.setInt(1, id_pregunta);
            ps.setInt(2, id_usuario);
            ps.setString(3, comentario);
            ps.setDate(4, (java.sql.Date) fecha);
            System.out.println("prueba2");
            ps.execute();
            System.out.println("prueba3");
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println(e.toString());

            }
        }
    }
    
    public boolean agregarComentarioHijo(int id_pregunta, int id_usuario, int id_comentario_padre, String comentario, String fecha) {
        String sql = "INSERT INTO comentario (id_pregunta, id_usuario,"
                + "id_comentario_padre,comentario, fecha) VALUES (?,?,?,?,?)";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id_pregunta);
            ps.setInt(2, id_usuario);
            ps.setInt(3, id_comentario_padre);
            ps.setString(4, comentario);
            ps.setString(5, fecha);
            ps.execute();
            return true;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.toString());
            return false;
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println(e.toString());

            }
        }
    }

}
