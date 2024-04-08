/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import dao.CursoDao;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bianca
 */
public class CursoLista {
    
    public static List ListarTodosCursos(List listaCursoDao){
        List<Curso> listaTodosCurso = new ArrayList();
        CursoDao cursoDao = new CursoDao();
        
        listaTodosCurso = cursoDao.listarCursos();
        
        return listaTodosCurso;
    }
    
}
