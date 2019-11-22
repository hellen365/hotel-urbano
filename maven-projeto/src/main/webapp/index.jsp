<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Hotel Urbano</title>
<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="css/materialize.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/style2.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<!-- JAVASCRIPT  -->
<script src="https://code.jquery.com/jquery-2.1.1.js"></script>

<script>
	$(function() {

		$("#header").load("header.html");
		$("#footer").load("footer.html");

	});
</script>
</head>

<body>
	<!-- MENU  -->
	<div id="header"></div>

	<!-- BANNER  -->
	<div class=" slider">
		<ul class="slides">
			<li><img src="imagem/2.jpg"> <!-- random image -->
				<div class="caption center-align">
					<h3>This is our big Tagline!</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
			<li><img src="imagem/6.jpg"> <!-- random image -->
				<div class="caption left-align">
					<h3>Left Aligned Caption</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
			<li><img src="imagem/4.jpg"> <!-- random image -->
				<div class="caption right-align">
					<h3>Right Aligned Caption</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
			<li><img src="imagem/5.jpg"> <!-- random image -->
				<div class="caption center-align">
					<h3>This is our big Tagline!</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
		</ul>
	</div>

	<div class="fixed-action-btn">
		<a href="reservar.jsp"
			class="modal-trigger btn-floating pulse btn-large blue"> <i
			class="waves-effect waves-light large material-icons">event_note</i>
		</a>
	</div>

	<!-- SOBRE  HOTEL URBANO  -->
	<div class="container">
		<div class="section">
			<!--   Icon Section   -->
			<div class="row">
				<div class="col s12">
					<img class="responsive-img displayed" src="imagem/faixa1.png">
					<h4 class="center-align">BEM-VINDO AO HOTEL URBANO</h4>
					<br>
					<p align="justify">O Seara Praia Hotel encontra-se em excelente
						localização, na Beira-Mar de Fortaleza, com fácil acesso às praias
						da cidade e do litoral, centro da cidade e principais pontos
						turísticos. A feirinha de artesanato, tão tradicional e visitada,
						fica a menos de 100 metros de distância.</p>
					<p align="justify">Os 217 apartamentos do Seara Praia Hotel
						proporcionam o conforto e sofisticação necessárias para tornar
						inesquecível a estada, e são equipados com frigobar, cofre, TV com
						canais a cabo, camas confortáveis, ar condicionado, acesso à
						internet via wi-fi free para hóspedes e estacionamento pago para
						até 90 veículos. O hotel disponibiliza quatro apartamentos
						adaptados para portadores de necessidades especiais.</p>
					<p align="justify">Garanta a diversão e conforto de sua família
						em sua viagem à Fortaleza, hospede-se no Seara Praia Hotel e
						desfrute da melhor localização da Avenida Beira Mar.</p>
					<img class="responsive-img displayed" src="imagem/faixa2.png">
				</div>
			</div>
		</div>
	</div>

	<!-- IMAGEM PARALAX -->
	<div class="parallax-container">
		<div class="parallax">
			<img src="imagem/3.jpg">
		</div>
	</div>
	<br>
	<br>

	<!-- ACOMODAÇÕES  -->

	<div class="container">
		<div class="section">
			<h4 class="center-align">ACOMODAÇÕES</h4>
			<br> <br>
			<!--   Icon Section   -->
			<div class="row">
				<div class="col s12 m12 l4">
					<div class="card">
						<div class="card-image">
							<div class="carousel carousel-slider" data-indicators="true">

								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>
								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>
								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>

							</div>
						</div>
						<div class="card-content">
							<p>Dois ambientes quem esbanjam luxo e sofisticação para uma
								estada inesquecível com vista para o mar.</p>
						</div>
						<div class="card-action">
							<a href="#">APARTAMENTO STARDARD</a>
						</div>
					</div>
				</div>
				<div class="col s12 m12 l4">
					<div class="card">
						<div class="card-image">
							<div class="carousel carousel-slider" data-indicators="true">

								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>
								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>
								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>

							</div>
						</div>
						<div class="card-content">
							<p>Dois ambientes quem esbanjam luxo e sofisticação para uma
								estada inesquecível com vista para o mar.</p>
						</div>
						<div class="card-action">
							<a href="#">APARTAMENTO LUXO</a>
						</div>
					</div>
				</div>
				<div class="col s12 m12 l4">
					<div class="card">
						<div class="card-image">
							<div class="carousel carousel-slider" data-indicators="true">

								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>
								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>
								<div class="carousel-item" href="#one!">
									<img src="imagem/1.1.jpg">
								</div>

							</div>
						</div>
						<div class="card-content">
							<p>Dois ambientes quem esbanjam luxo e sofisticação para uma
								estada inesquecível com vista para o mar.</p>
						</div>
						<div class="card-action">
							<a href="#">SUIÍTE JUNIOR</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- RODAPÉ  -->
	<div id="footer"></div>

	<!--  Scripts-->

	<script src="js/materialize.js"></script>
	<script src="js/init.js"></script>
	<script src="js/js.js"></script>
	<script src="js/config.js"></script>
</body>
</html>