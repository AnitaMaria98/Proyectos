<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="fifa20.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<title>Proyecto Web FIFA20</title>
</head>
<body class="is-preload">
<%
BDController controladorBD = new BDController();
ArrayList<Jugador>jugadores=controladorBD.dameJugadores();
int cod_jugador=0;
String nombre="SIMPLE";
String colorRat="";
String colorPac="";
String colorSho="";
String colorPas="";
String colorDri="";
String colorDef="";
String colorPhi="";




%>
		<div id="page-wrapper">
			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="index.jsp" id="logo">FIFA20</a></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="index.jsp">Inicio</a></li>
								<li>
									<a href="#">Listados</a>
									<ul>
										<li><a href="ligas.jsp">Opción 1</a></li>
										
									</ul>
								</li>
								<li>
									<a href="#">Operaciones</a>
									<ul>
										<li>
											<a href="#">Opción 1</a>
											<ul>
												<li><a href="altajugador.jsp">Opción 1</a></li>
												
											</ul>
										</li>
										<li>
											<a href="#">Opción 2</a>
											<ul>
												<li><a href="#">Opción 1</a></li>
												
											</ul>
										</li>
										<li>
											<a href="#">Opción 3</a>
											<ul>
												<li><a href="#">Opción 1</a></li>
												
											</ul>
										</li>
										<li>
											<a href="#">Opción 4</a>
											<ul>
												<li><a href="#">Opción 1</a></li>
												
											</ul>
										</li>
									</ul>
								</li>
								<li ><a href="#">Simulador</a>
									<ul>
										<li><a href="creador.jsp">Opción 1</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div id="content">

							<!-- Content -->
						
								<article>
									<header>
										<table >
											<tr style="border:0px;" >	
												<td style="background-color: white;"><h2>Jugadores</h2></td><td style="text-align: right;background-color: white;""></td>
											</tr>
										</table>
									</header>
									
									<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>Nombre</th>
											<th width='325' colspan="3"></th>
											<th style="text-align: center;">RAT</th>
											<th style="text-align: center;">POS</th>
											<th style="text-align: center;">CARTA</th>
											<th style="text-align: center;">PRECIO</th>
											<th style="text-align: center;">SKI</th>
											<th style="text-align: center;">WF</th>
											<th style="text-align: center;">PAC</th>
											<th style="text-align: center;">SHO</th>
											<th style="text-align: center;">PAS</th>
											<th style="text-align: center;">DRI</th>
											<th style="text-align: center;">DEF</th>
											<th style="text-align: center;">PHI</th>
											<th style="text-align: center;">ALTURA</th>
										</tr>
									</thead>
									<tbody>
									   
										<%for (int i=0;i<jugadores.size();i++){ %>
										<%cod_jugador=controladorBD.dameJugadores().get(i).getCod_jugador(); %>
										<tr>
											<td width='60' rowspan="2"><img src="images/jugadores/<%=jugadores.get(i).getCod_jugador() %>.png" width=60 /></td>
											<td width='325' colspan="3" style="padding-left: 15px;"><%=jugadores.get(i).getNombre()%></td>
											
											<%for (int j=0;j<controladorBD.CartaSimple(cod_jugador, nombre).size();j++){%>
											
											<% //PAC
											if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()>=0 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()<=49){
												colorPac="cuadradito_rojo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()>=50 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()<=69){
												colorPac="cuadradito_naranja";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()>=70 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()<=79){
												colorPac="cuadradito_amarillo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()>=80 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()<=89){
												colorPac="cuadradito_verde";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()>=90 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()<=99){
												colorPac="cuadradito_verdeoscuro";
											}
											//SHO
											if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()>=0 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()<=49){
												colorSho="cuadradito_rojo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()>=50 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()<=69){
												colorSho="cuadradito_naranja";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()>=70 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()<=79){
												colorSho="cuadradito_amarillo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()>=80 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()<=89){
												colorSho="cuadradito_verde";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()>=90 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho()<=99){
												colorSho="cuadradito_verdeoscuro";
											}
											
											//PAS
											if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()>=0 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()<=49){
												colorPas="cuadradito_rojo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()>=50 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()<=69){
												colorPas="cuadradito_naranja";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()>=70 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()<=79){
												colorPas="cuadradito_amarillo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()>=80 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()<=89){
												colorPas="cuadradito_verde";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()>=90 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas()<=99){
												colorPas="cuadradito_verdeoscuro";
											}
											//DRI
											if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()>=0 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()<=49){
												colorDri="cuadradito_rojo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()>=50 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()<=69){
												colorDri="cuadradito_naranja";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()>=70 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()<=79){
												colorDri="cuadradito_amarillo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()>=80 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()<=89){
												colorDri="cuadradito_verde";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()>=90 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri()<=99){
												colorDri="cuadradito_verdeoscuro";
											}
											//DEF
											if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()>=0 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()<=49){
												colorDef="cuadradito_rojo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()>=50 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()<=69){
												colorDef="cuadradito_naranja";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()>=70 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()<=79){
												colorDef="cuadradito_amarillo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()>=80 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()<=89){
												colorDef="cuadradito_verde";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()>=90 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()<=99){
												colorDef="cuadradito_verdeoscuro";
											}
											//PHI
											if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()>=0 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()<=49){
												colorPhi="cuadradito_rojo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()>=50 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()<=69){
												colorPhi="cuadradito_naranja";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()>=70 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()<=79){
												colorPhi="cuadradito_amarillo";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()>=80 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()<=89){
												colorPhi="cuadradito_verde";
											}else if(controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()>=90 && controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy()<=99){
												colorPhi="cuadradito_verdeoscuro";
											}
											
											%>
											
												<td rowspan="2" width='60' style="text-align: center;" ><div class="Simple" width=50><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getRat() %></div></td>	
												<td rowspan="2" width='60' style="text-align: center;"><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPos() %></td>	
												<td rowspan="2" width='100' style="text-align: center;"><%=nombre%></td>	
												<td rowspan="2" width='100' style="text-align: center;"><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPrecio() %></td>	
												<td rowspan="2" width='60' style="text-align: center;"><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPierna_mala() %></td>	
												<td rowspan="2" width='60' style="text-align: center;"><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getFiligranas() %></td>
												
												<td rowspan="2" width='60' style="text-align: center;" ><div class="<%=colorPac %>" width=50><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPac()%></div></td>	
												
												<td rowspan="2" width='60' style="text-align: center;" ><div class="<%=colorSho%>"  width=50><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getSho() %></div></td>	
												
												<td rowspan="2" width='60' style="text-align: center;" ><div class="<%=colorPas%>" width=50><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPas() %></div></td>	
													
												<td rowspan="2" width='60' style="text-align: center;" ><div class="<%=colorDri%>" width=50><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDri() %></div></td>	
													
												<td rowspan="2" width='60' style="text-align: center;" ><div class="<%=colorDef %>" width=50><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getDef()%></div></td>	
												
												<td rowspan="2" width='60' style="text-align: center;" ><div class="<%=colorPhi%>" width=50><%=controladorBD.CartaSimple(cod_jugador, nombre).get(j).getPhy() %></div></td>
												<td rowspan="2" width='60' style="text-align: center;"><%=controladorBD.dameJugadores().get(i).getAltura() %></td>
												<%} %>
																						
										</tr>
										<tr>
										  <td width='45' style="text-align: right;"><a href="equipos.jsp?=cod_equipo<%=jugadores.get(i).getCod_equipo()%>"><img src="images/equipos/<%=jugadores.get(i).getCod_equipo() %>.png" width=30 /></a></td>
										  <td width='50' style="text-align: center;"><img src="images/paises/<%=jugadores.get(i).getPais() %>.png" width=30 /></td>
										  <td width='230'><a href="ligas.jsp?=cod_liga<%=controladorBD.dameCodLiga(jugadores.get(i).getCod_equipo())%>"><img src="images/ligas/<%=controladorBD.dameCodLiga(jugadores.get(i).getCod_equipo()) %>.png" width='30'/></a></td>
										</tr>
									<%} %>
										
									</tbody>
									
								</table>
							</div>

									
								</article>

						</div>
					</div>
				</section>
			

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>Listados</h3>
								<ul class="links">
									<li><a href="jugadores.asp">Listado de Ligas</a></li>
									
								
								</ul>
							</section>
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>Más Opciones</h3>
								<ul class="links">
									<li><a href="operaciones.jsp?tipo=altaJugador">Opción 1</a></li>
									
								</ul>
							</section>
							<section class="col-6 col-12-narrower">
								<h3>Solicita Información</h3>
								<form>
									<div class="row gtr-50">
										<div class="col-6 col-12-mobilep">
											<input type="text" name="name" id="name" placeholder="Name" />
										</div>
										<div class="col-6 col-12-mobilep">
											<input type="email" name="email" id="email" placeholder="Email" />
										</div>
										<div class="col-12">
											<textarea name="message" id="message" placeholder="Message" rows="5"></textarea>
										</div>
										<div class="col-12">
											<ul class="actions">
												<li><input type="submit" class="button alt" value="Enviar Email" /></li>
											</ul>
										</div>
									</div>
								</form>
							</section>
						</div>
					</div>

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; FIFA 20. Todos los derechos reservados</li><li>Design: <a href="https://www.centronelson.org">Centro Nelson</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>