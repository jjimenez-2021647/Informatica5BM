package com.kinalitosclothes.modelo;

public class DispositivosPerifericos {
    private int codigoDP;
    private String nombreDP;
    private double precioDP;
    private int stock;
    private String tipo;
    private int codigoProveedor;

    public DispositivosPerifericos() {
    }

    public DispositivosPerifericos(int codigoDP, String nombreDP, double precioDP, int stock, String tipo, int codigoProveedor) {
        this.codigoDP = codigoDP;
        this.nombreDP = nombreDP;
        this.precioDP = precioDP;
        this.stock = stock;
        this.tipo = tipo;
        this.codigoProveedor = codigoProveedor;
    }

    public int getCodigoDP() {
        return codigoDP;
    }

    public void setCodigoDP(int codigoDP) {
        this.codigoDP = codigoDP;
    }

    public String getNombreDP() {
        return nombreDP;
    }

    public void setNombreDP(String nombreDP) {
        this.nombreDP = nombreDP;
    }

    public double getPrecioDP() {
        return precioDP;
    }

    public void setPrecioDP(double precioDP) {
        this.precioDP = precioDP;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getCodigoProveedor() {
        return codigoProveedor;
    }

    public void setCodigoProveedor(int codigoProveedor) {
        this.codigoProveedor = codigoProveedor;
    }
    
    
}
