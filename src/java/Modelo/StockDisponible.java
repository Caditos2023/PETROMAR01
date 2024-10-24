/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author amali
 */

public class StockDisponible {
    private int idStockDisponible;  // Cambio a camelCase y private
    private float cantidad;
    private float precio;
    private int estado;
    private Date fechaIngreso;  // Cambio a camelCase
    
    // Constructor vacío
    public StockDisponible() {
    }

    // Constructor con parámetros
    public StockDisponible(int idStockDisponible, float cantidad, float precio, int estado, Date fechaIngreso) {
        this.idStockDisponible = idStockDisponible;
        this.cantidad = cantidad;
        this.precio = precio;
        this.estado = estado;
        this.fechaIngreso = fechaIngreso;
        
    }

    // Getters y Setters
    public int getIdStockDisponible() {
        return idStockDisponible;
    }

    public void setIdStockDisponible(int idStockDisponible) {
        this.idStockDisponible = idStockDisponible;
    }

    public float getCantidad() {
        return cantidad;
    }

    public void setCantidad(float cantidad) {
        this.cantidad = cantidad;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    
}
