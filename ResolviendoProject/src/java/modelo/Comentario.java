/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.time.LocalDate;

/**
 *
 * @author Bianca
 */
public class Comentario {
    private int id;
    private int id_pregunta;
    private int id_usuario;
    private int id_comentario_padre;
    private String comentario;
    private String fecha;

    public Comentario() {
    }
    
    public Comentario(int id_pregunta, int id_usuario, int id_comentario_padre, String comentario, String fecha) {
        this.id_pregunta = id_pregunta;
        this.id_usuario = id_usuario;
        this.id_comentario_padre = id_comentario_padre;
        this.comentario = comentario;
        this.fecha = fecha;
    }
    
    public Comentario(int id, int id_pregunta, int id_usuario, int id_comentario_padre, String comentario, String fecha) {
        this.id = id;
        this.id_pregunta = id_pregunta;
        this.id_usuario = id_usuario;
        this.id_comentario_padre = id_comentario_padre;
        this.comentario = comentario;
        this.fecha = fecha;
    }

    public int getId_pregunta() {
        return id_pregunta;
    }

    public void setId_pregunta(int id_pregunta) {
        this.id_pregunta = id_pregunta;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_comentario_padre() {
        return id_comentario_padre;
    }

    public void setId_comentario_padre(int id_comentario_padre) {
        this.id_comentario_padre = id_comentario_padre;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String enunciado) {
        this.comentario = enunciado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        return "Comentario: " + comentario + "\n " + fecha;
    }
    
    
}
