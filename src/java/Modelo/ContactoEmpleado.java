/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author amali
 */


public class ContactoEmpleado {
    private int idContactoEmpleado;  // Cambio a camelCase y private
    private String detalle;

    public ContactoEmpleado(int idContactoEmpleado, String detalle) {
        this.idContactoEmpleado = idContactoEmpleado;
        this.detalle = detalle;
    }

    public ContactoEmpleado() {
    }

    public int getIdContactoEmpleado() {
        return idContactoEmpleado;
    }

    public void setIdContactoEmpleado(int idContactoEmpleado) {
        this.idContactoEmpleado = idContactoEmpleado;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }
    
    
}

