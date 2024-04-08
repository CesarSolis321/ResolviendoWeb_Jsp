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
import conexion.Conexion;
import modelo.Tema;
import modelo.Tema;

/**
 *
 * @author Bianca
 */
public class TemaDao {
    
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    
    public List listarTemas(){
        List<Tema> listTema = new ArrayList();
        String sql = "SELECT * "
                    + "FROM tema";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Tema tema = new Tema();
                tema.setNombre(rs.getString("nombre_tema"));
                listTema.add(tema);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listTema;
    }
    
    public List listarTemasXCurso(int id_curso){
        List<Tema> listTemaXCurso = new ArrayList();
        String sql = "SELECT * FROM tema WHERE id_curso = ?";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);   
            ps.setInt(1, id_curso);
            rs = ps.executeQuery();
            while (rs.next()) {
                Tema tema = new Tema();
                tema.setNombre(rs.getString("nombre_tema"));
                tema.setId(rs.getInt("id_tema"));
                listTemaXCurso.add(tema);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listTemaXCurso;
    }
    
    public boolean eliminarTema(int id_tema){
        String sql = "DELETE "
                    + "FROM tema "
                    + "WHERE id_tema = ?";
        try {
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id_tema);
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
    
}
