<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar-wrapper">
<div class="navbar navbar-inverse navbar-fixed-top">
<div class="navbar-inner">
<div class="container">
<!-- Responsive navbar -->
<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>';
				<h1 class="brand"><a href="index.php"><br><br>CABINET OFTALMOLOGIE</a></h1>
					<nav class="pull-right nav-collapse collapse">
						<ul id="menu-main" class="nav">
							<li><a title="team" href="index.php#about">Despre</a></li>
							<li><a title="services" href="index.php#services">Servicii</a></li>
							<li><a title="blog" href="index.php#blog">Tehnologie</a></li>
							<li><a title="contact" href="index.php#contact">Contact</a></li>		 
	
	<li><a id="meniuprogramari" title="programari" href="programari.jsp">Programari</a></li>
	
		<%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*" %>
		<%
			String user = (String) request.getSession().getAttribute("username");
		%>
		<li> <p> Salut, <%=user%></p></li>	
	
	<li><button type= "button"  onclick="location.href='logout.jsp';" class="btn btn-danger btn-rounded pull-left">DECONECTARE</button></li>	
		
							<span>&nbsp;</span>
						</ul>		
					</nav>
				</div>	
		</div>	
		</div>	
</div>