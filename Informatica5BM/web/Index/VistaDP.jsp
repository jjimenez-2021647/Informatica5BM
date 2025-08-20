<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD_DP</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaproveedoradmin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">D<span>P</span></div>
                <ul class="menu">
                    <li><a href="Controlador?menu=Index">Menu Inicio</a></li>
                    <li><a href="Controlador?menu=Proveedor&accion=Listar">Proveedor</a></li>
                </ul>
            </div>
        </nav>

        <section>
            <div class="container">
                <h1>Bienvenido al CRUD completo de la entidad <b>Dispositivos Perifericos</b></h1>
                <!--apartado para crear el proveedor-->
                <div class="section">
                    <h2>Agregar o actualizar DP</h2>
                    <form action="Controlador?menu=VistaDP" method="POST">
                        <!--guarda el codigo para que se ejecute el editar y actualizar y asi no se tiene que editar porque se guarda con el mismo id que seleccionamos-->
                        <input type="hidden" name="txtCodigoDP" value="${dp.getCodigoDP()}">
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" name="txtNombreDP" id="txtNombreProveedor" value="${dp.getNombreDP()}" required>
                                <label class="label-input">Nombre DP</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="txtPrecioDP" id="txtTelefonoProveedor" value="${dp.getPrecioDP()}" required>
                                <label class="label-input">Precio</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="txtStock" id="txtCorreoProveedor" value="${dp.getStock()}" required>
                                <label class="label-input">Stock</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" name="txtTipo" id="txtPaisProveedor" value="${dp.getTipo()}" required>
                                <label class="label-input">Tipo DP</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="txtCodigoProveedor" id="txtCodigoProveedorr" value="${dp.getCodigoProveedor()}" required>
                                <label class="label-input">Codigo Proveedor</label>
                            </div>
                            <button type="submit" class="btn_actualizar" name="accion" value="Agregar">
                                <span class="bnt_texto">Crear DP</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-plus"></i>
                                </span>
                            </button>
                            <button type="submit" class="btn_actualizar" name="accion" value="Actualizar">
                                <span class="bnt_texto">Actualizar</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </span>
                            </button>

                        </div>
                    </form>
                </div>

                <!-- el buscar y listar -->
                <div class="section">
                    <h2>Listar</h2>

                    <form action="Controlador?menu=VistaDP" method="post" class="search-section">
                        <div class="form-group search-group">
                            <input type="text" class="entrada_texto search-input" name="txtBuscarId" placeholder="">
                            <label class="label-input">Buscar DP...</label>
                            <div class="search-icon">
                                <i class="fa-solid fa-search"></i>
                            </div>
                        </div>
                        <!-- Botón oculto para enviar el formulario al presionar Enter -->
                        <button type="submit" name="accion" value="Buscar" style="display:none;"></button>

                        <button type="button" class="btn_eliminar" 
                                onclick="window.location.href = 'Controlador?menu=VistaDP&accion=Listar'">
                            <span class="bnt_texto">Cancelar</span>
                            <span class="btn_icono">
                                <i class="fa fa-solid fa-x"></i>
                            </span>
                        </button>
                    </form>
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Codigo del DP</th>
                                    <th>Nombre</th>
                                    <th>Precio</th>
                                    <th>Stock</th>
                                    <th>Tipo</th>
                                    <th>Co. Proveedor</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="dp" items="${dps}">
                                    <tr>
                                        <td>${dp.getCodigoDP()}</td>
                                        <td>${dp.getNombreDP()}</td>
                                        <td>${dp.getPrecioDP()}</td>
                                        <td>${dp.getStock()}</td>
                                        <td>${dp.getTipo()}</td>
                                        <td>${dp.getCodigoProveedor()}</td>
                                        <td>
                                            <div class="botonesTabla">
                                                <button type="button" class="btn_editar" onclick="window.location.href = 'Controlador?menu=VistaDP&accion=Editar&id=${dp.getCodigoDP()}'">
                                                    <span class="bnt_texto">Editar</span>
                                                    <span class="btn_icono">
                                                        <i class="fa-solid fa-pen-to-square"></i>
                                                    </span>
                                                </button>
                                                <button type="button" class="btn_eliminar" name="btnEliminarProveedor" id="btnEliminarProveedor"
                                                        onclick="window.location.href = 'Controlador?menu=VistaDP&accion=Eliminar&id=${dp.getCodigoDP()}'">
                                                    <span class="bnt_texto">Eliminar</span>
                                                    <span class="btn_icono">
                                                        <i class="fa fa-trash"></i>
                                                    </span>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <form class="mensaje_eliminar">
                        <input type="hidden">
                        <div class="message warning">
                            <i class="fa fa-exclamation-triangle"></i>
                            <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro si lo haces se borrará de forma permanente lo que quiere decir que ya nunca lo recuperarás
                        </div>
                    </form>
                </div>
            </div>
        </section>