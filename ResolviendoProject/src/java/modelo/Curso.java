/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author Bianca
 */
public class Curso {
    private int id;
    private String nombre;
    private String descripcion;
    private int id_universidad;

    public Curso() {
    }

    public Curso(int id, String nombre, String descripcion, int id_universidad) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.id_universidad = id_universidad;
    }

    public int getId_universidad() {
        return id_universidad;
    }

    public void setId_universidad(int id_universidad) {
        this.id_universidad = id_universidad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "Curso: " + nombre + "\n" + "Descripción: " + descripcion + "\n";
    }
    
    
}
