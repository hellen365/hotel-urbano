<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</head>
<body>




	<div class="container">
		<div class="divider"></div>
		<div class="section">
			<h5>INFORMAÇÕES DE PAGAMENTO ${nome}</h5>
			<br>
			<div class="row">
				<div class="col s12">
					<form action="Hotel_Urbano" method="post">
						<div class="row">
							<div class="col s6">
								<label>Browser Select</label> <select name="bandeira"
									class="browser-default">
									<option value="" disabled selected>Selecione a
										bandeira</option>
									<option value="VISA">VISA</option>
									<option value="MASTER CARD">MASTER CARD</option>
									<option value="MAESTRO CRED CARD">MAESTRO CRED CARD</option>
								</select>
							</div>
						</div>

						<br>
						<div class="row">
							<div class="input-field col s4">
								<input name="nomeCartao" type="text" class="validate"> <label
									for="nomeCartao">Nome no cartão</label>
							</div>
							<div class="input-field col s4">
								<input name="numeroCartao" type="text" class="validate"> <label
									for="numeroCartao">Número do cartão</label>
							</div>
						</div>

						<div class="row">
							<div class="col s3">
								<label>Mês de Validade</label> <select name="mesValidade"
									class="browser-default">
									<option value="" disabled selected>Selecione</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</div>
							<div class="col s3">
								<label>Ano de Validade</label> <select name="anoValidade"
									class="browser-default">
									<option value="" disabled selected>Selecione</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
									<option value="2027">2027</option>
									<option value="2028">2028</option>
									<option value="2029">2029</option>
								</select>
							</div>

							<div class="input-field col s3">
								<input name="codSeguranca" type="text" class="validate">
								<label for="codSeguranca">Código de segurança</label>
							</div>

						</div>
						<div class="divider"></div>
						<div class="section">
							<p class="center-align">
								<button class="waves-effect waves-light btn btn-large" href="#!">Rever
									a reserva</button>
								&nbsp &nbsp &nbsp &nbsp
								<button class="waves-effect waves-light btn btn-large"
									name="confirmarReserva" type="submit">Confirmar
									reserva</button>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>

	<!--  Scripts-->

	<script src="js/materialize.js"></script>
	<script src="js/init.js"></script>
	<script src="js/js.js"></script>
	<script src="js/config.js"></script>

</body>
</html>