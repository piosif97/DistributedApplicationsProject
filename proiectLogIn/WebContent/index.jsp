<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Cabinet Oftalmologie</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">	
	<link rel="stylesheet" type="text/css" href="css/login.css" >
	<link href="color/default.css" rel="stylesheet">
	<link rel="shortcut icon" href="img/favicon.ico">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
</head>

<script>
function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /*loop through a collection of all HTML elements:*/
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("w3-include-html");
    if (file) {
      /*make an HTTP request using the attribute value as the file name:*/
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
          if (this.status == 200) {elmnt.innerHTML = this.responseText;}
          if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
          /*remove the attribute, and call this function once more:*/
          elmnt.removeAttribute("w3-include-html");
          includeHTML();
        }
      }      
      xhttp.open("GET", file, true);
      xhttp.send();
      /*exit the function:*/
      return;
    }
  }
};
</script>

<%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*" %>
		<%
			String user = (String) request.getSession().getAttribute("username");
		%>
<script>

	var username =  "<%=user%>";
	localStorage.setItem("username", username);
</script>

<body>
	
	<div w3-include-html="navbar.jsp"></div> 
	
	<!--pop up sign up-->
	
	<!-- Header area -->
	<div id="header-wrapper" class="header-slider">
		<header class="clearfix">
			<div class="logo">
				<img src="img/logo-image.png"  alt="" />
			</div>
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="main-flexslider" class="flexslider">
							<ul class="slides">
								<li>
									<p class="home-slide-content">
										 Ai grija de <strong>ochii tai</strong>
									</p>
								</li>
								<li>
									<p class="home-slide-content">
										Vino la un <strong>control</strong>
									</p>
								</li>
								<li>
									<p class="home-slide-content">
										Nu ezita, <strong>programeazÄ-te</strong>
									</p>
								</li>
							</ul>
						</div>
						<!-- end slider -->
					</div>
				</div>
			</div>
		</header>
	</div>
	<!-- spacer section -->
	<section class="spacer green">
		<div class="container">
			<div class="row">
				<div class="span6 alignright flyLeft">
					<blockquote class="large">
						CÃ¢t timp a trecut de cÃ¢nd Èi-ai fÄcut un control oftalmologic complet? Èase luni sau poate un an Ã®ntreg? Poate mai mult de atÃ¢t? Poate niciodatÄ? ViziteazÄ chiar azi cabinetul nostru Èi descoperÄ cum sÄ ai grijÄ de ochii tÄi! <cite>Dr. Corina LÄdariu</cite>
					</blockquote>
				</div>
				<div class="span6 aligncenter flyRight">
					<i class="icon-check icon-10x"></i>
				</div>
			</div>
		</div>
	</section>
	<!-- end spacer section -->
	<!-- section: team -->
	<section id="about" class="section">
		<div class="container">
			<h4>Despre noi</h4>
			<div class="row">
				<div class="span4 offset1">
					<div>
						<p>
							
Magazinul nostru de optica medicala este primul atelier de ochelari, lupe si binocluri din Timisoara. Istoria magazinului nostru de ochelari a continuat, pana in prezent cand putem spune ca suntem unici in Romania cu aparatura de ultima generatie pentru consultatii medicale oftalmologice, servicii complete pentru ochelari de vedere, cu sau fara dioptrii, ochelari pentru medici chirurgi cu lupe speciale.
						</p>
					</div>
				</div>
				<div class="span6">
					<div class="aligncenter">
					   <br>
						<img src="img/icons/creativity.png" alt="" />
						<br>
						<h2>Peste <strong>1200 </strong>de clienÈi <strong>mulÈumiti</strong></h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span2 offset1 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-1.jpg" alt="" />
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-4.jpg" alt="" />
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-1.jpg" alt="" />
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-4.jpg" alt="" />
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-1.jpg" alt="" />
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- end section: team -->
	<!-- section: services -->
	<section id="services" class="section orange">
		<div class="container">
			<h4>Servicii</h4>
			<!-- Four columns -->
			<div class="row">
				<div class="span3 animated-fast flyIn">
					<div class="service-box">
						<img src="img/icons/serv1.png" alt="" />
						<h2>Diagnosticare afecÈiuni oftalmologice</h2>
						<p>
							
						</p>
					</div>
				</div>
				<div class="span3 animated flyIn">
					<div class="service-box">
						<img src="img/icons/serv2.png" alt="" />
						<h2>Rafractometrie computerizatÄ / Biomicroscopie</h2>
						<p>
							
						</p>
					</div>
				</div>
				<div class="span3 animated-fast flyIn">
					<div class="service-box">
						<img src="img/icons/serv3.png" alt="" />
						<h2>Oftalmodinamometrie/ Oftalmoscopie</h2>
						<p>
							
						</p>
					</div>
				</div>
				<div class="span3 animated-slow flyIn">
					<div class="service-box">
						<img src="img/icons/serv4.png" alt="" />
						<h2>PrescripÈie ochelari sau lentile de contact</h2>
						<p>
							
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end section: services -->
	
	<!-- spacer section -->
	<section class="spacer bg3">
		<div class="container">
			<div class="row">
				<div class="span12 aligncenter flyLeft">
					<blockquote class="large">
						Unele boli de ochi, cum ar fi glaucomul Èi retinopatia diabeticÄ nu prezintÄ simptome Ã®n stadiile lor incipiente, astfel Ã®ncÃ¢t este posibil sÄ nu Ètim cÄ avem o problemÄ, pÃ¢nÄ cÃ¢nd boala ajunge Ã®ntr-un stadiu mai avansat, iar acest lucru poate face tratamentul mai dificil Èi problema mai greu de gestionat. De aceea, consultaÈiile oftalmologice regulate sunt esenÈiale pentru a diagnostica din timp Èi pentru a beneficia de tratament pentru orice problemÄ ocularÄ care ar putea apÄrea. Depistarea precoce Åi tratamentul iniÈiat Ã®n fazÄ incipientÄ pot Ã®ncetini sau chiar inversa progresia anumitor boli ale ochilor.
					</blockquote>
				</div>
				<div class="span12 aligncenter flyRight">
					<i class="icon-arrow-up icon-10x"></i>
				</div>
			</div>
		</div>
	</section>
	<!-- end spacer section -->
	<!-- section: blog -->
	<section id="blog" class="section">
		<div class="container">
			<h4>Tehnologia de care dispunem</h4>
			<!-- Three columns -->
			<div class="row">
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
							<img class="max-img" src="img/blog/tivato700.jpg" alt="" />
						</div>
						<div class="post-meta">
							<i class="icon-ok-sign icon-2x"></i>
							<span class="date">Zeiss Tivato 700</span>
	
						</div>
						<div class="entry-content">
							<p>
								For demanding surgical applications in ENT, Spine and P&R look no further than ZEISS TIVATO 700*, the latest Advanced Visualization System from ZEISS. Understanding your daily workload, this fully integrated visualization system enhances usability and is built on technology ahead of its time. Join us in taking the next steps towards the future of microsurgery.
							</p>
						</div>
					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
							<img class="max-img" src="img/blog/visulasgreen.jpg" alt="" />
						</div>
						<div class="post-meta">
							<i class="icon-ok-sign icon-2x"></i>
							<span class="date">Zeiss Visual Green</span>
						</div>
						<div class="entry-content">
							<p>
								Loaded with over 100 innovations, the all-new Robotic Visualization Systemâ¢ â KINEVOÂ® 900 from ZEISS is designed to deliver more functionalities than any surgical microscope today. It combines optical and digital visualization modalities, offers QEVO â the unique Micro-Inspection Tool and will impress you with its Surgeon-Controlled Robotics.
							</p>
						</div>
					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
							<img class="max-img" src="img/blog/clarus500.jpg" alt="" />
						</div>
						<div class="post-meta">
							<i class="icon-ok-sign icon-2x"></i>
							<span class="date">Zeiss Clarus 500</span>

						</div>
						<div class="entry-content">
							<p>
								The advent of widefield retinal imaging has shown us that indications of disease are often located in the far periphery of the retina. CLARUSTM 500 is the next generation fundus imaging system from ZEISS that provides true color and high-resolution across an entire ultra-widefield image.
							</p>
						</div>
					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
							<img class="max-img" src="img/blog/extaro300.jpg" alt="" />
						</div>
						<div class="post-meta">
							<i class="icon-ok-sign icon-2x"></i>
							<span class="date">Zeiss Extaro 300</span>
	
						</div>
						<div class="entry-content">
							<p>
								Low-color contrast often makes it difficult to recognize critical anatomical structures. The MultiSpectral Mode of ZEISS EXTARO 300 enhances this contrast, for example to better distinguish between vasculature and tissue. Discover the Multispectral Mode and see the difference.
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="blankdivider30"></div>
		</div>
	</section>

	<!-- end spacer section -->
	<!-- section: contact -->

	<section id="contact" class="section green">
		<div class="container">
			<h4>Contact</h4>
			<p>
				DacÄ ai vreo Ã®ntrebare noi Ã®Èi vom rÄspunde Ã®n cel mai scurt timp. DacÄ doriÈi sÄ vÄ faceÈi o programare accesaÈi secÈiunea PROGRAMÄRI, dupÄ ce vÄ autentificaÈi.
			</p>
			<div class="blankdivider30">
			</div>
			<div class="row">
				<div class="span12">
					<div class="cform" id="contact-form">
						<div id="sendmessage">Mesajul dvs a fost trimis. MulÈumim!</div>
						<div id="errormessage"></div>
						<form>
							<div class="row">
								<div class="span6">
									<div class="field your-name form-group">
										<input type="text" name="nume" class="form-control" id="name" placeholder="Nume" data-rule="minlen:4" data-msg="Introduceti cel putin 4 caractere." />
										<div class="validation"></div>
									</div>
									<div class="field your-email form-group">
										<input type="text" class="form-control" name="email" id="email" placeholder="Email" data-rule="email" data-msg="Introduceti un email valid." />
										<div class="validation"></div>
									</div>
									<div class="field subject form-group">
										<input type="text" class="form-control" name="titlu" id="subject" placeholder="Subiect" data-rule="minlen:4" data-msg="Introduceti cel putin 8 caractere." />
										<div class="validation"></div>
									</div>
								</div>
								<div class="span6">
									<div class="field message form-group">
										<textarea class="form-control" name="comentariu" rows="5" data-rule="required" data-msg="LÄsaÈi mesajul aici" placeholder="Mesaj"></textarea>
										<div class="validation"></div>
									</div>
									<button type="submit" name="submitcontact" class="btn btn-info btn-rounded">Trimite mesaj</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- ./span12 -->
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="span6 offset3">
					<ul class="social-networks">
						<li><a href="#"><i class="icon-circled icon-bgdark icon-instagram icon-2x"></i></a></li>
						<li><a href="#"><i class="icon-circled icon-bgdark icon-twitter icon-2x"></i></a></li>
						<li><a href="#"><i class="icon-circled icon-bgdark icon-dribbble icon-2x"></i></a></li>
						<li><a href="#"><i class="icon-circled icon-bgdark icon-pinterest icon-2x"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		
		

		
		
		<!-- ./container -->
	</footer>
	
	
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
	
	
	
	<script src="js/jquery.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.nav.js"></script>
	<script src="js/jquery.localScroll.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/isotope.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/inview.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/contactform.js"></script>	
	
	<script>
		var modal = document.getElementById('id_form_login');
		// Cand se da click oriunde in afara zonei modale, aceasta se va inchide
		window.onclick = function(event) {
			if (event.target == modal) {
				 modal.className = "loginmodal loginmodal-hidden";
			}
		}
		function stergeSpanUsernameErr() {
			document.getElementById('id_span_user_err').innerText="";
		}	
		function stergeSpanPasswordErr() {
			document.getElementById('id_span_pass_err').innerText="";
		}		
		function ascundeDivFormLogin() {
			document.getElementById('id_form_login').className="loginmodal loginmodal-hidden";  // schimba clasa (numele clasei) containerului
		}
		function afiseazaDivFormLogin() {
			document.getElementById('id_form_login').className="loginmodal loginmodal-visible";  // schimba clasa (numele clasei) containerului
		}		
	</script>	
	
	
<script>
includeHTML();
</script>
	

	
</body>

</html>