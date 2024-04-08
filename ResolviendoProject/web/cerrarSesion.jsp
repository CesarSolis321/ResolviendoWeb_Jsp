<%-- 
    Document   : cerrarSesion
    Created on : 27 oct. 2023, 3:45:29 a. m.
    Author     : Ramses
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession s = request.getSession();
    s.setAttribute("name", null);
    s.setAttribute("lastName", null);
    s.setAttribute("user", null);
    s.setAttribute("email", null);
    s.setAttribute("password", null);
    
    response.sendRedirect("index.jsp");
    
%>
