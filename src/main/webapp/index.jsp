<%@ page import="co.edu.elpoli.ces3.universitas.dao.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Universitas</title>
    <!-- Incluir Bootstrap desde el CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<!-- Encabezado -->
<header class="bg-success text-white text-center py-4">
    <h1>Mi Aplicación</h1>
    <p>Un sitio web básico con Bootstrap</p>
</header>

<!-- Barra de navegación -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Mi Aplicación</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Servicios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Acerca de</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contacto</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Contenido Principal -->
<div class="container my-5">
    <div class="row">
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://via.placeholder.com/400" class="card-img-top" alt="Imagen de ejemplo">
                <div class="card-body">
                    <h5 class="card-title">Título de la tarjeta 1</h5>
                    <p class="card-text">Descripción de la tarjeta. Aquí va algún texto relacionado con el contenido.</p>
                    <a href="#" class="btn btn-primary">Leer más</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://via.placeholder.com/400" class="card-img-top" alt="Imagen de ejemplo">
                <div class="card-body">
                    <h5 class="card-title">Título de la tarjeta 2</h5>
                    <p class="card-text">Descripción de la tarjeta. Aquí va algún texto relacionado con el contenido.</p>
                    <a href="#" class="btn btn-primary">Leer más</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://via.placeholder.com/400" class="card-img-top" alt="Imagen de ejemplo">
                <div class="card-body">
                    <h5 class="card-title">Título de la tarjeta 3</h5>
                    <p class="card-text">Descripción de la tarjeta. Aquí va algún texto relacionado con el contenido.</p>
                    <a href="#" class="btn btn-primary">Leer más</a>
                </div>
            </div>
        </div>
    </div>
</div>



<h1><%= "Hello World!" %></h1>

<%
    //varible primitivas
    int a = 2;
    float x = 4;
    char myChart = '9';
    boolean isAvaible = false;
    double[][] myNotes = new double[5][5];
    myNotes[0][0] = 9;
    myNotes[4][0] = 9;
    ArrayList<Student> students = new ArrayList();
    /*
    * Variables de tipo objeto
    * */
    String name = new String("Carlos");
    Integer myNumber = Integer.valueOf(99);
    Student ana = new Student("ana");
    ana.name = "Anita perez";
    System.out.println(ana.calcularNotaFinal());

    students.add(ana);

    for (Student std: students) {
        System.out.println(std.getName());
    }

%>
<p><%= ana.toString() %></p>

<br/>
<b>El resultado de la suma es <%= x + a %>
<br/>
<a href="hello-servlet">Hello Servlet</a>

    <p>El nombre es:<%= name.toLowerCase() %></p>
    <!-- Pie de página -->
    <footer class="bg-dark text-white text-center py-4">
        <p>&copy; 2024 Mi Aplicación. Todos los derechos reservados.</p>
    </footer>

    <!-- Incluir JavaScript de Bootstrap (al final para un mejor rendimiento) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>



