/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import dao.CursoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import modelo.Curso;

/**
 *
 * @author bianca.romero
 */
@WebServlet(name = "CursosControl", value = "cursos")
public class CursosControl extends HttpServlet {
    
    CursoDao cursoDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Curso> listaCursos = cursoDao.listarCursos();
        request.setAttribute("ListaCursos",listaCursos);
        request.getRequestDispatcher("/cursos.jsp").forward(request, response);
    }
}
