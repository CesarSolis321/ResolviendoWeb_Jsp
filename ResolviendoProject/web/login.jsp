<%-- 
    Document   : login
    Created on : 27 oct. 2023, 12:50:32 a. m.
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
        <main class="row-12 text-white p-5">
            <a
                class="navbar-brand pb-5 d-flex justify-content-center"
                href="./index.jsp"
                ><img
                    src="/ProyectoResolviendo/imagenes/Logo-resolviendo.png"
                    width="150px"
                    alt=""
            /></a>
            <!-- Error al loguearse -->
            <%
                HttpSession s = request.getSession();
                String error = (String)s.getAttribute("error");
                
                if(error != null){
            %>
            <div class="mx-auto row-8">
                <p class=" text-center alert alert-danger" role="alert">
                    <%=error%>
                 </p>
            </div>
            <%
                }
                s.setAttribute("error",null);
            %>
            <form class="mx-auto row-8" action="login" method="post" style="max-width: 300px;">
                <!-- User input -->
                <label class="form-label" for="user">Correo</label>
                <div class="form-outline mb-4">
                    <input
                        type="text"
                        id="user"
                        name="user"
                        class="form-control"
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

                <!-- 2 column grid layout for inline styling -->
                <div class="row mb-4">
                    <div class="col d-flex justify-content-center">
                        <!-- Checkbox -->
                        <div class="form-check">
                            <input
                                class="form-check-input"
                                type="checkbox"
                                value=""
                                id="form2Example31"
                                checked
                            />
                            <label
                                class="form-check-label"
                                for="form2Example31"
                            >
                                Recordarme
                            </label>
                        </div>
                    </div>

                    <div class="col">
                        <!-- Simple link -->
                        <a class="text-primario" href="#"
                            >¿Has olvidado tu contraseña?</a
                        >
                    </div>
                </div>

                <!-- Submit button -->
                <button
                    type="submit"
                    class="btn btn-primary bg-primario btn-block mb-4"
                >
                    Iniciar sesión
                </button>

                <!-- Register buttons -->
                <div class="text-center">
                    <p>
                        ¿No es miembro?
                        <a class="text-primario" href="signin.jsp">Crear cuenta</a>
                    </p>
                </div>
            </form>
            
            <%@include file="footer.jsp" %>
        </main>
    </body>
</html>
