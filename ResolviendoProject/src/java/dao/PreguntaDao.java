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
import modelo.Pregunta;
import modelo.Pregunta;

/**
 *
 * @author Bianca
 */
public class PreguntaDao {
    
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    
    public List listarPreguntas(){
        List<Pregunta> listPregunta = new ArrayList();
        String sql = "SELECT * "
                    + "FROM pregunta";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Pregunta pregunta = new Pregunta();
                pregunta.setEnunciado(rs.getString("enunciado"));
                pregunta.setEnunciado_imagen(rs.getString("enunciado_imagen"));
                pregunta.setDesarrollo(rs.getString("desarrollo"));
                pregunta.setDesarrollo_imagen(rs.getString("desarrollo_imagen"));
                
                listPregunta.add(pregunta);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listPregunta;
    }
    
    public List listarPreguntasXTema(int id_tema){
        List<Pregunta> listPreguntaXTema = new ArrayList();
        String sql = "SELECT * FROM tema WHERE id_tema = ?";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);   
            ps.setInt(1, id_tema);
            rs = ps.executeQuery();
            while (rs.next()) {
                Pregunta preg = new Pregunta();
                preg.setId(rs.getInt("id_tema"));
                preg.setEnunciado(rs.getString("enunciado"));
                preg.setEnunciado_imagen(rs.getString("enunciado_imagen"));
                preg.setDesarrollo(rs.getString("desarrollo"));
                preg.setDesarrollo_imagen(rs.getString("desarrollo_imagen"));
                listPreguntaXTema.add(preg);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listPreguntaXTema;
    }
    
    public boolean eliminarPregunta(int id_pregunta){
        String sql = "DELETE "
                    + "FROM pregunta "
                    + "WHERE id_pregunta = ?";
        try {
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id_pregunta);
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
