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
import modelo.Respuesta;
import modelo.Respuesta;

/**
 *
 * @author Bianca
 */
public class RespuestaDao {

    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    
    public List listarRespuestas(){
        List<Respuesta> listRespuesta = new ArrayList();
        String sql = "SELECT * "
                    + "FROM respuesta";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Respuesta respuesta = new Respuesta();
                respuesta.setEnunciado(rs.getString("respuesta"));
                respuesta.setEnunciado_imagen(rs.getString("respuesta_imagen"));
                respuesta.setCorrecta(rs.getInt("correcta"));
                
                listRespuesta.add(respuesta);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listRespuesta;
    }
    
    public List listarRespuestasXPregunta(int id_pregunta){
        List<Respuesta> listRespXPregunta = new ArrayList();
        String sql = "SELECT * FROM respuesta WHERE id_pregunta = ?";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);   
            ps.setInt(1, id_pregunta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Respuesta resp = new Respuesta();
                resp.setId(rs.getInt("id_respuesta"));
                resp.setEnunciado(rs.getString("respuesta"));
                resp.setEnunciado_imagen(rs.getString("respuesta_imagen"));
                resp.setCorrecta(rs.getInt("correcta"));
                resp.setId_pregunta(rs.getInt("id_pregunta"));
                listRespXPregunta.add(resp);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listRespXPregunta;
    }
    
    public Respuesta retornarRespuesCorrectaXPregunta(int id_pregunta){
        String sql = "SELECT * FROM respuesta WHERE id_pregunta = ? AND correcta = 1";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);   
            ps.setInt(1, id_pregunta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Respuesta resp = new Respuesta();
                resp.setId(rs.getInt("id_respuesta"));
                resp.setEnunciado(rs.getString("respuesta"));
                resp.setEnunciado_imagen(rs.getString("respuesta_imagen"));
                resp.setCorrecta(rs.getInt("correcta"));
                resp.setId_pregunta(rs.getInt("id_pregunta"));
                
                return resp;
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println(e.toString());
            }
        }
        return null;
    }

    
    public boolean eliminarRespuesta(int id_respuesta){
        String sql = "DELETE "
                    + "FROM respuesta "
                    + "WHERE id_respuesta = ?";
        try {
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id_respuesta);
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
