<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte de Venta - Grifo Petromar</title>
    <link rel="stylesheet" href="reporte_venta.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>GRIFO PETROMAR</h1>
            <button class="logout-btn">Cerrar Sesión</button>
        </header>

        <div class="title">
            <h2>REPORTE DE VENTA</h2>
        </div>

        <div class="report-container">
            <!-- Surtidor 1 -->
            <div class="dispenser-section">
                <h3>Surtidor 1</h3>
                <div class="row">
                    <label>Fluido</label>
                    <label>Nu° Final</label>
                    <label>Galón</label>
                    <label>Efectivo</label>
                </div>
                <div class="row">
                    <label>Regular</label>
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                </div>
                <div class="row">
                    <label>Premium</label>
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                </div>
                <div class="row">
                    <label>Diesel</label>
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                </div>
                <div class="subtotal-row">
                    <label>Subtotal 1:</label>
                    <input type="text" class="subtotal-input">
                </div>
            </div>

            <!-- Tabla de Resumen -->
            <div class="summary-section">
                <table>
                    <tr>
                        <td><label>Subtotal:</label></td>
                        <td><input type="text" class="summary-input"></td>
                    </tr>
                    <tr>
                        <td><label>Descuentos:</label></td>
                        <td><input type="text" class="summary-input"></td>
                    </tr>
                    <tr>
                        <td><label>Créditos:</label></td>
                        <td><input type="text" class="summary-input"></td>
                    </tr>
                    <tr>
                        <td><label>Total:</label></td>
                        <td><input type="text" class="summary-input"></td>
                    </tr>
                </table>
            </div>

            <!-- Surtidor 2 -->
            <div class="dispenser-section">
                <h3>Surtidor 2</h3>
                <div class="row">
                    <label>Fluido</label>
                    <label>Nu° Final</label>
                    <label>Galón</label>
                    <label>Efectivo</label>
                </div>
                <div class="row">
                    <label>Regular</label>
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                </div>
                <div class="row">
                    <label>Premium</label>
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                </div>
                <div class="row">
                    <label>Diesel</label>
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                    <input type="text" class="input-field">
                </div>
                <div class="subtotal-row">
                    <label>Subtotal 2:</label>
                    <input type="text" class="subtotal-input">
                </div>
            </div>

            <!-- Botón de Guardar -->
            <div class="save-btn">
                <button>GUARDAR Y ACTUALIZAR</button>
            </div>
        </div>
    </div>
</body>
<style>
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

body {
    background-color: #E0F7FA; /* Fondo azul claro */
}

.container {
    width: 100%;
    padding: 20px;
    background-color: #E0F2F1; /* Fondo verde muy claro */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Sombra suave */
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #006064; /* Azul verdoso oscuro */
    color: white;
    padding: 10px;
}

.logout-btn {
    background-color: #00C853; /* Verde brillante */
    border: none;
    padding: 8px 15px;
    cursor: pointer;
    border-radius: 5px;
    font-weight: bold;
    color: white;
}

.logout-btn:hover {
    background-color: #00A944; /* Verde más oscuro en hover */
}

.title {
    background-color: #004D40; /* Verde oscuro */
    color: white;
    text-align: center;
    padding: 10px;
    margin: 10px 0;
    border-radius: 5px;
}

.report-container {
    display: flex;
    flex-direction: column;
    gap: 20px;
    align-items: flex-start;
}

.dispenser-section {
    background-color: #cfe9d9; /* Azul claro */
    padding: 15px;
    border-radius: 8px;
    width: 60%;  /* Aumenta el ancho */
    text-align: center;
}

.dispenser-section h3 {
    margin-bottom: 10px;
    color: #333;
    text-align: center;
}

.row {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 8px 0;
}

.row label {
    width: 25%;
    font-weight: bold;
}

.input-field {
    width: 23%;
    padding: 5px;
    border: 1px solid #333;
    border-radius: 5px;
}

.subtotal-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 10px;
}

.subtotal-input {
    width: 20%;
    padding: 5px;
    border: 1px solid #333;
    border-radius: 5px;
}

.summary-section {
    background-color: #9ec7ae; /* Azul muy claro */
    padding: 10px;
    border-radius: 8px;
    width: 30%;
    align-self: flex-start;
    margin-left: auto;
    margin-top: -140px;
}

.summary-section table {
    width: 100%;
}

.summary-section label {
    font-weight: bold;
}

.summary-input {
    width: 100%;
    padding: 5px;
    border: 1px solid #333;
    border-radius: 5px;
}

.save-btn {
    align-self: flex-end;
    margin-top: -60px; /* Sube el botón */
}

.save-btn button {
    background-color: #32CD32; /* Verde medio */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: background-color 0.3s ease;
}

.save-btn button:hover {
    background-color: #48A999; /* Verde más claro en hover */
}

</style>
</html>
