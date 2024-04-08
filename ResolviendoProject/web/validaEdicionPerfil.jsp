<%-- 
    Document   : validaEdicionPerfil
    Created on : 3 nov. 2023, 12:30:41 a. m.
    Author     : Ramses
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession s = request.getSession();
    List<Map> usuarios = (List<Map>)s.getAttribute("usuarios");
    
    String nombre=(String)s.getAttribute("name");
    String apellido=(String)s.getAttribute("lastName");
    String user=(String)s.getAttribute("user");
    String email=(String)s.getAttribute("email");
    
    String nombreP = request.getParameter("name");
    String apellidoP = request.getParameter("lastName");
    String userP = request.getParameter("user");
    String emailP = request.getParameter("email");
    
    nombreP = nombreP.trim();
    apellidoP = apellidoP.trim();
    userP = userP.trim();
    emailP = emailP.trim();
    
    boolean ok = false;
    
    if(!nombreP.isEmpty() && !nombre.equals(nombreP)){
        s.setAttribute("name", nombreP);
        nombre=nombreP;
        ok=true;
    }
    
    if(!apellidoP.isEmpty() && !apellido.equals(apellidoP)){
        s.setAttribute("lastName", apellidoP);
        apellido=apellidoP;
        ok=true;
    }
    
    if(!userP.isEmpty() && !user.equals(userP)){
        s.setAttribute("user", userP);
        user=userP;
        ok=true;
    }
    
    if(!emailP.isEmpty() && !email.equals(emailP)){
        s.setAttribute("email", emailP);
        email=emailP;
        ok=true;
    }
    
    if(ok){
        for(Map u: usuarios){
            if(u.get("user").equals(user)){
                u.put("name", nombre);
                u.put("lastName", apellido);
                u.put("user", user);
                u.put("email", email);            
            }
        }
    }
    
    s.setAttribute("usuarios", usuarios);
    response.sendRedirect("index.jsp");
%>
