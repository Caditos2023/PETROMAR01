/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

/**
 *
 * @author amali
 */
import Config.DBConnection;
import Modelo.Cliente;
import Modelo.ContactoCliente;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    public List<Cliente> obtenerClientes() {
        List<Cliente> listaClientes = new ArrayList<>();
        Connection conn = null;
        CallableStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.getConnection();
            String sql = "{CALL visualizarClientes()}";
            stmt = conn.prepareCall(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Cliente cliente = new Cliente();
                ContactoCliente contactoCliente = new ContactoCliente();

                cliente.setIdCliente(rs.getInt("idcliente"));
                cliente.setDocumento(rs.getString("documento"));
                cliente.setNombre(rs.getString("nombre"));
                contactoCliente.setDetalle(rs.getString("direccion"));

                // Asumimos que el cliente tiene un método para almacenar el detalle de contacto
                cliente.setDetalle(contactoCliente.getDetalle());


                listaClientes.add(cliente); // Añadir el cliente a la lista
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }

        return listaClientes;
    }
}

