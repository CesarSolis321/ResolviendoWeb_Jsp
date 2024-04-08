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
import modelo.Universidad;
import modelo.Universidad;

/**
 *
 * @author Bianca
 */

public class UniversidadDao {
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    
    public List listarUniversidades(){
        List<Universidad> listUniv = new ArrayList();
        String sql = "SELECT * "
                    + "FROM universidad";
        try {
            conexion = cn.conectar();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Universidad univ = new Universidad();
                univ.setNombre(rs.getString("nombre_universidad"));
                listUniv.add(univ);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return listUniv;
    }
    
    public boolean eliminarUniversidad(int id_universidad){
        String sql = "DELETE "
                    + "FROM universidad "
                    + "WHERE id_comentario = ?";
        try {
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id_universidad);
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
