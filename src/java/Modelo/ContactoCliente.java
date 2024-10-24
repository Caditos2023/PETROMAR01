/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;


public class ContactoCliente {
    private int idContactoCliente;  // Cambio a camelCase y private
    private String detalle;

    public ContactoCliente(int idContactoCliente, String detalle) {
        this.idContactoCliente = idContactoCliente;
        this.detalle = detalle;
    }

    public ContactoCliente() {
    }

    public int getIdContactoCliente() {
        return idContactoCliente;
    }

    public void setIdContactoCliente(int idContactoCliente) {
        this.idContactoCliente = idContactoCliente;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }
 
}
