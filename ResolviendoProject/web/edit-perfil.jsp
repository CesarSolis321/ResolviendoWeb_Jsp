<%-- 
    Document   : edit-perfil
    Created on : 2 nov. 2023, 11:39:09 p. m.
    Author     : Ramses
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="referencias.jsp" %>
        <!--Titulo -->
        <title>Resolviendo</title>
    </head>
    <body class="row bg-primario">
        <%@include file="header.jsp" %>
        <main class="container" style="width: 80%">
            <h2 class="text-white py-5">Editar Perfil</h2>
            <h3 class="text-white">Tus Datos</h3>
            
            <%
                HttpSession ses = request.getSession();
                String user = (String)ses.getAttribute("user");
                String email = (String)ses.getAttribute("email");
                
            %>
            
            <form class="container row justify-content-center" action="validaEdicionPerfil.jsp" method="post">
                <!-- Nombre input -->

                <div class="form-outline mb-4 col-lg-6">
                    <label class="form-label text-white" for="name"
                        >Nombre</label
                    >
                    <input
                        type="text"
                        id="name"
                        class="form-control"
                        name="name"
                        placeholder="<%=name%>"
                    />
                </div>

                <!-- Apellido input -->

                <div class="form-outline mb-4 col-lg-6">
                    <label class="form-label text-white" for="lastName"
                        >Apellido</label
                    >
                    <input
                        type="text"
                        id="lastName"
                        class="form-control"
                        name="lastName"
                        placeholder="<%=lastName%>"
                    />
                </div>

                <!-- Nombre de usuario -->

                <div class="form-outline mb-4 col-lg-6">
                    <label class="form-label text-white" for="user"
                        >Nombre de usuario</label
                    >
                    <input
                        type="text"
                        id="user"
                        class="form-control"
                        name="user"
                        placeholder="<%=user%>"
                    />
                </div>

                <!-- Email input -->

                <div class="form-outline mb-4 col-lg-6">
                    <label class="form-label text-white" for="email"
                        >Correo</label
                    >
                    <input
                        type="email"
                        id="email"
                        class="form-control"
                        name="email"
                        placeholder="<%=email%>"
                    />
                </div>

                <!-- Password input -->
                <!--
                <div class="form-outline mb-4 col-lg-6">
                    <label class="form-label text-white" for="form2Example2"
                        >Contraseña</label
                    >
                    <input
                        type="password"
                        id="form2Example2"
                        class="form-control"
                    />
                </div>
                -->
                <!-- Password input -->
                <!--
                <div class="form-outline mb-4 col-lg-6">
                    <label class="form-label text-white" for="form2Example2"
                        >Confirmar contraseña</label
                    >
                    <input
                        type="password"
                        id="form2Example2"
                        class="form-control"
                    />
                </div>
                -->
                <!-- Submit button -->
                <button
                    type="submit"
                    class="btn btn-primary bg-primario btn-block mb-4 w-50 "
                >
                    Editar Perfil
                </button>
            </form>
        </main>
        <%@include file="footer.jsp" %>
    </body>
</html>