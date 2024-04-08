/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author Bianca
 */
public class Respuesta {
    private int id;
    private String enunciado;
    private String enunciado_imagen;
    private int correcta;
    private int id_pregunta;

    public Respuesta() {
    }

    public Respuesta(int id, String enunciado, String enunciado_imagen, int correcta, int id_pregunta) {
        this.id = id;
        this.enunciado = enunciado;
        this.enunciado_imagen = enunciado_imagen;
        this.correcta = correcta;
        this.id_pregunta = id_pregunta;
    }

    public int getId_pregunta() {
        return id_pregunta;
    }

    public void setId_pregunta(int id_pregunta) {
        this.id_pregunta = id_pregunta;
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

    public int esCorrecta() {
        return correcta;
    }

    public void setCorrecta(int correcta) {
        this.correcta = correcta;
    }

    @Override
    public String toString() {
        return "Alternativa: " + enunciado;
    }
    
    
}
