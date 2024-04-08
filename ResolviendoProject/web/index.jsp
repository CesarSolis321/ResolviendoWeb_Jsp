<%-- 
    Document   : index
    Created on : 27 oct. 2023, 12:35:36 a. m.
    Author     : Ramses
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Map> usuarios = new ArrayList<>();
    HttpSession s = request.getSession();
    s.setAttribute("usuarios", usuarios);
    response.sendRedirect("inicio.jsp");

%>
