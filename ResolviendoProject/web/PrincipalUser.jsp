<%
    HttpSession ses = request.getSession();
    String nombre = (String)ses.getAttribute("name");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
    <head>
        <%@include file="referencias.jsp" %>
        <!--Titulo -->
        <title>Resolviendo</title>
    </head>
    <body class="bg-primario">
        <%@include file="header.jsp" %>

        <main class="container mb-5">
            <h2 class="text-white py-4">Hola <%=name%></h2>
            <section class="">
                <h2 class="text-white">Continua Aprendiendo!</h2>
                <p class="text-white">
                    Elige una curso y sigue un orden sobre los temas específicos
                    de cada curso, de forma ágil y guiada.
                </p>
                <%@include file="cursos.jsp" %>
            </section>
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
