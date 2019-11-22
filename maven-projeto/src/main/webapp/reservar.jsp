<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="br.com.silva.test.Hotel_Urbano" %>
 
 
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
	
	
    <!-- FORMULARIO  -->
	<div class="container">
		<div class="card-panel">
			<div class="row">
				<form action="acomodacoes.jsp" method="post" class="col s12">
					<div class="input-field col s12">
						<select name="quarto">
							<optgroup label="Sul">
								<option value="Florianópolis">Florianópolis</option>
							</optgroup>
							<optgroup label="Nordeste">
								<option value="Fortaleza">Fortaleza</option>
							</optgroup>
						</select> <label>Selecione o Hotel</label>
					</div>

					<div class="input-field col s4">
						<input id="first_name" name="entrada" type="text" class="validate datepicker">
						<label for="first_name">Entrada</label>
					</div>
					<div class="input-field col s4">
						<input id="last_name" name="saida" type="text" class="validate datepicker">
						<label for="last_name">Saida</label>
					</div>
					<div class="col s2">
						<label>Adulto</label> <select name="adulto" class="browser-default">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>
					</div>
					<div class="col s2">
						<label>Criança</label> <select name="crianca" class="browser-default">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</div>
					<div class="row">
						<div class="col s12">
							<p class="center-align">
								<input type="submit" name="btnAdd" value="adicionar" class="waves-effect waves-light btn">
							</p>
						</div>
					</div>
				</form>
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