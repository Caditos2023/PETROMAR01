/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;



public class Cliente {
    private int idCliente;  // Cambio a camelCase y private
    private String nombre;
    private String documento;
    private String detalle;
      // Relacionamos al cliente con su contacto
    
    // Getters y Setters

   

    // Constructor por defecto
    public Cliente() {
    }

    public Cliente(int idCliente, String nombre, String documento, String detalle, Documentacion Documentacion, ContactoCliente contactoCliente) {
        this.idCliente = idCliente;
        this.nombre = nombre;
        this.documento = documento;
        this.detalle = detalle;

 

   

   }    

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

}