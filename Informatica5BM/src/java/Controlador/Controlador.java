/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import com.kinalitosclothes.modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author informatica
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        DispositivosPerifericos DP = new DispositivosPerifericos();
        DispositivosPerifericosDAO DPDAO = new DispositivosPerifericosDAO();
        ProveedoresDAO proveedoresDAO = new ProveedoresDAO();
        Proveedores proveedores = new Proveedores();
        int codUsuario;
        if (menu.equals("Index")) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else if (menu.equals("Proveedor")) {
            switch (accion) {
                case "Listar":
                    List<Proveedores> listaProveedores = proveedoresDAO.listar();
                    request.setAttribute("proveedores", listaProveedores);
                    break;
                case "Buscar":
                    String codigoProv = request.getParameter("txtBuscarId");
                    List<Proveedores> listaProveedoresB = new ArrayList<>();
                    if (codigoProv != null && !codigoProv.trim().isEmpty()) {
                        try {
                            int codigoP = Integer.parseInt(codigoProv);
                            Proveedores proveedorEncontrado = proveedoresDAO.buscar(codigoP);

                            if (proveedorEncontrado != null) {
                                listaProveedoresB.add(proveedorEncontrado);
                            } else {
                                request.setAttribute("error", "Proveedor no encontrado");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Proveedor inválido");
                        }
                    } else {
                        listaProveedoresB = proveedoresDAO.listar();
                    }

                    request.setAttribute("proveedores", listaProveedoresB);
                    request.getRequestDispatcher("/Index/vistaproveedoradmin.jsp").forward(request, response);

                    break;
                case "Agregar":
                    String nombreProveedor = request.getParameter("txtNombreProveedor");
                    String telefonoProveedor = request.getParameter("txtTelefonoProveedor");
                    String correoProveedor = request.getParameter("txtCorreoProveedor");
                    String paisProveedor = request.getParameter("txtPaisProveedor");
                    proveedores.setNombreProveedor(nombreProveedor);
                    proveedores.setTelefonoProveedor(telefonoProveedor);
                    proveedores.setCorreoProveedor(correoProveedor);
                    proveedores.setPaisProveedor(paisProveedor);
                    proveedoresDAO.agregar(proveedores);
                    if (proveedores != null) {
                        request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    } else {
                        System.out.println("No sale");
                    }
                    break;
                case "Editar":
                    int idEditar = Integer.parseInt(request.getParameter("id"));
                    Proveedores proveedorEditar = proveedoresDAO.buscar(idEditar);
                    request.setAttribute("proveedor", proveedorEditar);
                    request.setAttribute("proveedores", proveedoresDAO.listar());
                    request.getRequestDispatcher("/Index/vistaproveedoradmin.jsp").forward(request, response);
                    break;
                case "Actualizar":
                    int codigoProveedor = Integer.parseInt(request.getParameter("txtCodigoProveedor"));
                    String nombreProveedorA = request.getParameter("txtNombreProveedor");
                    String telefonoProveedorA = request.getParameter("txtTelefonoProveedor");
                    String correoProveedorA = request.getParameter("txtCorreoProveedor");
                    String paisProveedorA = request.getParameter("txtPaisProveedor");
                    proveedores.setCodigoProveedor(codigoProveedor);
                    proveedores.setNombreProveedor(nombreProveedorA);
                    proveedores.setTelefonoProveedor(telefonoProveedorA);
                    proveedores.setCorreoProveedor(correoProveedorA);
                    proveedores.setPaisProveedor(paisProveedorA);

                    int filas = proveedoresDAO.actualizar(proveedores);

                    System.out.println("Filas actualizadas: " + filas);

                    request.setAttribute("proveedores", proveedoresDAO.listar());
                    request.getRequestDispatcher("/Index/vistaproveedoradmin.jsp").forward(request, response);
                    break;
                case "Eliminar":
                    String idEliminar = request.getParameter("id");
                    if (idEliminar != null && !idEliminar.trim().isEmpty()) {
                        try {
                            int codigo = Integer.parseInt(idEliminar);

                            int resultado = proveedoresDAO.eliminar(codigo);

                            if (resultado > 0) {
                                request.setAttribute("mensaje", "Proveedor eliminado exitosamente");
                            } else {
                                request.setAttribute("error", "Error al eliminar el Proveedor");
                            }

                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Proveedor inválido");
                        }

                        response.sendRedirect("Controlador?menu=Proveedor&accion=Listar");
                        return;
                    }
                    break;
                default:
                    System.out.println("No se encontro");
            }
            request.getRequestDispatcher("/Index/vistaproveedoradmin.jsp").forward(request, response);
        } else if (menu.equals("VistaDP")) {
            switch (accion) {
                case "Listar":
                    List<DispositivosPerifericos> listaDP = DPDAO.listar();
                    request.setAttribute("dps", listaDP);
                    request.getRequestDispatcher("/Index/VistaDP.jsp").forward(request, response);
                    break;

                case "Buscar":
                    String codigoDP = request.getParameter("txtBuscarId");
                    List<DispositivosPerifericos> listaDPB = new ArrayList<>();
                    if (codigoDP != null && !codigoDP.trim().isEmpty()) {
                        try {
                            int codigoDP2 = Integer.parseInt(codigoDP);
                            DispositivosPerifericos dpEncontrado = DPDAO.buscar(codigoDP2);

                            if (dpEncontrado != null) {
                                listaDPB.add(dpEncontrado);
                            } else {
                                request.setAttribute("error", "DP no encontrado");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de DP inválido");
                        }
                    } else {
                        listaDPB = DPDAO.listar();
                    }
                    request.setAttribute("dps", listaDPB);
                    request.getRequestDispatcher("/Index/VistaDP.jsp").forward(request, response);
                    break;

                case "Agregar":
                    String nombreDP = request.getParameter("txtNombreDP");
                    String precioDP = request.getParameter("txtPrecioDP");
                    String stockDP = request.getParameter("txtStock");
                    String tipo = request.getParameter("txtTipo");
                    String codigoProveedor = request.getParameter("txtCodigoProveedor");

                    try {
                        double pDP = Double.parseDouble(precioDP);
                        int stock = Integer.parseInt(stockDP);
                        int cPDP = Integer.parseInt(codigoProveedor);

                        DP.setNombreDP(nombreDP);
                        DP.setPrecioDP(pDP);
                        DP.setStock(stock);
                        DP.setTipo(tipo);
                        DP.setCodigoProveedor(cPDP);

                        DPDAO.agregar(DP);
                        if (DP != null) {
                            response.sendRedirect("Controlador?menu=VistaDP&accion=Listar");
                        } else {
                            System.out.println("No sale");
                        }
                    } catch (NumberFormatException e) {
                        request.setAttribute("error", "Error en los datos numéricos");
                        request.getRequestDispatcher("/Index/VistaDP.jsp").forward(request, response);
                    }
                    break;

                case "Editar":
                    int idEditar = Integer.parseInt(request.getParameter("id"));
                    DispositivosPerifericos dpEditar = DPDAO.buscar(idEditar);
                    List<DispositivosPerifericos> listaDPEdit = DPDAO.listar();
                    request.setAttribute("dp", dpEditar);
                    request.setAttribute("dps", listaDPEdit);
                    request.getRequestDispatcher("/Index/VistaDP.jsp").forward(request, response);
                    break;

                case "Actualizar":
                    try {
                        int codigoDPA = Integer.parseInt(request.getParameter("txtCodigoDP"));
                        String nombreDPA = request.getParameter("txtNombreDP");
                        double precioDPA = Double.parseDouble(request.getParameter("txtPrecioDP"));
                        int stockA = Integer.parseInt(request.getParameter("txtStock"));
                        String tipoA = request.getParameter("txtTipo");
                        int codigoProvA = Integer.parseInt(request.getParameter("txtCodigoProveedor"));

                        DP.setCodigoDP(codigoDPA);
                        DP.setNombreDP(nombreDPA);
                        DP.setPrecioDP(precioDPA);
                        DP.setStock(stockA);
                        DP.setTipo(tipoA);
                        DP.setCodigoProveedor(codigoProvA);

                        int resultadoDP = DPDAO.actualizar(DP);
                        if (resultadoDP > 0) {
                            response.sendRedirect("Controlador?menu=VistaDP&accion=Listar");
                            return;
                        } else {
                            request.setAttribute("error", "Error al actualizar el dispositivo");
                            request.getRequestDispatcher("/Index/VistaDP.jsp").forward(request, response);
                        }
                    } catch (NumberFormatException e) {
                        request.setAttribute("error", "Error en los datos numéricos");
                        request.getRequestDispatcher("/Index/VistaDP.jsp").forward(request, response);
                    }
                    break;

                case "Eliminar":
                    String idEliminar = request.getParameter("id");
                    if (idEliminar != null && !idEliminar.trim().isEmpty()) {
                        try {
                            int codigo = Integer.parseInt(idEliminar);
                            int resultadoE = DPDAO.eliminar(codigo);

                            if (resultadoE > 0) {
                                request.setAttribute("mensaje", "DP eliminado exitosamente");
                            } else {
                                request.setAttribute("error", "Error al eliminar el DP");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de DP inválido");
                        }
                    }
                    response.sendRedirect("Controlador?menu=VistaDP&accion=Listar");
                    return;

                default:
                    System.out.println("No valido");
            }
        } else if (menu.equals("DPC")) {
            response.sendRedirect("Index/DPC.jsp");
        }

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response
    )
            throws ServletException,
            IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response
    )
            throws ServletException,
            IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
