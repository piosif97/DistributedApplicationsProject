<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">

	<head>
		<title>Cabinet Oftalmologie</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<link href="css/bootstrap.min.css" rel="stylesheet">	
		<link href="css/bootstrap-responsive.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="color/default.css" rel="stylesheet">
		<link href="css/programari.css" rel="stylesheet">		
		<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/login.css" >
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">		
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<script src="js/jquery.tableditprog.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
		
		<style>
			.button {
			padding: 0px 0px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			cursor: pointer;
			width:30px;
			height:31px;
			font-size: 1px;
			background-color: white; 
			color: black; 
			border: 2px solid #ffa366;
			}
			
			.button:hover {
			padding: 0px 0px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			cursor: pointer;
			font-size: 1px;
			background-color: #808080;
			color: white;
			border: 2px solid #ffa366;
			}
		</style>

<%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*" %>
		<%
			String datap = (String) request.getSession().getAttribute("chosenDate");
		%>
<script>

	var datap =  "<%=datap%>";
	localStorage.setItem("datap", datap);
</script>	
	
<script> 
	//selectez ora si anulez selectia anterioara
		//activ doar daca am selectat o data
	

		var user = localStorage.getItem("username");
	    var datap = localStorage.getItem("datap");
		var memId = "0", memColor;
		function selectHour(idd) {
			if( document.getElementById(idd).style.color=="green"){
				if(memId != "0") {
					   document.getElementById(memId).style.color=memColor; //se repune pe culoarea initiala
				}
				
				memId=idd;
				document.getElementById("memoOra").value=memId;
				document.getElementById("datap").value=datap;
				document.getElementById("user").value=user;
				memColor=document.getElementById(idd).style.color;
				document.getElementById(idd).style.color="orange";
			}
			else if( document.getElementById(idd).style.color=="red") {
				alert("Programare imposibilă!! Există deja o programare la ora selectată");
			}
			else 
				alert("Selectare ora imposibila! Selectati intai o data!"); 
	}
</script>
			
</head>

<body>


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
	
	

	<!-- navbar  && the rest-->
	
	<!--include NAVBAR-->
	<!-- connect to DB 
	array ore
	select from programari where data
	INSERT INTO programari (idprog,idpac,data,ora) VALUES (NULL,?,?-->

	<div w3-include-html="navbar.jsp"></div> 
		
	<div >
		<section id="programari" class="section orange">
			<div class="row">
			
				<div class="column">	
					<h5><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Selectați data programării</b></h5>
					<form action="SelectDate" method="post">
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="date" name="dataprog" id="dataprog" style="height:40px;width:400px" ></p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="hidden" name="memoIdpac"  id="memoIdpac"> 
						<input type="hidden" name="memoNumePac"  id="memoNumePac"> 
						<button type="submit" name="veziOra" style= "height:40px;width:300px" class="btn btn-rounded">Vezi disponibilitate data</button>
					</form>
				</div>
							
				<div class="column">
					<h5><b>Selectați ora programării 
					
					
					<!--	if(isset($_POST["dataprog"]) && ($_POST["dataprog"])!=0) -->
							<!--echo", în data: ".$_POST["dataprog"];-->
					</b></h5>
<!-- if(isset($_POST["dataprog"]) && ($_POST["dataprog"])!=0) { if($ore["09:00"] == "1") echo "red"; else echo "green";} -->
					<div class="grid-container" style="cursor:pointer">
					  <div id="09:00" onClick="selectHour('09:00')" style="color:green">09:00</div>
					  <div id="09:30" onClick="selectHour('09:30')" style="color:green">09:30</div>
					  <div id="10:00" onClick="selectHour('10:00')" style="color:green">10:00</div>  
					  <div id="10:30" onClick="selectHour('10:30')" style="color:green">10:30</div>
					  <div id="11:00" onClick="selectHour('11:00')" style="color:green">11:00</div>
					  <div id="11:30" onClick="selectHour('11:30')" style="color:green">11:30</div>
					  <div id="12:00" onClick="selectHour('12:00')" style="color:green">12:00</div>
					  <div id="12:30" onClick="selectHour('12:30')" style="color:green">12:30</div>
					  <div id="13:00" onClick="selectHour('13:00')" style="color:green">13:00</div>
					  <div id="13:30" onClick="selectHour('13:30')" style="color:green">13:30</div>
					  <div id="14:00" onClick="selectHour('14:00')" style="color:green">14:00</div>
					  <div id="14:30" onClick="selectHour('14:30')" style="color:green">14:30</div>
					  <div id="15:00" onClick="selectHour('15:00')" style="color:green">15:00</div>
					  <div id="15:30" onClick="selectHour('15:30')" style="color:green">15:30</div>
					  <div id="16:00" onClick="selectHour('16:00')" style="color:green">16:00</div>
					  <div id="16:30" onClick="selectHour('16:30')" style="color:green">16:30</div>
					</div>

					<br>
					<form method="post" action="SelectHour">
						<input type="hidden" name="memoOra"  id="memoOra"> 
						<input type="hidden" name="user" id ="user">
						<input type="hidden" name="datap" id ="datap">
						<button type="submit" name="salveaza" style= "height:40px;width:300px" class="btn btn-rounded">Realizează programarea</button>
					</form>
				</div>
			</div>
			
		</section>
	
		<br>	
		<!--	if (isset($_POST['salveaza']) && ($_SESSION['afiseaza']==1)) {
				echo 'alert("Programare realizata cu succes !")';-->
		<script>
			includeHTML();
		</script>		
				
</body>

</html>