<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Inregistrare</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="post" action="../Register" id="signup-form" class="contactForm">
                        <h2 class="form-title">Creează cont nou</h2>
                        <div class="form-group">
                            <input type="text" class="form-input" name="nume" id="nume" placeholder="Nume"/>
                        </div>
						
						<div class="form-group">
                            <input type="text" class="form-input" name="prenume" id="prenume" placeholder="Prenume"/>
                        </div>
						
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="Mail"/>
                        </div>
						
						 <div class="form-group">
                            <input type="text" class="form-input" name="tel" id="tel" placeholder="Telefon"/>
                        </div>
						
						<div class="form-group">
                            <input type="text" class="form-input" name="cnp" id="cnp" placeholder="CNP"/>
                        </div>
						
						
						<div class="form-group">
                            <input type="text" class="form-input" name="datan" id="datan" placeholder="Data nașterii"/>
                        </div>
						
						
						<div class="form-group">
                            <input type="text" class="form-input" name="username" id="username" placeholder="Nume de utilizator"/>
                        </div>
						
						
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="Parola"/>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password" ></span>
							<span class="help-block"><?php echo $password_err; ?></span>                       
						</div>
						
						
                        <div class="form-group">
                            <input type="password" class="form-input" name="confirm_password" id="re_password" placeholder="Reintroducere parola"/>
							<span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password" ></span>
							<span class="help-block"><?php echo $confirm_password_err; ?></span>
						</div>
						
                        <div class="form-group">
                            <input type="submit" name="Înregistrare" id="submit" class="form-submit" value="Înregistrare"/>
							  <br><br> Deja aveți un cont? <a href="../index.html" class="loginhere-link">Conectează-te aici</a>
                        </div>
                    </form>
                   
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>