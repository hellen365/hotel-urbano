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
	<div class="container">
		<div class="divider"></div>
		<div class="section">
		  
		<%
		
		  String quarto = request.getParameter("quarto");
		  String entrada = request.getParameter("entrada");
		  String saida = request.getParameter("saida");
		  //int crianca = Integer.parseInt(request.getParameter("crianca"));
		  //int adulto = Integer.parseInt(request.getParameter("adulto"));
		  
		 // int total = crianca + adulto;
		
		%>

			<label for=""><b>Sua estadia:</b>${entrada}  - ${saida} </label>
			 <label for=""><b>Hospede:</b> ${entrada} </label><label
				for=""><b>Tarifa total:</b> R$: 000,00 BRL </label> <label
				for=""><b>Tipo de quarto:</b>  </label>
		</div>
	</div>

	<!-- INFORMAÇÕES PESSOAIS  -->
	<div class="container">
		<div class="divider"></div>
		<div class="section">
			<h5>INFORMAÇÕES PESSOAIS</h5>
			<p>
				Já está registrado?<a href="#" onclick="Mudarestado('minhaDiv')">
					Login</a>
			</p>
			<!-- LOGIN  -->
			<form id="minhaDiv" action="Hotel_Urbano" method="post">
				<div class="row">
					<div class="input-field col s4">
						<input name="cpf" type="text" class="validate" required>
						<label for="cpf">Cpf</label>
					</div>
					<div class="input-field col s4">
						<input name="password" type="password" class="validate"
							minlength="6" required> <label for="password">Password</label>
					</div>
				</div>
				<div class="row">
					<button type="submit" name="btn_login"
						class="col s2 btn btn-small waves-effect indigo right">Entrar</button>
					<a href="#" class="col s4 right">Esqueceu sua senha? Clique
						aqui</a>
				</div>
				
             </form>
             
             <div id="esconder">
				<!-- REGISTRE-SE  -->
				<div class="divider"></div>
			
			<p>Registre-se</p>
			<form action="Hotel_Urbano" method="post">
				<div class="row">
				<div class="input-field col s3">
						<input name="cpf" type="text" class="validate" required>
						<label for="email">Cpf</label>
					</div>
					<div class="input-field col s5">
						<input name="nome" type="text" class="validate"> <label
							for="nome">Nome</label>
					</div>
					<div class="input-field col s4">
						<input name="email" type="email" class="validate"> <label
							for="email">Email</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s4">
						<input name="confirmeEmail" type="email" class="validate"> <label
							for="confirmeEmail">Confirme email</label>
					</div>
					<div class="input-field col s4">
						<input name="password" type="password" class="validate"
							minlength="6" required> <label for="password">Password</label>
					</div>
					<div class="input-field col s4">
						<input name="telefone" type="text" class="validate"> <label
							for="telefone">Telefone</label>
					</div>
				</div>
				<div class="row">
					<button type="submit" name="btn_registro"
						class="col s2 btn btn-small waves-effect indigo right">Registrar</button>

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