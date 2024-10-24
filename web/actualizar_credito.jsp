<body>
    <div class="container">
        <header>
            <h1>GRIFO PETROMAR</h1>
            <button class="logout-btn">Cerrar Sesión</button>
        </header>

        <div class="title">
            <h2>ACTUALIZAR A CREDITO</h2>
        </div>

        <div class="credit-table">
            <table>
                <thead>
                    <tr>
                        <th>CLIENTE CREDITO</th>
                        <th>FECHA FINAL</th>
                        <th>HISTORIAL</th>
                        <th>DESPACHO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>AGROGENESIS</td>
                        <td>12/09/2024</td>
                        <td><button class="history-btn" onclick="location.href='historial_credito.jsp'">?</button></td>
                        <td><button class="dispatch-btn" onclick="location.href='retiro_credito.jsp'">?</button></td>
                    </tr>
                </tbody>
            </table>
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

header h1 {
    font-size: 1.5rem;
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
    margin: 20px 0;
    border-radius: 5px;
}

.credit-table {
    width: 100%;
    margin-top: 20px;
}

.credit-table table {
    width: 100%;
    border-collapse: collapse;
}

.credit-table th {
    background-color: #004D40; /* Verde oscuro */
    color: white;
    padding: 12px;
    text-align: center;
}

.credit-table td {
    text-align: center;
    padding: 12px;
    color: #333;
    border-bottom: 1px solid #006064; /* Borde azul verdoso */
}

.history-btn, .dispatch-btn {
    background-color: transparent;
    border: none;
    cursor: pointer;
    font-size: 1.5rem;
    padding: 0;
    width: 40px; /* Asegurando que el botón sea circular */
    height: 40px; /* Asegurando que el botón sea circular */
    border-radius: 50%; /* Hace que el botón sea totalmente redondo */
    display: inline-flex;
    align-items: center;
    justify-content: center;
}

.history-btn {
    background-color: #ffd700; /* Color para el botón de historial */
    color: #ffffff;
}

.dispatch-btn {
    background-color: #b0ccff; /* Verde medio para el botón de despacho */
    color: white;
}

.history-btn:hover, .dispatch-btn:hover {
    opacity: 0.8;
}

</style>
</html>
