/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import dao.UsuarioDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Usuario;

/**
 *
 * @author Bianca
 */

@WebServlet(name = "LogInControl", value = "login")
public class LogInControl extends HttpServlet {
    
    UsuarioDao userDao = new UsuarioDao();
    Usuario userP = new Usuario();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        
        try {
            userP = userDao.login(user,password);
        } catch (SQLException ex) {
            Logger.getLogger(SignInControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (userP==null){
            String alert = "<div class=\"mx-auto row-8\">\n" +
                "                <p class=\" text-center alert alert-danger\" role=\"alert\">\n" +
                "                    Usuario o contraseña incorrecta\n" +
                "                 </p>\n" +
                "            </div>";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }else{
            HttpSession ses = request.getSession();
            ses.setAttribute("name", userP.getNombre());
            ses.setAttribute("lastName", userP.getApellido());
            ses.setAttribute("user", userP.getUsuario());
            ses.setAttribute("email", userP.getCorreo());
            ses.setAttribute("password", userP.getClave());
            request.getRequestDispatcher("PrincipalUser.jsp").forward(request, response);
        }
    }

}
