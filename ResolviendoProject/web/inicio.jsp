<%-- 
    Document   : idx
    Created on : 27 oct. 2023, 2:27:39 a. m.
    Author     : Ramses
--%>
<%@page import="modelo.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="modelo.Curso" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<Curso> listaCursos = (List<Curso>)request.getAttribute("listaCursos"); %>
<!DOCTYPE html> 
<html>
    <head>
        <%@include file="referencias.jsp" %>
        <title>Resolviendo</title>
    </head>
    <body class="bg-primario">
        <%@include file="header.jsp" %>
        <main>
            <section class="container">
                <div class="row hero">
                    <div class="col-lg d-flex flex-column">
                        <h1 class="text-white fs-1">
                            <span class="text-primario"
                                ><br><br><br><br>
                                Para todos tus retos</span
                            >, prepárate en Resolviendo
                        </h1>
                        <p class="text-white">
                            La comunidad de aprendizaje en línea donde
                            desarrollas tus habilidades y potencias tu ingreso a
                            la uni!.
                        </p>
                    </div>
                    <div class="col-lg img-hero"></div>
                </div>
            </section>

            <section class="bg-white">
                <div class="container">
                    <h3 class="pt-5 text-primario">
                        ¿CÓMO APRENDES CON RESOLVIENDO?
                    </h3>
                    <h2>TE DAMOS LAS HERRAMIENTAS PARA LLEGAR A LA UNI!</h2>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card border-0">
                                <div class="card-body">
                                    <h5 class="card-title">Crea</h5>
                                    <p class="card-text">
                                        Adquiere el conocimiento necesario para
                                        convertir tus ideas en nuevos proyectos.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card border-0">
                                <div class="card-body">
                                    <h5 class="card-title">Comparte</h5>
                                    <p class="card-text">
                                        Conecta con una comunidad de estudiantes
                                        y profesionales para potenciar tu
                                        aprendizaje.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card border-0">
                                <div class="card-body">
                                    <h5 class="card-title">Transforma</h5>
                                    <p class="card-text">
                                        Genera impacto con grandes proyectos que
                                        cambien al mundo.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="custom-shape-divider-bottom-1697641908">
                    <svg
                        data-name="Layer 1"
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 1200 120"
                        preserveAspectRatio="none"
                    >
                        <path
                            d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z"
                            class="shape-fill"
                        ></path>
                    </svg>
                </div>
            </section>

            <section class="container pt-5">
                <h2 class="text-white">Potencia lo que sabes</h2>
                <p class="text-white">
                    Elige una curso y sigue un orden sobre los temas específicos
                    de cada curso, de forma ágil y guiada.
                </p>
                
                <section>
                    <jsp:include page="cursos.jsp" />
                </section>
            </section>
            <%@include file="planes.jsp" %>
        </main>
        <%@include file="footer.jsp" %>
        <script>
            // Obtiene el año actual
            var year = new Date().getFullYear();

            // Muestra el año en el elemento con el id "year"
            document.getElementById("year").textContent = year;
        </script>
    </body>
</html>
