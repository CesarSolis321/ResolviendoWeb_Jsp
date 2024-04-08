<%-- 
    Document   : signin
    Created on : 27 oct. 2023, 12:51:44 a. m.
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
    <body
        class="min-vh-100 bg-primario d-flex justify-content-center align-items-center"
    >
    
        <main class="row text-white p-5">
            <a
                class="navbar-brand pb-5 d-flex justify-content-center"
                href="./index.jsp"
                ><img
                    src="/ProyectoResolviendo/imagenes/Logo-resolviendo.png"
                    width="150px"
                    alt=""
            /></a>
            <form class="mx-auto row-8" action="signin" method="post" style="max-width: 300px;">

                ${alert}
                <!-- Nombre input -->
                <label class="form-label" for="name">Nombre</label>
                    <div class="form-outline mb-4">
                        <input
                            type="text"
                            id="name"
                            name="name"
                            class="form-control"
                            value="${name}"
                        />
                    </div>

                <!-- Apellido input -->
                <label class="form-label" for="lastname">Apellido</label>
                    <div class="form-outline mb-4">
                        <input
                            type="text"
                            id="lastname"
                            name="lastname"
                            class="form-control"
                            value="${lastName}"
                        />
                    </div>

                <!-- Nombre de usuario -->
                <label class="form-label" for="user">Nombre de usuario</label>
                    <div class="form-outline mb-4">
                        <input
                            type="text"
                            id="user"
                            name="user"
                            class="form-control"
                            value="${user}"
                        />
                    </div>

                <!-- Email input -->
                <label class="form-label" for="email">Correo</label>
                    <div class="form-outline mb-4">
                        <input
                            type="email"
                            id="email"
                            name="email"
                            class="form-control"
                            value="${email}"
                        />
                    </div>

                <!-- Password input -->
                <label class="form-label" for="password">Contraseña</label>
                    <div class="form-outline mb-4">
                        <input
                            type="password"
                            id="password"
                            name="password"
                            class="form-control"
                        />
                    </div>

                <!-- Password input -->
                <label class="form-label" for="password2">Reingrese contraseña</label>
                    <div class="form-outline mb-4">
                        <input
                            type="password"
                            id="password2"
                            name="password2"
                            class="form-control"
                        />
                    </div>
                <!-- Submit button -->
                <button
                    type="submit"
                    class="btn btn-primary bg-primario btn-block mb-4"
                >
                    Crear cuenta
                </button>                
            </form>
            <%@include file="footer.jsp" %>
        </main> 
        
    </body>
</html>
