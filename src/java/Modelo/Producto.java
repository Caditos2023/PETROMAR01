/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author amali
 */
public class Producto {
    private int idProducto;  // Cambio a camelCase y private
    private String descripcion;
    private Tanque idTanque;  // Cambio a camelCase y private

    // Constructor por defecto
    public Producto() {
    }

    // Constructor con parámetros
    public Producto(int idProducto, String descripcion, Tanque idTanque) {
        this.idProducto = idProducto;
        this.descripcion = descripcion;
        this.idTanque = idTanque;
    }

    // Getters y Setters
    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Tanque getIdTanque() {
        return idTanque;
    }

    public void setIdTanque(Tanque idTanque) {
        this.idTanque = idTanque;
    }
}
