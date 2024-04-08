/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import dao.ComentarioDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import modelo.Comentario;

/**
 *
 * @author Bianca
 */
@WebServlet(name = "ComentarioControl", value = "gestioncomentario")
public class ComentarioControl extends HttpServlet {
    
    ComentarioDao comentarioDao = new ComentarioDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String instruccion = request.getParameter("instruccion");
        out.print(instruccion);
        if(instruccion == null) instruccion = "listar";
        
        switch(instruccion){
            case "insertarComentarioPadre":{
                agregarComentarioPadre(request,response);
                request.setAttribute("alert", "listo");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                break;
            }
            default:{
                obtenerComentarios(request,response);
                
                break;
            }
        }
    }
    
    private void agregarComentarioPadre(HttpServletRequest request, HttpServletResponse response) {
        int id_pregunta = 1;
        
        HttpSession ses = request.getSession();
        int id_usuario = (int)ses.getAttribute("id_usuario");
        
        String comentario = request.getParameter("textoComentario");
        
        java.util.Date fecha = new java.util.Date();
        try{
            comentarioDao.agregarComentarioPadre(id_pregunta, id_usuario, comentario, fecha);
        }catch(Exception e){
            System.out.println(e.toString());
        }
        System.out.print("holi");
    }

    private void obtenerComentarios(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
