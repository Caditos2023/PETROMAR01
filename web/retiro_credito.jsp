<body>
    <div class="container">
        <header>
            <h1>GRIFO PETROMAR</h1>
            <button class="logout-btn">Cerrar Sesión</button>
        </header>

        <div class="title">
            <h2>REGISTRO DE RETIRO DE CREDITO</h2>
        </div>

        <div class="info-section">
            <!-- Tabla izquierda -->
            <div class="table-left">
                <table class="info-table">
                    <tr>
                        <td><label for="cliente">Cliente</label></td>
                        <td><input type="text" id="cliente" class="input-field"></td>
                    </tr>
                    <tr>
                        <td><label for="responsable">Responsable</label></td>
                        <td><input type="text" id="responsable" class="input-field"></td>
                    </tr>
                    <tr>
                        <td><label for="placa">Placa</label></td>
                        <td><input type="text" id="placa" class="input-field"></td>
                    </tr>
                    <tr>
                        <td><label for="dni">DNI</label></td>
                        <td><input type="text" id="dni" class="input-field"></td>
                    </tr>
                </table>
            </div>

            <!-- Tabla derecha -->
            <div class="table-right">
                <table class="capacity-info-table">
                    <tr>
                        <td><label for="tipo">Tipo:</label></td>
                        <td>
                            <select id="tipo" name="tipo">
                                <option value="opcion1">DIESEL</option>
                                <option value="opcion2">REGULAR</option>
                                <option value="opcion2">PREMIUM</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="capacidad">Capacidad GLN:</label></td>
                        <td><input type="text" id="capacidad"></td>
                    </tr>
                    <tr>
                        <td><label for="retiro">Retiro GLN:</label></td>
                        <td><input type="text" id="retiro"></td>
                    </tr>
                    <tr>
                        <td><label for="resta">Resta GLN:</label></td>
                        <td><input type="text" id="resta"></td>
                    </tr>
                </table>
            </div>
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
                <tbody id="credit-table-body">
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
    const tableBody = document.getElementById('credit-table-body');
    const newRow = document.createElement('tr');

    newRow.innerHTML = `
        <td class="auto-number"></td>
        <td>
            <input type="radio" name="descripcion${tableBody.children.length + 1}" value="Premi"> Premi
            <input type="radio" name="descripcion${tableBody.children.length + 1}" value="Regu"> Regu
            <input type="radio" name="descripcion${tableBody.children.length + 1}" value="Dbs"> Dbs
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
    // Reinicia el conteo y asigna el número a cada fila
    const rows = document.querySelectorAll('#credit-table-body .auto-number');
    rows.forEach((cell, index) => {
        cell.textContent = index + 1; // Comienza desde 1
    });
}

</script>
<style>* {
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

.info-section {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    margin: 20px 0;
}

.info {
    text-align: left;
}

.capacity-info, .form {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
}

.capacity-info label, .form-group label {
    width: 100%;
    text-align: left;
}

.capacity-info input, .capacity-info select, .input-field {
    width: 100%;
    padding: 5px;
    border: 1px solid #333;
    border-radius: 5px;
}

.table-section {
    margin-top: 20px;
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
    border: 1px solid #333;
    border-radius: 5px;
}

.add-row-btn {
    background-color: #01b9a4; /* Verde medio */
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 20px;
    float: right;
    margin-bottom: 10px;
}

.add-row-btn:hover {
    background-color: #48A999; /* Verde más claro en hover */
}

.delete-row-btn {
    background-color: #FF6347; /* Rojo tomate */
    color: white;
    border: none;
    padding: 5px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 14px;
}

.delete-row-btn:hover {
    background-color: #FF4500; /* Rojo oscuro en hover */
}

.print-btn {
    text-align: right;
    margin-top: 20px;
}

.print-btn button {
    background-color: #419abd; /* Verde medio */
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
    background-color: #48A999; /* Verde claro en hover */
}

</style>
</html>

