<%
    HttpSession se = request.getSession();
    String usuario = (String)se.getAttribute("user");
%>               
                <div class="">
                    <div class="row row-gap-4">
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-darksalmon">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        Razonamiento Verbal
                                    </h5>
                                    <p class="card-text">
                                        Mejora tus habilidades de comprensión
                                        lectora, análisis de textos y expresión
                                        escrita. Aprendé a comunicarte con
                                        claridad y a interpretar de manera
                                        efectiva la información escrita.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a href="temas.jsp" class="card-link text-black">
                                        Ir al curso
                                    </a>
                                    <a href="#" class="card-link text-black text-decoration-none">
                                        <i class="bi bi-award text-white"></i>
                                        4% completado
                                    </a>
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black">
                                        Ir al curso
                                    </a>
                                    <a href="#" class="card-link text-black text-decoration-none"></a> 
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightblue">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        Razonamiento Matemático
                                    </h5>
                                    <p class="card-text">
                                        Desarrolla tus habilidades para resolver
                                        problemas matemáticos de manera lógica y
                                        creativa. Aprende a abordar desafíos
                                        numéricos y cuantitativos con confianza.
                                    </p>
                                    
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        0% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightgreen">
                                <div class="card-body">
                                    <h5 class="card-title">Aritmética</h5>
                                    <p class="card-text">
                                        Fundamenta tu conocimiento matemático en
                                        la Aritmética, donde aprenderás sobre
                                        operaciones básicas, fracciones,
                                        decimales y otros conceptos esenciales.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        6% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-darksalmon">
                                <div class="card-body">
                                    <h5 class="card-title">Álgebra</h5>
                                    <p class="card-text">
                                        Explora la resolución de ecuaciones, la
                                        representación gráfica de funciones y la
                                        manipulación de expresiones algebraicas,
                                        habilidades clave en matemáticas y
                                        ciencias.
                                    </p>
                                <%
                                    if(usuario!=null){
                                %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        10% completado</a
                                    >
                                <%
                                    }else{
                                %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                <%
                                    }
                                %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightyellow">
                                <div class="card-body">
                                    <h5 class="card-title">Trigonometría</h5>
                                    <p class="card-text">
                                        Comprende las relaciones entre ángulos y
                                        lados en triángulos, y aprende a aplicar
                                        estas relaciones en situaciones del
                                        mundo real y en disciplinas como la
                                        física y la ingeniería.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        10% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightblue">
                                <div class="card-body">
                                    <h5 class="card-title">Geometría</h5>
                                    <p class="card-text">
                                        Desarrolla habilidades de visualización
                                        espacial y comprende las propiedades de
                                        las figuras geométricas, las
                                        transformaciones, las áreas y volúmenes.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        21% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0">
                                <div class="card-body">
                                    <h5 class="card-title">Lenguaje</h5>
                                    <p class="card-text">
                                        Aprende gramática, ortografía y
                                        estilística para mejorar tus habilidades
                                        de comunicación oral y escrita, y para
                                        expresarte con claridad y precisión.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        26% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-darksalmon">
                                <div class="card-body">
                                    <h5 class="card-title">Literatura</h5>
                                    <p class="card-text">
                                        Explora obras literarias de diferentes
                                        épocas y culturas, analizando su
                                        contenido, contexto y estilo para
                                        fomentar la apreciación de la literatura
                                        como una forma de expresión artística.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        6% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightblue">
                                <div class="card-body">
                                    <h5 class="card-title">Psicología</h5>
                                    <p class="card-text">
                                        Entiende la mente humana y el
                                        comportamiento, explorando conceptos
                                        como la percepción, el aprendizaje y la
                                        personalidad, y cómo influyen en
                                        nuestras vidas.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        8% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-darksalmon">
                                <div class="card-body">
                                    <h5 class="card-title">Educación Cívica</h5>
                                    <p class="card-text">
                                        Adquiere conocimientos sobre la
                                        estructura del gobierno, los derechos
                                        ciudadanos y la participación política
                                        para fomentar la responsabilidad cívica.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        0% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightgreen">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        Historia del Perú
                                    </h5>
                                    <p class="card-text">
                                        Sumérgete en la rica historia de Perú,
                                        desde las civilizaciones antiguas hasta
                                        la independencia y el desarrollo actual
                                        del país.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        10% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        Historia Universal
                                    </h5>
                                    <p class="card-text">
                                        Explora los acontecimientos clave que
                                        han dado forma al mundo, desde las
                                        antiguas civilizaciones hasta las
                                        guerras mundiales y la globalización.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        8% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0">
                                <div class="card-body">
                                    <h5 class="card-title">Geografía</h5>
                                    <p class="card-text">
                                        Comprende la distribución geográfica de
                                        la población, los recursos naturales,
                                        los patrones climáticos y las culturas
                                        alrededor del mundo.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        6% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightgreen">
                                <div class="card-body">
                                    <h5 class="card-title">Economía</h5>
                                    <p class="card-text">
                                        Introdúcete a los principios económicos,
                                        como la oferta y la demanda, la
                                        inversión y las políticas
                                        gubernamentales, y aprende a analizar
                                        cuestiones económicas importantes.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        7% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightyellow">
                                <div class="card-body">
                                    <h5 class="card-title">Filosofía</h5>
                                    <p class="card-text">
                                        Explora preguntas fundamentales sobre la
                                        existencia, la moral y la realidad,
                                        desarrollando habilidades de pensamiento
                                        crítico y reflexión profunda.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        56% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-darksalmon">
                                <div class="card-body">
                                    <h5 class="card-title">Física</h5>
                                    <p class="card-text">
                                        Comprende las leyes que rigen el mundo
                                        físico, desde el movimiento hasta la
                                        energía y la electricidad.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        56% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0 bg-lightblue">
                                <div class="card-body">
                                    <h5 class="card-title">Química</h5>
                                    <p class="card-text">
                                        Explora la estructura y las reacciones
                                        de la materia, aprendiendo cómo los
                                        átomos y las moléculas interactúan en
                                        reacciones químicas.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        3% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-3">
                            <div class="card border-0">
                                <div class="card-body">
                                    <h5 class="card-title">Biología</h5>
                                    <p class="card-text">
                                        Sumérgete en la vida y los organismos,
                                        aprendiendo sobre la estructura celular,
                                        la genética, la evolución y la
                                        diversidad de la vida en la Tierra.
                                    </p>
                                    <%
                                        if(usuario!=null){
                                    %>
                                    <a
                                        href="#"
                                        class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    >
                                        <i class="bi bi-award text-white"></i>
                                        51% completado</a
                                    >
                                    <%
                                        }else{
                                    %>
                                    <a href="#" class="card-link text-black"
                                        >Ir al curso</a
                                    >
                                    <a
                                        href="#"
                                        class="card-link text-black text-decoration-none"
                                    ></a
                                    >    
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
