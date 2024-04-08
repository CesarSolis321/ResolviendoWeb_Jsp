<%-- 
    Document   : temas
    Created on : 27 oct. 2023, 12:51:55 a. m.
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
    <body class="bg-primario">
        <%@include file="header.jsp" %>
        
        <main class="container my-5">
            <!--TEMA1-->
            <div class="accordion mb-3" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button
                            class="accordion-button"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#tema1"
                            aria-expanded="true"
                            aria-controls="collapseOne"
                        >
                            LÓGICA PROPOSICIONAL
                        </button>
                    </h2>
                    <div
                        id="tema1"
                        class="accordion-collapse collapse show row row-gap-3 pt-3"
                        data-bs-parent="#accordionExample"
                    >
                        <div class="accordion-body col-12 col-lg-8">
                            <h3 class="fw-bold">Pregunta 1</h3>
                            It is shown by default, until the collapse plugin
                            adds the appropriate classes that we use to style
                            each element. These classes control the overall
                            appearance, as well as the showing and hiding via
                            CSS transitions. You can modify any of this with
                            custom CSS or overriding our default variables. It's
                            also worth noting that just about any HTML can go
                            within the <code>.accordion-body</code>, though the
                            transition does limit overflow.
                            
                        </div>
                        <div class="col-12 col-lg-4">
                            <div class="container">
                                <!--COMENTARIOS-->
                                <div
                                    class="overflow-auto p-3 bg-light border-secundario"
                                    style="max-width: 100%; max-height: 500px"
                                >
                                    <div
                                        class="row comments justify-content-center"
                                    >
                                        <div class="col-12">
                                            <form
                                                class="form_comments d-flex justify-content-end flex-wrap"
                                                name="form3" action="gestioncomentario" method="get"
                                            >   
                                                <input type="hidden" name="instruccion" value="insertarComentarioPadre">
                                                <textarea name="textoComentario" id="textoComentario" 
                                                    placeholder="Comentario"
                                                ></textarea>
                                                <button
                                                    class="btn"
                                                    type="button"
                                                >
                                                    Comentar
                                                </button>
                                            </form>

                                            <div class="media">
                                                <img
                                                    src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                    alt="Rodolfo"
                                                    width="64px"
                                                    height="64px"
                                                    class="d-flex align-self-center rounded-circle"
                                                />
                                                <div class="media-body">
                                                    <p class="name">
                                                        Rodolfo Alata
                                                        <span>11:56, hoy</span>
                                                    </p>
                                                    <p class="comment">
                                                        Lorem ipsum, dolor sit
                                                        amet consectetur
                                                        adipisicing elit.
                                                        Veritatis eos dolore
                                                        optio!
                                                    </p>
                                                    <div
                                                        class="buttons text-end"
                                                    >
                                                        <a href="#"
                                                            >Responder</a
                                                        >
                                                        <a href="#">Editar</a>
                                                        <a href="#">Eliminar</a>
                                                    </div>

                                                    <div class="media">
                                                        <img
                                                            src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                            alt="Rodolfo"
                                                            width="64px"
                                                            height="64px"
                                                            class="d-flex align-self-center rounded-circle"
                                                        />
                                                        <div class="media-body">
                                                            <p class="name">
                                                                Rodolfo Alata
                                                                <span
                                                                    >22:56,
                                                                    hoy</span
                                                                >
                                                            </p>
                                                            <p class="comment">
                                                                Lorem ipsum,
                                                                dolor sit amet
                                                                consectetur
                                                                adipisicing
                                                                elit. Veritatis
                                                                eos dolore
                                                                optio!
                                                            </p>
                                                            <div
                                                                class="buttons text-end"
                                                            >
                                                                <a href="#"
                                                                    >Responder</a
                                                                >
                                                                <a href="#"
                                                                    >Editar</a
                                                                >
                                                                <a href="#"
                                                                    >Eliminar</a
                                                                >
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-body col-12 col-lg-8">
                            <h3 class="fw-bold">Pregunta 2</h3>
                            It is shown by default, until the collapse plugin
                            adds the appropriate classes that we use to style
                            each element. These classes control the overall
                            appearance, as well as the showing and hiding via
                            CSS transitions. You can modify any of this with
                            custom CSS or overriding our default variables. It's
                            also worth noting that just about any HTML can go
                            within the <code>.accordion-body</code>, though the
                            transition does limit overflow.
                        </div>
                        <div class="col-12 col-lg-4">
                            <div class="container">
                                <!--COMENTARIOS-->
                                <div
                                    class="overflow-auto p-3 bg-light border-secundario"
                                    style="max-width: 100%; max-height: 500px"
                                >
                                    <div
                                        class="row comments justify-content-center"
                                    >
                                        <div class="col-12">
                                            <form
                                                class="form_comments d-flex justify-content-end flex-wrap"
                                            >
                                                <textarea
                                                    placeholder="Comentario"
                                                ></textarea>
                                                <button
                                                    class="btn"
                                                    type="button"
                                                >
                                                    Comentar
                                                </button>
                                            </form>

                                            <div class="media">
                                                <img
                                                    src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                    alt="Rodolfo"
                                                    width="64px"
                                                    height="64px"
                                                    class="d-flex align-self-center rounded-circle"
                                                />
                                                <div class="media-body">
                                                    <p class="name">
                                                        Rodolfo Alata
                                                        <span>11:56, hoy</span>
                                                    </p>
                                                    <p class="comment">
                                                        Lorem ipsum, dolor sit
                                                        amet consectetur
                                                        adipisicing elit.
                                                        Veritatis eos dolore
                                                        optio!
                                                    </p>
                                                    <div
                                                        class="buttons text-end"
                                                    >
                                                        <a href="#"
                                                            >Responder</a
                                                        >
                                                        <a href="#">Editar</a>
                                                        <a href="#">Eliminar</a>
                                                    </div>

                                                    <div class="media">
                                                        <img
                                                            src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                            alt="Rodolfo"
                                                            width="64px"
                                                            height="64px"
                                                            class="d-flex align-self-center rounded-circle"
                                                        />
                                                        <div class="media-body">
                                                            <p class="name">
                                                                Rodolfo Alata
                                                                <span
                                                                    >22:56,
                                                                    hoy</span
                                                                >
                                                            </p>
                                                            <p class="comment">
                                                                Lorem ipsum,
                                                                dolor sit amet
                                                                consectetur
                                                                adipisicing
                                                                elit. Veritatis
                                                                eos dolore
                                                                optio!
                                                            </p>
                                                            <div
                                                                class="buttons text-end"
                                                            >
                                                                <a href="#"
                                                                    >Responder</a
                                                                >
                                                                <a href="#"
                                                                    >Editar</a
                                                                >
                                                                <a href="#"
                                                                    >Eliminar</a
                                                                >
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--TEMA2-->
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button
                            class="accordion-button"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#tema2"
                            aria-expanded="true"
                            aria-controls="collapseOne"
                        >
                            CONJUNTOS
                        </button>
                    </h2>
                    <div
                        id="tema2"
                        class="accordion-collapse collapse show row row-gap-3 pt-3"
                        data-bs-parent="#accordionExample"
                    >
                        <div class="accordion-body col-12 col-lg-8">
                            <h3 class="fw-bold">Pregunta 1</h3>
                            It is shown by default, until the collapse plugin
                            adds the appropriate classes that we use to style
                            each element. These classes control the overall
                            appearance, as well as the showing and hiding via
                            CSS transitions. You can modify any of this with
                            custom CSS or overriding our default variables. It's
                            also worth noting that just about any HTML can go
                            within the <code>.accordion-body</code>, though the
                            transition does limit overflow.
                        </div>
                        <div class="col-12 col-lg-4">
                            <div class="container">
                                <!--COMENTARIOS-->
                                <div
                                    class="overflow-auto p-3 bg-light border-secundario"
                                    style="max-width: 100%; max-height: 500px"
                                >
                                    <div
                                        class="row comments justify-content-center"
                                    >
                                        <div class="col-12">
                                            <form
                                                class="form_comments d-flex justify-content-end flex-wrap"
                                            >
                                                <textarea
                                                    placeholder="Comentario"
                                                ></textarea>
                                                <button
                                                    class="btn"
                                                    type="button"
                                                >
                                                    Comentar
                                                </button>
                                            </form>

                                            <div class="media">
                                                <img
                                                    src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                    alt="Rodolfo"
                                                    width="64px"
                                                    height="64px"
                                                    class="d-flex align-self-center rounded-circle"
                                                />
                                                <div class="media-body">
                                                    <p class="name">
                                                        Rodolfo Alata
                                                        <span>11:56, hoy</span>
                                                    </p>
                                                    <p class="comment">
                                                        Lorem ipsum, dolor sit
                                                        amet consectetur
                                                        adipisicing elit.
                                                        Veritatis eos dolore
                                                        optio!
                                                    </p>
                                                    <div
                                                        class="buttons text-end"
                                                    >
                                                        <a href="#"
                                                            >Responder</a
                                                        >
                                                        <a href="#">Editar</a>
                                                        <a href="#">Eliminar</a>
                                                    </div>

                                                    <div class="media">
                                                        <img
                                                            src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                            alt="Rodolfo"
                                                            width="64px"
                                                            height="64px"
                                                            class="d-flex align-self-center rounded-circle"
                                                        />
                                                        <div class="media-body">
                                                            <p class="name">
                                                                Rodolfo Alata
                                                                <span
                                                                    >22:56,
                                                                    hoy</span
                                                                >
                                                            </p>
                                                            <p class="comment">
                                                                Lorem ipsum,
                                                                dolor sit amet
                                                                consectetur
                                                                adipisicing
                                                                elit. Veritatis
                                                                eos dolore
                                                                optio!
                                                            </p>
                                                            <div
                                                                class="buttons text-end"
                                                            >
                                                                <a href="#"
                                                                    >Responder</a
                                                                >
                                                                <a href="#"
                                                                    >Editar</a
                                                                >
                                                                <a href="#"
                                                                    >Eliminar</a
                                                                >
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-body col-12 col-lg-8">
                            <h3 class="fw-bold">Pregunta 2</h3>
                            It is shown by default, until the collapse plugin
                            adds the appropriate classes that we use to style
                            each element. These classes control the overall
                            appearance, as well as the showing and hiding via
                            CSS transitions. You can modify any of this with
                            custom CSS or overriding our default variables. It's
                            also worth noting that just about any HTML can go
                            within the <code>.accordion-body</code>, though the
                            transition does limit overflow.
                        </div>
                        <div class="col-12 col-lg-4">
                            <div class="container">
                                <!--COMENTARIOS-->
                                <div
                                    class="overflow-auto p-3 bg-light border-secundario"
                                    style="max-width: 100%; max-height: 500px"
                                >
                                    <div
                                        class="row comments justify-content-center"
                                    >
                                        <div class="col-12">
                                            <form
                                                class="form_comments d-flex justify-content-end flex-wrap"
                                            >
                                                <textarea
                                                    placeholder="Comentario"
                                                ></textarea>
                                                <button
                                                    class="btn"
                                                    type="button"
                                                >
                                                    Comentar
                                                </button>
                                            </form>

                                            <div class="media">
                                                <img
                                                    src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                    alt="Rodolfo"
                                                    width="64px"
                                                    height="64px"
                                                    class="d-flex align-self-center rounded-circle"
                                                />
                                                <div class="media-body">
                                                    <p class="name">
                                                        Rodolfo Alata
                                                        <span>11:56, hoy</span>
                                                    </p>
                                                    <p class="comment">
                                                        Lorem ipsum, dolor sit
                                                        amet consectetur
                                                        adipisicing elit.
                                                        Veritatis eos dolore
                                                        optio!
                                                    </p>
                                                    <div
                                                        class="buttons text-end"
                                                    >
                                                        <a href="#"
                                                            >Responder</a
                                                        >
                                                        <a href="#">Editar</a>
                                                        <a href="#">Eliminar</a>
                                                    </div>

                                                    <div class="media">
                                                        <img
                                                            src="/ProyectoResolviendo/imagenes/foto-perfil.jpg"
                                                            alt="Rodolfo"
                                                            width="64px"
                                                            height="64px"
                                                            class="d-flex align-self-center rounded-circle"
                                                        />
                                                        <div class="media-body">
                                                            <p class="name">
                                                                Rodolfo Alata
                                                                <span
                                                                    >22:56,
                                                                    hoy</span
                                                                >
                                                            </p>
                                                            <p class="comment">
                                                                Lorem ipsum,
                                                                dolor sit amet
                                                                consectetur
                                                                adipisicing
                                                                elit. Veritatis
                                                                eos dolore
                                                                optio!
                                                            </p>
                                                            <div
                                                                class="buttons text-end"
                                                            >
                                                                <a href="#"
                                                                    >Responder</a
                                                                >
                                                                <a href="#"
                                                                    >Editar</a
                                                                >
                                                                <a href="#"
                                                                    >Eliminar</a
                                                                >
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="footer.jsp" %>
    </body>
</html>
