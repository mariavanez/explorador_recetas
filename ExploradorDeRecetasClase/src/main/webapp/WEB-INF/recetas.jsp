<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Caseras: Recetas Fáciles de Hacer</title>
	<link rel="stylesheet" href="/css/style.css" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Englebert&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<header class="encabezado">
	<div class="logo-contenedor">
		<a href="/recetas" class="enlace">
			<img src="/img/logo-3.png" alt="caseras-logo" id="logo-img">
			<h2 class="logo-nombre">Caseras</h2>
		</a>
	</div>
</header>

<main>
	<h1 class="recetas-titulo">Recetas</h1>

	<div class="contenido">
		<c:forEach var="receta" items="${listaRecetas}">
			<div class="tarjeta">
				<!-- Acá decidí usar Bootstrap para hacer el carrusel de cada tarjeta. Se me hizo más sencillo usar esta plantilla. De igual forma, los botones de los slides, el tamaño de las imagenes y todo el contenido en general está editado en el css -->
				<div id="carrusel-${receta}" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carrusel-${receta}" data-slide-to="0" class="active"></li>
						<li data-target="#carrusel-${receta}" data-slide-to="1"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="/img/${receta}.png" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="/img/${receta}-2.png" alt="Second slide">
						</div>
					</div>

					<a class="carousel-control-prev" href="#carrusel-${receta}" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carrusel-${receta}" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

				<h3 class="carrusel-titulo">${receta}</h3>
				<button class="boton">
					<a href="recetas/${receta}" class="enlace2">Ver la receta</a>
				</button>
			</div>
		</c:forEach>
	</div>
</main>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){
        $('.carousel').carousel({
            interval: 3000 // Cambia de imagen cada 3 segundos (ajústalo a tu gusto)
        });
    });
</script>

</body>
</html>