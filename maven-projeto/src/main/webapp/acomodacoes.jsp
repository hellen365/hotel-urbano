<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

		$("#header").load("header2.html");
		$("#footer").load("footer.html");

	});
</script>

</head>

<body>

	<!-- MENU  -->
	<div id="header"></div>

	<br>
	<br>
	<!-- STATUS  -->
	<div class="divider"></div>
	<div class="container">
		<div class="divider"></div>
		<div class="section">

			<%
				String crianca = request.getParameter("crianca");
			    String adulto = request.getParameter("adulto");
				String entrada = request.getParameter("entrada");
				String saida = request.getParameter("saida");
				
			%>

			<label for=""><b>Sua estadia:</b>${entrada} - ${saida} </label> <label
				for=""><b>Hospede:</b> ${adulto} ${crianca} </label>
		</div>
	</div>

	<!-- SLIDER 1  -->
	<div class="container">
		<div class="divider"></div>
		<div class="section">
			<form action="check-out.jsp" method="post">
				<div class="col s12 m7">

					<div class="card horizontal">
						<div class="card-image">
							<img class="materialboxed" height="250" src="quartos/quarto1.jpg">
						</div>
						<div class="card-stacked">
							<div class="card-content">
								<h5>APARTAMENTO STARDARD</h5>
								<p>I am a very simple card. I am good at containing small
									bits of information.</p>
							</div>
							<div class="card-action">
								<p>
									<label> <input type="checkbox" class="filled-in" /> <span>Adicionar
											para a Compra</span>
									</label>
								</p>

							</div>
						</div>
					</div>
				</div>

				<!-- SLIDER 2  -->
				<div class="col s12 m7">
					<div class="card horizontal">
						<div class="card-image">
							<img class="materialboxed" height="250" src="quartos/quarto2.jpg">
						</div>
						<div class="card-stacked">
							<div class="card-content">
								<h5>APARTAMENTO LUXO</h5>
								<p>I am a very simple card. I am good at containing small
									bits of information.</p>
							</div>
							<div class="card-action">
								<p>
									<label> <input type="checkbox" class="filled-in" /> <span>Adicionar
											para a Compra</span>
									</label>
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- SLIDER 3  -->
				<div class="col s12 m7">
					<div class="card horizontal">
						<div class="card-image">
							<img class="materialboxed" height="250" src="quartos/quarto3.jpg">
						</div>
						<div class="card-stacked">
							<div class="card-content">
								<h5>SUÍTE JUNIOR</h5>
								<p>I am a very simple card. I am good at containing small
									bits of information.</p>
							</div>
							<div class="card-action">
								<p>
									<label> <input type="checkbox" class="filled-in" /> <span>Adicionar
											para a Compra</span>
									</label>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col s12">
						<p class="center-align">
							<input type="submit" value="Reservar"
								class="waves-effect waves-light btn">
						</p>
					</div>
				</div>
			</form>
		</div>
	</div>



	<!-- RODAPÉ  -->
	<div id="footer"></div>

	<!--  Scripts-->

	<script src="js/materialize.js"></script>
	<script src="js/init.js"></script>
	<script src="js/js.js"></script>
	<script src="js/config.js"></script>
	]

</body>
</html>