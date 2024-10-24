<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Venta - Grifo Petromar</title>
    <link rel="stylesheet" href="venta_soles.css">
    <script src="venta_soles.js" defer></script>
</head>
<body>
    <div class="container">
        <header>
            <h1>GRIFO PETROMAR</h1>
            <button class="logout-btn">Cerrar Sesión</button>
        </header>

        <div class="title">
            <h2>REGISTRO DE VENTA</h2>
        </div>

        <div class="info-section">
            <div class="info">
                <h3>PETROMAR S.R.L</h3>
                <p>Prolongación Av. 9 de Octubre S/N Cayaltí Chiclayo Lambayeque</p>
            </div>
            <div class="ticket-info">
                <table>
                    <tr>
                        <td>RUC:</td>
                        <td>20480644698</td>
                    </tr>
                    <tr>
                        <td>Ticket N°:</td>
                        <td><input type="text" class="ticket-input"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="form">
            <label for="cliente">Cliente</label>
            <input type="text" id="cliente" class="input-field">
            <label for="dni">DNI</label>
            <input type="text" id="dni" class="input-field">
            <label for="placa">Placa</label>
            <input type="text" id="placa" class="input-field">
        </div>

        <div class="table-section">
            <button class="add-row-btn" onclick="addRow()">+</button>
            <table>
                <thead>
                    <tr>
                        <th>N°</th>
                        <th>Descripción</th>
                        <th>Precio Galón</th>
                        <th>Precio Unit</th>
                        <th>Cant. Galón</th>
                        <th>Total</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody id="sales-table-body">
                    <tr>
                        <td class="auto-number"></td>
                        <td>
                            <input type="radio" name="descripcion1" value="Premi"> Premi
                            <input type="radio" name="descripcion1" value="Regu"> Regu
                            <input type="radio" name="descripcion1" value="Dbs"> Dbs
                        </td>
                        <td><input type="text" class="table-input"></td>
                        <td><input type="text" class="table-input"></td>
                        <td><input type="text" class="table-input"></td>
                        <td><input type="text" class="table-input"></td>
                        <td><button class="delete-row-btn" onclick="deleteRow(this)">Eliminar</button></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="print-btn">
            <button>Imprimir</button>
        </div>
    </div>
</body>
<script>

// Función para cerrar sesión
document.querySelector('.logout-btn').addEventListener('click', function() {
    if (confirm('¿Estás seguro de que deseas cerrar sesión?')) {
        // Lógica de cierre de sesión (puedes redirigir o limpiar datos aquí)
        alert('Sesión cerrada');
        window.location.href = 'login.html'; // Redirige a la página de inicio de sesión
    }
});

// Función para añadir una fila en la tabla
function addRow() {
    const tableBody = document.getElementById('sales-table-body');
    const rowCount = tableBody.children.length + 1; // Obtiene el número de filas existentes y suma 1 para la nueva fila
    const newRow = document.createElement('tr');

    newRow.innerHTML = `
        <td class="auto-number">${rowCount}</td>
        <td>
            <input type="radio" name="descripcion${rowCount}" value="Premi"> Premi
            <input type="radio" name="descripcion${rowCount}" value="Regu"> Regu
            <input type="radio" name="descripcion${rowCount}" value="Dbs"> Dbs
        </td>
        <td><input type="text" class="table-input"></td>
        <td><input type="text" class="table-input"></td>
        <td><input type="text" class="table-input"></td>
        <td><input type="text" class="table-input"></td>
        <td><button class="delete-row-btn" onclick="deleteRow(this)">Eliminar</button></td>
    `;
    tableBody.appendChild(newRow);
    updateRowNumbers(); // Actualiza la numeración después de añadir la fila
}

// Función para eliminar una fila en la tabla
function deleteRow(button) {
    const row = button.closest('tr');
    row.remove();
    updateRowNumbers(); // Actualiza la numeración después de eliminar la fila
}

// Función para actualizar los números automáticos de las filas
function updateRowNumbers() {
    const rows = document.querySelectorAll('#sales-table-body .auto-number');
    rows.forEach((cell, index) => {
        cell.textContent = index + 1; // Comienza desde 1 y actualiza cada celda con su número de fila correspondiente
    });
}
</script>

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
    background-color: #E0F2F1; /* Verde muy claro */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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
}

.title {
    background-color: #004D40; /* Verde oscuro */
    color: white;
    text-align: center;
    padding: 10px;
    margin: 10px 0;
}

.info-section {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    margin: 20px 0;
}

.info {
    text-align: left;
}

.ticket-info {
    border: 1px solid #006064; /* Azul verdoso oscuro */
    padding: 10px;
    border-radius: 5px;
    background-color: #B2DFDB; /* Verde suave */
}

.form {
    display: flex;
    justify-content: flex-start;
    gap: 20px;
    padding: 10px 0;
}

.input-field {
    padding: 5px;
    width: 20%;
    border: 1px solid #006064; /* Azul verdoso */
    border-radius: 5px;
}

.table-section {
    margin-top: 20px;
    position: relative;
}

.add-row-btn {
    position: absolute;
    right: 0;
    top: -40px;
    background-color: #006064; /* Azul verdoso oscuro */
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
    background-color: #004D40; /* Verde oscuro */
    color: white;
    padding: 8px;
    text-align: center;
}

td {
    padding: 8px;
    text-align: center;
}

.table-input {
    width: 90%;
    padding: 5px;
    border: 1px solid #006064; /* Azul verdoso oscuro */
    border-radius: 5px;
}

.delete-row-btn {
    background-color: #FF6347; /* Rojo tomate para eliminar */
    color: white;
    border: none;
    padding: 5px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 14px;
}

.print-btn {
    text-align: right;
    margin-top: 20px;
}

.print-btn button {
    background-color: #00796B; /* Verde medio */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: background-color 0.3s ease;
}

.print-btn button:hover {
    background-color: #48A999; /* Verde claro */
}

</style>
</html>
