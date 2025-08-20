<%-- 
    Document   : DPC
    Created on : 20/08/2025, 02:49:19
    Author     : joshu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Principal.css">
        <title>Dispositivos Perifericos</title>
    </head>

    <body>
        <!-- Imagen de fondo -->
        <section class="hero-background">
            <!-- Images de fondo -->
            <div class="background-slideshow">
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
            </div>

            <!-- Contenido sobre el fondo -->
            <div class="hero-content-encabezado">
                <h2>Dispositivos Perifericos</h2>
                <p>Los mejores dispositivos para ti.</p>
                <br>
                <div class="hero-buttons">
                    <a href="${pageContext.request.contextPath}/Controlador?menu=Index" class="btn-botones">Inicio</a>
                    <a href="#Entrada" class="btn-botones">Entrada</a>
                    <a href="#Salida" class="btn-botones">Salida</a>
                </div>
            </div>
        </section>

        <!-- Contenido principal -->
        <main class="main-content">
            <section id="Entrada" accion="Entrada" class="content-section">
                <div class="container">
                    <article class="hero-overlay">
                        <h2><i>Dispositivos de Entrada</i></h2>
                        <center class="fondoimg">
                            <div class="glass-container">

                                <div class="card2">
                                    <div class="card2__shine"></div>
                                    <div class="card2__glow"></div>
                                    <div class="card2__content">
                                        <div class="card2__badge">NEW</div>
                                        <div class="carousel-container">
                                            <!-- Radio buttons ocultos para controlar el carousel -->
                                            <input type="radio" name="carousel5" id="entrada1-slide1" checked>
                                            <input type="radio" name="carousel5" id="entrada1-slide2">
                                            <input type="radio" name="carousel5" id="entrada1-slide3">
                                            <input type="radio" name="carousel5" id="entrada1-slide4">
                                            <input type="radio" name="carousel5" id="entrada1-slide5">

                                            <div class="carousel">
                                                <div class="carousel-track">
                                                    <div class="carousel-item carousel-img">
                                                        <img src="${pageContext.request.contextPath}/Images/Micro1.jpeg" alt="Micro">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Micro2.png" alt="Micro">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Micro3.jpg" alt="Micro">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Micro4.png" alt="Micro">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Micro5.jpg" alt="Micro">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Flechas de navegación CON LÍMITES -->
                                            <!-- Solo se muestran las flechas necesarias según el slide activo -->

                                            <label for="entrada1-slide2" class="nav-label next-1">❯</label>

                                            <label for="entrada1-slide3" class="nav-label next-2">❯</label>
                                            <label for="entrada1-slide1" class="nav-label prev-1">❮</label>

                                            <label for="entrada1-slide4" class="nav-label next-3">❯</label>
                                            <label for="entrada1-slide2" class="nav-label prev-2">❮</label>

                                            <label for="entrada1-slide5" class="nav-label next-4">❯</label>
                                            <label for="entrada1-slide3" class="nav-label prev-3">❮</label>

                                            <label for="entrada1-slide4" class="nav-label prev-4">❮</label>

                                            <!-- Indicadores -->
                                            <div class="carousel-indicators">
                                                <label for="entrada1-slide1" class="indicator"></label>
                                                <label for="entrada1-slide2" class="indicator"></label>
                                                <label for="entrada1-slide3" class="indicator"></label>
                                                <label for="entrada1-slide4" class="indicator"></label>
                                                <label for="entrada1-slide4" class="indicator"></label>
                                            </div>
                                        </div>

                                        <div class="card2__text">
                                            <p class="card2__title">Microfono</p>
                                            <p class="card2__description" style="text-align: justify;">
                                                Diferentes diseños para acoplarse a tu propio estilo.
                                            </p>
                                        </div>
                                        <div class="card2__footer">
                                            <div class="card2__price">$300 - $800</div>
                                            <div class="card2__button">
                                                <svg height="16" width="16" viewBox="0 0 24 24">
                                                <path stroke-width="2" stroke="currentColor" d="M4 12H20M12 4V20"
                                                      fill="currentColor"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <button class="buttonC">
                                            <span class="shadowC"></span>
                                            <span class="edgeC"></span>
                                            <div class="frontC">
                                                <span>Comprar</span>
                                            </div>
                                        </button>
                                    </div>
                                </div>

                                <div class="espaciador-lados"></div>

                                <div class="card2">
                                    <div class="card2__shine"></div>
                                    <div class="card2__glow"></div>
                                    <div class="card2__content">
                                        <div class="card2__badge">NEW</div>
                                        <div class="carousel-container">
                                            <!-- Radio buttons ocultos para controlar el carousel -->
                                            <input type="radio" name="carousel4" id="entrada2-slide1" checked>
                                            <input type="radio" name="carousel4" id="entrada2-slide2">
                                            <input type="radio" name="carousel4" id="entrada2-slide3">
                                            <input type="radio" name="carousel4" id="entrada2-slide4">
                                            <input type="radio" name="carousel4" id="entrada2-slide5">

                                            <div class="carousel">
                                                <div class="carousel-track">
                                                    <div class="carousel-item carousel-img">
                                                        <img src="${pageContext.request.contextPath}/Images/Teclado1.jpg" alt="Teclado">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Teclado2.jpg" alt="Teclado">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Teclado3.jpeg" alt="Teclado">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Teclado4.jpg" alt="Teclado">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Teclado5.jpg" alt="Teclado">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Flechas de navegación CON LÍMITES -->
                                            <!-- Solo se muestran las flechas necesarias según el slide activo -->
                                            <label for="entrada2-slide2" class="nav-label next-1">❯</label>

                                            <label for="entrada2-slide3" class="nav-label next-2">❯</label>
                                            <label for="entrada2-slide1" class="nav-label prev-1">❮</label>

                                            <label for="entrada2-slide4" class="nav-label next-3">❯</label>
                                            <label for="entrada2-slide2" class="nav-label prev-2">❮</label>

                                            <label for="entrada2-slide5" class="nav-label next-4">❯</label>
                                            <label for="entrada2-slide3" class="nav-label prev-3">❮</label>

                                            <label for="entrada2-slide4" class="nav-label prev-4">❮</label>

                                            <!-- Indicadores -->
                                            <div class="carousel-indicators">
                                                <label for="entrada2-slide1" class="indicator"></label>
                                                <label for="entrada2-slide2" class="indicator"></label>
                                                <label for="entrada2-slide3" class="indicator"></label>
                                                <label for="entrada2-slide4" class="indicator"></label>
                                                <label for="entrada2-slide4" class="indicator"></label>
                                            </div>
                                        </div>

                                        <div class="card2__text">
                                            <p class="card2__title">Teclado</p>
                                            <p class="card2__description" style="text-align: justify;">
                                                Diferentes diseños para acoplarse a tu propio estilo.
                                            </p>
                                        </div>
                                        <div class="card2__footer">
                                            <div class="card2__price">$500 - $800</div>
                                            <div class="card2__button">
                                                <svg height="16" width="16" viewBox="0 0 24 24">
                                                <path stroke-width="2" stroke="currentColor" d="M4 12H20M12 4V20"
                                                      fill="currentColor"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <button class="buttonC">
                                            <span class="shadowC"></span>
                                            <span class="edgeC"></span>
                                            <div class="frontC">
                                                <span>Comprar</span>
                                            </div>
                                        </button>
                                    </div>
                                </div>

                                <div class="espaciador-lados"></div>

                                <div class="card2">
                                    <div class="card2__shine"></div>
                                    <div class="card2__glow"></div>
                                    <div class="card2__content">
                                        <div class="card2__badge">NEW</div>
                                        <div class="carousel-container">
                                            <!-- Radio buttons ocultos para controlar el carousel -->
                                            <input type="radio" name="carousel6" id="entrada3-slide1" checked>
                                            <input type="radio" name="carousel6" id="entrada3-slide2">
                                            <input type="radio" name="carousel6" id="entrada3-slide3">
                                            <input type="radio" name="carousel6" id="entrada3-slide4">
                                            <input type="radio" name="carousel6" id="entrada3-slide5">

                                            <div class="carousel">
                                                <div class="carousel-track">
                                                    <div class="carousel-item carousel-img">
                                                        <img src="${pageContext.request.contextPath}/Images/Mouse1.jpeg" alt="Mouse">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Mouse2.jpg" alt="Mouse">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Mouse3.jpg" alt="Mouse">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Mouse4.jpg" alt="Mouse">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Mouse5.jpeg" alt="Mouse">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Flechas de navegación CON LÍMITES -->
                                            <!-- Solo se muestran las flechas necesarias según el slide activo -->
                                            <label for="entrada3-slide2" class="nav-label next-1">❯</label>

                                            <label for="entrada3-slide3" class="nav-label next-2">❯</label>
                                            <label for="entrada3-slide1" class="nav-label prev-1">❮</label>

                                            <label for="entrada3-slide4" class="nav-label next-3">❯</label>
                                            <label for="entrada3-slide2" class="nav-label prev-2">❮</label>

                                            <label for="entrada3-slide5" class="nav-label next-4">❯</label>
                                            <label for="entrada3-slide3" class="nav-label prev-3">❮</label>

                                            <label for="entrada3-slide4" class="nav-label prev-4">❮</label>

                                            <!-- Indicadores -->
                                            <div class="carousel-indicators">
                                                <label for="entrada3-slide1" class="indicator"></label>
                                                <label for="entrada3-slide2" class="indicator"></label>
                                                <label for="entrada3-slide3" class="indicator"></label>
                                                <label for="entrada3-slide4" class="indicator"></label>
                                                <label for="entrada3-slide4" class="indicator"></label>
                                            </div>
                                        </div>

                                        <div class="card2__text">
                                            <p class="card2__title">Mouse</p>
                                            <p class="card2__description" style="text-align: justify;">
                                                Diferentes diseños para acoplarse a tu propio estilo.
                                            </p>
                                        </div>
                                        <div class="card2__footer">
                                            <div class="card2__price">$500 - $900</div>
                                            <div class="card2__button">
                                                <svg height="16" width="16" viewBox="0 0 24 24">
                                                <path stroke-width="2" stroke="currentColor" d="M4 12H20M12 4V20"
                                                      fill="currentColor"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <button class="buttonC">
                                            <span class="shadowC"></span>
                                            <span class="edgeC"></span>
                                            <div class="frontC">
                                                <span>Comprar</span>
                                            </div>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </center>
                    </article>
                </div>
            </section>

            <section id="Salida" accion="Salida" class="content-section">
                <div class="container">
                    <article class="hero-overlay">
                        <h2><i>Dispositivos de Salida</i></h2>
                        <center class="fondoimg">
                            <div class="glass-container">

                                <div class="card2">
                                    <div class="card2__shine"></div>
                                    <div class="card2__glow"></div>
                                    <div class="card2__content">
                                        <div class="card2__badge">NEW</div>
                                        <div class="carousel-container">
                                            <!-- Radio buttons ocultos para controlar el carousel -->
                                            <input type="radio" name="carousel1" id="salida1-slide1" checked>
                                            <input type="radio" name="carousel1" id="salida1-slide2">
                                            <input type="radio" name="carousel1" id="salida1-slide3">
                                            <input type="radio" name="carousel1" id="salida1-slide4">
                                            <input type="radio" name="carousel1" id="salida1-slide5">

                                            <div class="carousel">
                                                <div class="carousel-track">
                                                    <div class="carousel-item carousel-img">
                                                        <img src="${pageContext.request.contextPath}/Images/Monitor1.jpg" alt="Monitor">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Monitor2.jpeg" alt="Monitor">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Monitor3.jpeg" alt="Monitor">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Monitor4.jpeg" alt="Monitor">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Monitor5.jpeg" alt="Monitor">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Flechas de navegación CON LÍMITES -->
                                            <!-- Solo se muestran las flechas necesarias según el slide activo -->

                                            <label for="salida1-slide2" class="nav-label next-1">❯</label>

                                            <label for="salida1-slide3" class="nav-label next-2">❯</label>
                                            <label for="salida1-slide1" class="nav-label prev-1">❮</label>

                                            <label for="salida1-slide4" class="nav-label next-3">❯</label>
                                            <label for="salida1-slide2" class="nav-label prev-2">❮</label>

                                            <label for="salida1-slide5" class="nav-label next-4">❯</label>
                                            <label for="salida1-slide3" class="nav-label prev-3">❮</label>

                                            <label for="salida1-slide4" class="nav-label prev-4">❮</label>

                                            <!-- Indicadores -->
                                            <div class="carousel-indicators">
                                                <label for="salida1-slide1" class="indicator"></label>
                                                <label for="salida1-slide2" class="indicator"></label>
                                                <label for="salida1-slide3" class="indicator"></label>
                                                <label for="salida1-slide4" class="indicator"></label>
                                                <label for="salida1-slide5" class="indicator"></label>
                                            </div>
                                        </div>

                                        <div class="card2__text">
                                            <p class="card2__title">Monitor</p>
                                            <p class="card2__description" style="text-align: justify;">
                                                Diferentes diseños para acoplarse a tu propio estilo.
                                            </p>
                                        </div>
                                        <div class="card2__footer">
                                            <div class="card2__price">$3500 - $5000</div>
                                            <div class="card2__button">
                                                <svg height="16" width="16" viewBox="0 0 24 24">
                                                <path stroke-width="2" stroke="currentColor" d="M4 12H20M12 4V20"
                                                      fill="currentColor"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <button class="buttonC">
                                            <span class="shadowC"></span>
                                            <span class="edgeC"></span>
                                            <div class="frontC">
                                                <span>Comprar</span>
                                            </div>
                                        </button>
                                    </div>
                                </div>

                                <div class="espaciador-lados"></div>

                                <div class="card2">
                                    <div class="card2__shine"></div>
                                    <div class="card2__glow"></div>
                                    <div class="card2__content">
                                        <div class="card2__badge">NEW</div>
                                        <div class="carousel-container">
                                            <!-- Radio buttons ocultos para controlar el carousel -->
                                            <input type="radio" name="carousel2" id="salida2-slide1" checked>
                                            <input type="radio" name="carousel2" id="salida2-slide2">
                                            <input type="radio" name="carousel2" id="salida2-slide3">
                                            <input type="radio" name="carousel2" id="salida2-slide4">
                                            <input type="radio" name="carousel2" id="salida2-slide5">

                                            <div class="carousel">
                                                <div class="carousel-track">
                                                    <div class="carousel-item carousel-img">
                                                        <img src="${pageContext.request.contextPath}/Images/Bocinas1.jpg" alt="Bocina">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Bocinas2.jpeg" alt="Bocina">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Bocinas3.jpeg" alt="Bocina">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Bocinas4.jpeg" alt="Bocina">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Bocinas5.jpg" alt="Bocina">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Flechas de navegación CON LÍMITES -->
                                            <!-- Solo se muestran las flechas necesarias según el slide activo -->
                                            <label for="salida2-slide2" class="nav-label next-1">❯</label>

                                            <label for="salida2-slide3" class="nav-label next-2">❯</label>
                                            <label for="salida2-slide1" class="nav-label prev-1">❮</label>

                                            <label for="salida2-slide4" class="nav-label next-3">❯</label>
                                            <label for="salida2-slide2" class="nav-label prev-2">❮</label>

                                            <label for="salida2-slide5" class="nav-label next-4">❯</label>
                                            <label for="salida2-slide3" class="nav-label prev-3">❮</label>

                                            <label for="salida2-slide4" class="nav-label prev-4">❮</label>

                                            <!-- Indicadores -->
                                            <div class="carousel-indicators">
                                                <label for="salida2-slide1" class="indicator"></label>
                                                <label for="salida2-slide2" class="indicator"></label>
                                                <label for="salida2-slide3" class="indicator"></label>
                                                <label for="salida2-slide4" class="indicator"></label>
                                                <label for="salida2-slide5" class="indicator"></label>
                                            </div>
                                        </div>

                                        <div class="card2__text">
                                            <p class="card2__title">Bocinas</p>
                                            <p class="card2__description" style="text-align: justify;">
                                                Diferentes diseños para acoplarse a tu propio estilo.
                                            </p>
                                        </div>
                                        <div class="card2__footer">
                                            <div class="card2__price">$300 - $500</div>
                                            <div class="card2__button">
                                                <svg height="16" width="16" viewBox="0 0 24 24">
                                                <path stroke-width="2" stroke="currentColor" d="M4 12H20M12 4V20"
                                                      fill="currentColor"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <button class="buttonC">
                                            <span class="shadowC"></span>
                                            <span class="edgeC"></span>
                                            <div class="frontC">
                                                <span>Comprar</span>
                                            </div>
                                        </button>
                                    </div>
                                </div>

                                <div class="espaciador-lados"></div>

                                <div class="card2">
                                    <div class="card2__shine"></div>
                                    <div class="card2__glow"></div>
                                    <div class="card2__content">
                                        <div class="card2__badge">NEW</div>
                                        <div class="carousel-container">
                                            <!-- Radio buttons ocultos para controlar el carousel -->
                                            <input type="radio" name="carousel3" id="salida3-slide1" checked>
                                            <input type="radio" name="carousel3" id="salida3-slide2">
                                            <input type="radio" name="carousel3" id="salida3-slide3">
                                            <input type="radio" name="carousel3" id="salida3-slide4">
                                            <input type="radio" name="carousel3" id="salida3-slide5">

                                            <div class="carousel">
                                                <div class="carousel-track">
                                                    <div class="carousel-item carousel-img">
                                                        <img src="${pageContext.request.contextPath}/Images/Audi1.jpg" alt="Audifonos">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Audi2.jpg" alt="Audifonos">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Audi3.jpeg" alt="Audifonos">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Audi4.jpeg" alt="Audifonos">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="${pageContext.request.contextPath}/Images/Audi5.jpeg" alt="Audifonos">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Flechas de navegación CON LÍMITES -->
                                            <!-- Solo se muestran las flechas necesarias según el slide activo -->
                                            <label for="salida3-slide2" class="nav-label next-1">❯</label>

                                            <label for="salida3-slide3" class="nav-label next-2">❯</label>
                                            <label for="salida3-slide1" class="nav-label prev-1">❮</label>

                                            <label for="salida3-slide4" class="nav-label next-3">❯</label>
                                            <label for="salida3-slide2" class="nav-label prev-2">❮</label>

                                            <label for="salida3-slide5" class="nav-label next-4">❯</label>
                                            <label for="salida3-slide3" class="nav-label prev-3">❮</label>

                                            <label for="salida3-slide4" class="nav-label prev-4">❮</label>

                                            <!-- Indicadores -->
                                            <div class="carousel-indicators">
                                                <label for="salida3-slide1" class="indicator"></label>
                                                <label for="salida3-slide2" class="indicator"></label>
                                                <label for="salida3-slide3" class="indicator"></label>
                                                <label for="salida3-slide4" class="indicator"></label>
                                                <label for="salida3-slide5" class="indicator"></label>
                                            </div>
                                        </div>

                                        <div class="card2__text">
                                            <p class="card2__title">Audifonos</p>
                                            <p class="card2__description" style="text-align: justify;">
                                                Diferentes diseños para acoplarse a tu propio estilo.
                                            </p>
                                        </div>
                                        <div class="card2__footer">
                                            <div class="card2__price">$1500 - $3500</div>
                                            <div class="card2__button">
                                                <svg height="16" width="16" viewBox="0 0 24 24">
                                                <path stroke-width="2" stroke="currentColor" d="M4 12H20M12 4V20"
                                                      fill="currentColor"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <button class="buttonC">
                                            <span class="shadowC"></span>
                                            <span class="edgeC"></span>
                                            <div class="frontC">
                                                <span>Comprar</span>
                                            </div>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </center>
                    </article>
                </div>
            </section>
        </main> 
    </body>

</html>
