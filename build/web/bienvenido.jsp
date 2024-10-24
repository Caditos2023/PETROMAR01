<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grifo Petromar</title>
    
</head>
<body>
    <!-- Barra de navegaci�n superior -->
    <div class="container">
        <header>
            <h1>GRIFO PETROMAR</h1>
            <button class="logout-btn" onclick="window.location.href='login.html'">CERRAR SESI�N</button>
        </header>
    </div>

    <!-- Icono de men� (hamburger icon) -->
    <button id="menuIcon" class="menu-icon" onclick="toggleMenu()">&#9776;</button>

    <!-- Men� lateral -->
    <div id="sideMenu" class="side-menu">
        <button onclick="openModal('saleModal')">registro de venta</button>
        <button onclick="openModal('creditModal')">registro de cr�dito</button>
        <button onclick="window.location.href='registro_gastos.jsp'">registro de gastos</button>
        <button onclick="window.location.href='reporte_venta.jsp'">reporte de venta</button>
        <button onclick="window.location.href='control_stock.jsp'">control de stock</button> 
        <button onclick="window.location.href='administracion_prg.jsp'">administraci�n P-R-G</button> 
        <button onclick="window.location.href='listado_unidades.jsp'">listado de unidades</button>
        <button onclick="window.location.href='listado_clientes.jsp'">listado de clientes</button> 
        <button onclick="window.location.href='listado_ventas.jsp'">listado de ventas</button>
        <button onclick="window.location.href='numeracion_surtidor.jsp'">numeracion surtidor</button>
        <button onclick="window.location.href='crear_usuarios.jsp'">administracion de usuarios</button>
   
    </div>

    <!-- Contenido principal en la pantalla -->
    <div class="content">
        <h2>PETROMAR</h2>
    </div>

    <!-- Ventana flotante (modal) para Registro de Venta -->
    <div id="saleModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('saleModal')">&times;</span>
            <h3>Registro de Venta...</h3>
            <button onclick="openWindow('venta_galones.jsp')">Venta por Galones</button>
            <button onclick="openWindow('registro_venta.jsp')">Venta por Soles</button>
        </div>
    </div>

    <!-- Ventana flotante (modal) para Registro de Cr�dito -->
    <div id="creditModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('creditModal')">&times;</span>
            <h3>Registro de Cr�dito...</h3>
            <button onclick="openWindow('registro_cliente_credito.jsp')">Registrar Cliente</button>
            <button onclick="openWindow('actualizar_credito.jsp')">Actualizar / Despacho</button>
        </div>
    </div>
</body>
<script >
// Funci�n para abrir una ventana nueva en la misma pesta�a
function openWindow(page) {
    window.location.href = page; // Redirigir a la p�gina en la misma pesta�a
}

// Funci�n para cerrar el modal
function closeModal(modalId) {
    document.getElementById(modalId).style.display = "none";
}

// Funci�n para abrir el modal
function openModal(modalId) {
    document.getElementById(modalId).style.display = "block";
}

// Funci�n para alternar el men� lateral
function toggleMenu() {
    var menu = document.getElementById("sideMenu");
    if (menu.style.display === "none" || menu.style.display === "") {
        menu.style.display = "block";
    } else {
        menu.style.display = "none";
    }
}

// Cerrar el modal cuando el usuario hace clic fuera del contenido
window.onclick = function(event) {
    var saleModal = document.getElementById("saleModal");
    var creditModal = document.getElementById("creditModal");

    if (event.target == saleModal) {
        saleModal.style.display = "none";
    }

    if (event.target == creditModal) {
        creditModal.style.display = "none";
    }
}
</script>
<style>
    /* Barra de navegaci�n superior */
body {
    background-color: #E0F7FA; /* Azul claro */
    margin: 0; /* Eliminar margen del body */
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #006064; /* Azul verdoso oscuro */
    color: white;
    padding: 10px 20px;
    width: 100%; /* Para ocupar todo el ancho */
    box-sizing: border-box; /* Incluir el padding en el ancho */
    position: fixed; /* Para que siempre se mantenga arriba */
    top: 0;
    left: 0;
    z-index: 1000; /* Para que se superponga sobre otros elementos */
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

.brand h1 {
    margin: 0;
}

/* Contenedor principal */
.container {
    display: flex;
    width: 100%;
    padding: 20px;
    background-color: #E0F7FA; /* Fondo azul claro */
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* Sombra suave */
    position: relative;
    margin-top: 70px; /* Asegurarse de que el contenido no quede oculto bajo el header */
}
.menu-icon {
    font-size: 30px;
    background-color: transparent;
    border: none;
    cursor: pointer;
    margin-right: 20px;
}

/* Men� lateral */
.side-menu {
    display: none;
    flex-direction: column;
    background-color: #004D40; /* Verde oscuro */
    padding: 15px;
    border-radius: 10px;
    width: 200px;
    position: absolute;
    right: 123px; /* POSICIONNN  */
    top:120px;
    z-index: 1000;
}

.side-menu button {
    background-color: #00796B; /* Verde medio */
    color: white;
    padding: 10px;
    margin: 5px 0;
    border: none;
    cursor: pointer;
    text-align: left;
    width: 100%;
    font-size: 14px;
    text-transform: capitalize;
}

.side-menu button:hover {
    background-color: #48A999; /* Verde claro */
}

/* Contenido principal de la pantalla */
.content {
    flex-grow: 1;
    text-align: center;
    padding-top: 100px;
}

.content h2 {
    font-size: 120px;
    color: #004D40; /* Verde oscuro */
    margin: 0;
}

/* Estilos responsivos */
@media screen and (max-width: 768px) {
    .container {
        flex-direction: column;
        align-items: center;
    }

    .side-menu {
        width: 100%;
    }

    .content h2 {
        font-size: 90px;
    }
}

/*VENTANA FLOTANTE VENTA*/
/* Estilos para la ventana flotante mejorada */
.modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7); /* Fondo oscuro transparente */
}

.modal-content {
    background-color: #E0F2F1; /* Verde muy claro */
    margin: 10% auto;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
    width: 350px;
    max-width: 80%;
    animation: fadeIn 0.5s;
    text-align: center;
}

.modal-content h3 {
    font-family: 'Arial', sans-serif;
    font-size: 1.4em;
    color: #004D40; /* Verde oscuro */
    margin-bottom: 20px;
}

.modal-content button {
    width: 100%;
    padding: 15px;
    margin: 10px 0;
    font-size: 1.1em;
    font-weight: bold;
    color: #fff;
    background-color: #009688; /* Verde medio */
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.modal-content button:hover {
    background-color: #00796B; /* Verde m�s oscuro */
}

.close {
    color: #D32F2F; /* Rojo */
    float: right;
    font-size: 25px;
    font-weight: bold;
    cursor: pointer;
}

.close:hover {
    color: #FF5252; /* Rojo claro */
}

/* Animaci�n de entrada suave */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: scale(0.9);
    }
    to {
        opacity: 1;
        transform: scale(1);
    }
}

</style>
</html>
