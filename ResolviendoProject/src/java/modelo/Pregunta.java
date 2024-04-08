/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author Bianca
 */
public class Pregunta {
    private int id;
    private String enunciado;
    private String enunciado_imagen;
    private String desarrollo;
    private String desarrollo_imagen;
    private String id_tema;

    public Pregunta() {
    }

    public Pregunta(int id, String enunciado, String enunciado_imagen, String desarrollo, String desarrollo_imagen, String id_tema) {
        this.id = id;
        this.enunciado = enunciado;
        this.enunciado_imagen = enunciado_imagen;
        this.desarrollo = desarrollo;
        this.desarrollo_imagen = desarrollo_imagen;
        this.id_tema = id_tema;
    }

    public String getId_tema() {
        return id_tema;
    }

    public void setId_tema(String id_tema) {
        this.id_tema = id_tema;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getEnunciado() {
        return enunciado;
    }

    public void setEnunciado(String enunciado) {
        this.enunciado = enunciado;
    }

    public String getEnunciado_imagen() {
        return enunciado_imagen;
    }

    public void setEnunciado_imagen(String enunciado_imagen) {
        this.enunciado_imagen = enunciado_imagen;
    }

    public String getDesarrollo() {
        return desarrollo;
    }

    public void setDesarrollo(String desarrollo) {
        this.desarrollo = desarrollo;
    }

    public String getDesarrollo_imagen() {
        return desarrollo_imagen;
    }

    public void setDesarrollo_imagen(String desarrollo_imagen) {
        this.desarrollo_imagen = desarrollo_imagen;
    }

    @Override
    public String toString() {
        return "Pregunta: " + enunciado + "\n Desarrollo: " + desarrollo;
    }
    
    
}
