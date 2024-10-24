/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author amali
 */
public class Tanque {
    private int idTanque;  // Cambio a camelCase y private
    private int capacidad;
    private String detalle;

    // Constructor por defecto
    public Tanque() {
    }

    // Constructor con parámetros
    public Tanque(int idTanque, int capacidad, String detalle) {
        this.idTanque = idTanque;
        this.capacidad = capacidad;
        this.detalle = detalle;
    }

    // Getters y Setters
    public int getIdTanque() {
        return idTanque;
    }

    public void setIdTanque(int idTanque) {
        this.idTanque = idTanque;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }
}

