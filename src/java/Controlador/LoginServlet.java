/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

/**
 *
 * @author amali
 */

import Config.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection connection = DBConnection.getConnection()) {
            // Llamada al procedimiento almacenado para autenticar al usuario
            CallableStatement statement = connection.prepareCall("{CALL autenticarUsuario(?, ?, ?, ?)}");
            statement.setString(1, username);
            statement.setString(2, password);

            // Registrar los parámetros de salida
            statement.registerOutParameter(3, java.sql.Types.INTEGER); // Resultado
            statement.registerOutParameter(4, java.sql.Types.BIT);     // Estado

            // Ejecutar el procedimiento
            statement.execute();

            // Obtener los valores de salida
            int resultado = statement.getInt(3);
            int estado = statement.getInt(4);

            if (resultado == 1 && estado == 1) {
                // Usuario autenticado y activo
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("bienvenido.jsp"); // Redirige a la página de bienvenida
            } else if (resultado == -1) {
                // Usuario inactivo
                request.setAttribute("errorMessage", "El usuario está inactivo.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                // Credenciales incorrectas
                request.setAttribute("errorMessage", "Usuario o contraseña incorrectos.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error en el sistema, inténtelo más tarde.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
