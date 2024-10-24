/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author amali
 */

public class Documentacion {
    private int idDocumentacion;  // Cambio a camelCase y private
    private String descripcion;

    // Constructor por defecto
    public Documentacion() {
    }

    // Constructor con parámetros
    public Documentacion(int idDocumentacion, String descripcion) {
        this.idDocumentacion = idDocumentacion;
        this.descripcion = descripcion;
    }

    // Getters y Setters
    public int getIdDocumentacion() {
        return idDocumentacion;
    }

    public void setIdDocumentacion(int idDocumentacion) {
        this.idDocumentacion = idDocumentacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
