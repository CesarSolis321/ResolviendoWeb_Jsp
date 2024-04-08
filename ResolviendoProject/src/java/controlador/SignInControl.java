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

@WebServlet(name = "SignInControl", value = "signin")
public class SignInControl extends HttpServlet {
    
    UsuarioDao userDao = new UsuarioDao();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Recuperando parámetros
        String nameUser = request.getParameter("name");
        String lastNameUser = request.getParameter("lastname");
        String user = request.getParameter("user");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
    
        if (!password.equals(password2)) {
            
            String alert = "<div class=\"mx-auto row-8\">\n" +
            "                   <p class=\" text-center alert alert-danger\" role=\"alert\">\n" +
            "                        Contraseña incorrecta\n" +
            "                  </p>\n" +
            "             </div>";
            request.setAttribute("name", nameUser);
            request.setAttribute("lastName", lastNameUser);
            request.setAttribute("user", user);
            request.setAttribute("email", email);
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        }
        else{
            try {
                userDao.registrarCuenta(nameUser,lastNameUser,user,email,password);
            } catch (SQLException ex) {
                Logger.getLogger(SignInControl.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            int id=0;
            try {
                id = userDao.obtenerId(user, password);
            } catch (SQLException ex) {
                Logger.getLogger(SignInControl.class.getName()).log(Level.SEVERE, null, ex);
            }
            HttpSession ses = request.getSession();
            ses.setAttribute("id", id);
            ses.setAttribute("name", nameUser);
            ses.setAttribute("lastName", lastNameUser);
            ses.setAttribute("user", user);
            ses.setAttribute("email", email);
            ses.setAttribute("password", password);
        
            request.getRequestDispatcher("PrincipalUser.jsp").forward(request, response);
        }
    }
}