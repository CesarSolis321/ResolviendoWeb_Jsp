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
                                        Mejora tus habilidades de comprensi�n
                                        lectora, an�lisis de textos y expresi�n
                                        escrita. Aprend� a comunicarte con
                                        claridad y a interpretar de manera
                                        efectiva la informaci�n escrita.
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
                                        Razonamiento Matem�tico
                                    </h5>
                                    <p class="card-text">
                                        Desarrolla tus habilidades para resolver
                                        problemas matem�ticos de manera l�gica y
                                        creativa. Aprende a abordar desaf�os
                                        num�ricos y cuantitativos con confianza.
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
                                    <h5 class="card-title">Aritm�tica</h5>
                                    <p class="card-text">
                                        Fundamenta tu conocimiento matem�tico en
                                        la Aritm�tica, donde aprender�s sobre
                                        operaciones b�sicas, fracciones,
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
                                    <h5 class="card-title">�lgebra</h5>
                                    <p class="card-text">
                                        Explora la resoluci�n de ecuaciones, la
                                        representaci�n gr�fica de funciones y la
                                        manipulaci�n de expresiones algebraicas,
                                        habilidades clave en matem�ticas y
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
                                    <h5 class="card-title">Trigonometr�a</h5>
                                    <p class="card-text">
                                        Comprende las relaciones entre �ngulos y
                                        lados en tri�ngulos, y aprende a aplicar
                                        estas relaciones en situaciones del
                                        mundo real y en disciplinas como la
                                        f�sica y la ingenier�a.
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
                                    <h5 class="card-title">Geometr�a</h5>
                                    <p class="card-text">
                                        Desarrolla habilidades de visualizaci�n
                                        espacial y comprende las propiedades de
                                        las figuras geom�tricas, las
                                        transformaciones, las �reas y vol�menes.
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
                                        Aprende gram�tica, ortograf�a y
                                        estil�stica para mejorar tus habilidades
                                        de comunicaci�n oral y escrita, y para
                                        expresarte con claridad y precisi�n.
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
                                        �pocas y culturas, analizando su
                                        contenido, contexto y estilo para
                                        fomentar la apreciaci�n de la literatura
                                        como una forma de expresi�n art�stica.
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
                                    <h5 class="card-title">Psicolog�a</h5>
                                    <p class="card-text">
                                        Entiende la mente humana y el
                                        comportamiento, explorando conceptos
                                        como la percepci�n, el aprendizaje y la
                                        personalidad, y c�mo influyen en
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
                                    <h5 class="card-title">Educaci�n C�vica</h5>
                                    <p class="card-text">
                                        Adquiere conocimientos sobre la
                                        estructura del gobierno, los derechos
                                        ciudadanos y la participaci�n pol�tica
                                        para fomentar la responsabilidad c�vica.
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
                                        Historia del Per�
                                    </h5>
                                    <p class="card-text">
                                        Sum�rgete en la rica historia de Per�,
                                        desde las civilizaciones antiguas hasta
                                        la independencia y el desarrollo actual
                                        del pa�s.
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
                                        guerras mundiales y la globalizaci�n.
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
                                    <h5 class="card-title">Geograf�a</h5>
                                    <p class="card-text">
                                        Comprende la distribuci�n geogr�fica de
                                        la poblaci�n, los recursos naturales,
                                        los patrones clim�ticos y las culturas
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
                                    <h5 class="card-title">Econom�a</h5>
                                    <p class="card-text">
                                        Introd�cete a los principios econ�micos,
                                        como la oferta y la demanda, la
                                        inversi�n y las pol�ticas
                                        gubernamentales, y aprende a analizar
                                        cuestiones econ�micas importantes.
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
                                    <h5 class="card-title">Filosof�a</h5>
                                    <p class="card-text">
                                        Explora preguntas fundamentales sobre la
                                        existencia, la moral y la realidad,
                                        desarrollando habilidades de pensamiento
                                        cr�tico y reflexi�n profunda.
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
                                    <h5 class="card-title">F�sica</h5>
                                    <p class="card-text">
                                        Comprende las leyes que rigen el mundo
                                        f�sico, desde el movimiento hasta la
                                        energ�a y la electricidad.
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
                                    <h5 class="card-title">Qu�mica</h5>
                                    <p class="card-text">
                                        Explora la estructura y las reacciones
                                        de la materia, aprendiendo c�mo los
                                        �tomos y las mol�culas interact�an en
                                        reacciones qu�micas.
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
                                    <h5 class="card-title">Biolog�a</h5>
                                    <p class="card-text">
                                        Sum�rgete en la vida y los organismos,
                                        aprendiendo sobre la estructura celular,
                                        la gen�tica, la evoluci�n y la
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
