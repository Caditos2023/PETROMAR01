<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Cliente a Crédito - Grifo Petromar</title>
    <link rel="stylesheet" href="regist_client_cred.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>GRIFO PETROMAR</h1>
            <button class="logout-btn">CERRAR SESIÓN</button>
        </header>

        <div class="title">
            <h2>REGISTRAR CLIENTE A CRÉDITO</h2>
        </div>

        <div class="client-info">
            <h3>PETROMAR S.R.L</h3>
            <p>PROLONGACION AV. 9 DE OCTUBRE S/N CAYALTI CHICLAYO LAMBAYEQUE</p>
            <label>DIRECCIÓN <input type="text" placeholder=""/></label>
            <label>EMPRESA/CLIENTE <input type="text" placeholder=""/></label>
            <label>RUC/DNI <input type="text" placeholder=""/></label>
            <div class="fuel-type">
                <label>TIPO DE COMBUSTIBLE:</label>
                <input type="radio" name="combustible" value="premi"> PREMI
                <input type="radio" name="combustible" value="regu"> REGU
                <input type="radio" name="combustible" value="dies"> DIES
            </div>
            <label>MONTO FIJADO POR GALÓN <input type="text" class="small-input" placeholder=""/></label>
            <label>GALONES <input type="text" class="small-input" placeholder=""/></label>
            <label>FECHA A CANCELAR <input type="date" class="date-input" placeholder=""/></label>
        </div>
        
        <div class="button-section">
            <button class="save-btn">GUARDAR</button>
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

.client-info {
    padding: 15px;
    background-color: #cfe9d9; /* Azul claro */
    color: #333;
    border-radius: 5px;
}

.client-info h3 {
    margin-bottom: 10px;
    font-size: 1.2rem;
}

.client-info p {
    margin-bottom: 15px;
    font-size: 1rem;
}

label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

input[type="text"],
input[type="date"] {
    padding: 5px;
    border: 1px solid #333;
    border-radius: 3px;
    width: 400px; /* Ancho general para campos de texto */
    margin-top: 5px;
}

.small-input {
    width: 100px; /* Ancho reducido para los campos más pequeños */
}

.date-input {
    width: 150px; /* Ancho adecuado para el selector de fecha */
}

.fuel-type {
    margin-bottom: 15px;
}

.fuel-type label {
    font-weight: bold;
    margin-right: 10px;
}

.button-section {
    display: flex;
    justify-content: flex-end;
    margin-top: 20px;
}

.save-btn {
    background-color: #32CD32; /* Verde medio */
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 1rem;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
}

.save-btn:hover {
    background-color: #48A999; /* Verde más claro en hover */
}

</style>

</html>