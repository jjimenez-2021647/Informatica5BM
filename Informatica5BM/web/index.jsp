<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>K.C - Inicio</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Principal.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
    </head>

    <body>
        <!-- SECTOR 1: NAVBAR Y HERO -->
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">D<span>P</span></div>
                <ul class="menu">
                    <li><a href="#">INICIO</a></li>
                    <li><a href="Controlador?menu=Proveedor&accion=Listar">PROVEEDORES</a></li>
                    <li><a href="Controlador?menu=VistaDP&accion=Listar">DP</a></li>
                </ul>
                <div class="iconos">
                    <a href="#"><i class="fa fa-search"></i></a>
                    <a href="Controlador?menu=MisPedidos"><i class="fa fa-shopping-cart"></i></a>
                </div>
            </div>
        </nav>  
        <!-- Imagen de fondo -->
        <section class="hero-background">
            <!-- Images de fondo -->
            <div class="    -slideshow">
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
            <section class="hero">
                <div class="hero-contentI">
                    <span class="descuento">Los mejores dispositivos</span>
                    <h1>Entrada y Salida</h1>
                    <a href="#NuevosProductos" class="btn-coleccion">VER COLECCION</a>
                </div>
            </section>
        </section>

        <main class="main-content">
            <section id="NuevosProductos" class="content-section">
                <div class="container">
                    <article class="hero-overlay">
                        <h2><i>Dispositivos Perifericos</i></h2>
                        <center class="fondoimg">
                            <div class="glass-container">

                                <div class="card glass" data-text="DP Entrada" style="--r:-15;">
                                    <img src="Images/Entrada.jpg" alt="DP Entrada" width="100%" height="auto"
                                         class="card__image">

                                    <div class="card__content">
                                        <p class="card__title">Entrada</p>
                                        <p class="card__description">Tenemos los mejores dispositivos de entrada para tu computadora, aprovecha ahora.</p>
                                        <a href="Servicios.html#Pintura">
                                            <button class="card__button">Ver más</button>
                                        </a>
                                    </div>
                                </div>

                                <div class="card glass" data-text="DP Salida" style="--r:-15;">
                                    <img src="Images/Salida.png" alt="DP Salida" width="100%" height="auto"
                                         class="card__image">

                                    <div class="card__content">
                                        <p class="card__title">Salida</p>
                                        <p class="card__description">Tenemos los mejores dispositivos de salida para tu computadora, aprovecha ahora.</p>
                                        <a href="Servicios.html#Llantas">
                                            <button class="card__button">Ver más</button>
                                        </a>
                                    </div>
                                </div>

                            </div>
                            <br></br>
                            <div class="hero-content">
                                <div class="justificado">
                                    <h4><br>
                                        Explora nuestra selección de dispositivos de entrada y salida, diseñados para optimizar tu experiencia tecnológica. 
                                        Desde teclados y mouse hasta impresoras y monitores, todo en un solo lugar. Descubre el catálogo virtual y encuentra 
                                        el equipo perfecto para tu oficina o hogar.</h4>
                                </div>
                                <div class="espaciador-boton"></div>
                                <div class="hero-buttons">
                                    <a href="Controlador?menu=DPC" class="btn-botones">Dispositivos Perifericos</a>
                                </div>
                                <div class="espaciador-boton"></div>
                            </div>
                        </center>
                    </article>
                </div>
            </section>
        </main>
        <br></br>
        <br></br>

        <footer class="footer">
            <div class="footer-contenido">
                <div class="footer-logo">
                    <span>Dispositivos Perifericos</span>
                </div>
            </div>
            <div class="footer-copy">
                © Todos los derechos reservados por DP 👻
            </div>
        </footer>
    </body>

</html>