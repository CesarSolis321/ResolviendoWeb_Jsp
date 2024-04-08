        <header class="container-fluid border-bottom border-white bg-primario">
            <nav class="navbar navbar-expand-lg bg-transparent">
                <div class="container-fluid">
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarTogglerDemo01"
                        aria-controls="navbarTogglerDemo01"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                    >
                        <i class="bi bi-list text-white"></i>
                    </button>
                    <a class="navbar-brand" href="/ProyectoResolviendo/index.jsp"
                        ><img
                            src="/ProyectoResolviendo/imagenes/Logo-resolviendo.png"
                            width="150px"
                            alt=""
                    /></a>
                <%
                    HttpSession s = request.getSession();
                    String name = (String)s.getAttribute("name");
                    String lastName = (String)s.getAttribute("lastName");
                    if(name != null && lastName != null){
                %>
                    <div class="btn-group">
                        <button
                            type="button"
                            class="btn bg-primario text-white dropdown-toggle"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <img
                                src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                width="30px"
                                height="30px"
                                class="rounded-circle"
                                alt=""
                            />
                            <%=name%> <%=lastName%>
                            
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li>
                                <button class="dropdown-item" type="button">
                                    Perfil
                                </button>
                            </li>
                            <li>
                                <button class="dropdown-item" type="button">
                                    Mi suscripciï¿½n
                                </button>
                            </li>
                        </ul>
                    </div>
                <%
                    }
                %>
                    <div
                        class="collapse navbar-collapse"
                        id="navbarTogglerDemo01"
                    >
                        <ul class="navbar-nav align-items-lg-center">
                            <li class="nav-item">
                                <a
                                    class="nav-link text-white"
                                    aria-current="page"
                                    href="pricing.jsp"
                                    >Planes</a
                                >
                            </li>

                            <li class="nav-item">
                                <a
                                    class="nav-link text-white"
                                    aria-current="page"
                                    href="#"
                                    >Contactanos</a
                                >
                            </li>
                            <!--Botones de inicio sesiï¿½n y registro--><!--borrar cuando inicie sesion y pones salir-->
                            <li class="nav-item">
                    <%
                        if(name != null && lastName != null){
                    %>
                                <div
                                    class="nav-link d-flex align-items-center justify-content-between gap-3"
                                >
                                    <a
                                        class="text-decoration-none text-white fw-bold"
                                        href="cerrarSesion.jsp"
                                    ><i class="bi bi-box-arrow-right"></i
                                    ></a>
                                </div>
                    <%
                        }else{
                    %>
                                <div
                                    class="nav-link d-flex align-items-center gap-3"
                                >
                                    <a
                                        class="text-decoration-none px-2 py-2 bg-white text-black rounded-3"
                                        href="signin.jsp"
                                        >Crear Cuenta</a
                                    >
                                    <a
                                        class="text-decoration-none text-white fw-bold"
                                        href="login.jsp"
                                        >Iniciar Sesión</a
                                    >
                                </div>
                            
                    <%
                        }
                    %>  
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
