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
import modelo.Curso;

/**
 *
 * @author Bianca
 */
public class CursoDao {
    
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    
    public List<Curso> listarCursos(){
        List<Curso> listCurso = new ArrayList();
        String sql = "SELECT * "
                    + "FROM curso";
        try {
            conexion = Conexion.conectar();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Curso curso = new Curso();
                curso.setId(rs.getInt("id_curso"));
                curso.setNombre(rs.getString("nombre_curso"));
                curso.setDescripcion(rs.getString("descripcion"));
                listCurso.add(curso);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listCurso;
    }
    
    public List listarCursosXUniversidad(int id_univ){
        List<Curso> listCursoXUniv = new ArrayList();
        String sql = "SELECT * FROM curso WHERE id_universidad = ?";
        try {
            conexion = Conexion.conectar();
            ps = conexion.prepareStatement(sql);   
            ps.setInt(1, id_univ);
            rs = ps.executeQuery();
            while (rs.next()) {
                Curso curso = new Curso();
                curso.setId(rs.getInt("id_curso"));
                curso.setNombre(rs.getString("nombre_curso"));
                curso.setDescripcion(rs.getString("descripcion"));
                listCursoXUniv.add(curso);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listCursoXUniv;
    }
    
    public boolean eliminarCurso(int id_curso){
        String sql = "DELETE "
                    + "FROM curso "
                    + "WHERE id_curso = ?";
        try {
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id_curso);
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
