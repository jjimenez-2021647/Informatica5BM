package com.kinalitosclothes.modelo;

import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DispositivosPerifericosDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List<DispositivosPerifericos> listar() {
        String sql = "call sp_ListarDispositvosPerifericos();";
        List<DispositivosPerifericos> listaDP = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                DispositivosPerifericos DP = new DispositivosPerifericos();
                DP.setCodigoDP(rs.getInt(1));
                DP.setNombreDP(rs.getString(2));
                DP.setPrecioDP(rs.getDouble(3));
                DP.setStock(rs.getInt(4));
                DP.setTipo(rs.getString(5));
                DP.setCodigoProveedor(rs.getInt(6));
                listaDP.add(DP);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaDP;
    }

    public int agregar(DispositivosPerifericos DP) {
        String sql = "call sp_AgregarDispositvosPerifericos(?, ?, ?, ?, ?);";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, DP.getNombreDP());
            ps.setDouble(2, DP.getPrecioDP());
            ps.setInt(3, DP.getStock());
            ps.setString(4, DP.getTipo());
            ps.setInt(5, DP.getCodigoProveedor());
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public int eliminar(int codigoDP) {
        String sql = "call sp_EliminarDispositvosPerifericos(?);";
        resp = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, codigoDP);

            resp = ps.executeUpdate();
            System.out.println("DP eliminado. Filas afectadas: " + resp);

        } catch (Exception e) {
            System.out.println("Error al eliminar DP: " + e.getMessage());
            e.printStackTrace();
        }
        return resp;
    }

    public DispositivosPerifericos buscar(int codigoDP) {
        String sql = "call sp_BuscarDispositvosPerifericos(?);";
        DispositivosPerifericos DP = null;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, codigoDP);
            rs = ps.executeQuery();

            if (rs.next()) {
                DP = new DispositivosPerifericos();
                DP.setCodigoDP(rs.getInt(1));
                DP.setNombreDP(rs.getString(2));
                DP.setPrecioDP(rs.getDouble(3));
                DP.setStock(rs.getInt(4));
                DP.setTipo(rs.getString(5));
                DP.setCodigoProveedor(rs.getInt(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return DP;
    }
    
    public int actualizar(DispositivosPerifericos DP) {
    String sql = "call sp_EditarDispositivosPerifericos (?, ?, ?, ?, ?, ?);";
    resp = 0;
    try {
        con = cn.Conexion();
        ps = con.prepareStatement(sql);
        ps.setInt(1, DP.getCodigoDP());
        ps.setString(2, DP.getNombreDP());
        ps.setDouble(3, DP.getPrecioDP());
        ps.setInt(4, DP.getStock());
        ps.setString(5, DP.getTipo());
        ps.setInt(6, DP.getCodigoProveedor());
        resp = ps.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return resp;
}
}
