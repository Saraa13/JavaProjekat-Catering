<%-- 
    Document   : registracija
    Created on : May 27, 2024, 3:12:19 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ketering Služba</title>
    <link rel="icon" href="./img/svg/minilogo.svg" type="image/icon type">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="./css/customStyles.css"/>
    <script src="js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('img/loginslika.jpg');
            font-family: Arial, sans-serif; /* Promeni font */
        }
        .reg-center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Centriranje vertikalno */
        }
        .reg-form {
            background-color: #fff; /* Boja pozadine forme */
            padding: 20px;
            border-radius: 10px; /* Zaobljeni ivici */
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5); /* Senka oko forme */
            text-align: center; /* Centriranje teksta */
            width: 400px; /* Širina forme */
        }
        .reg-form strong {
            font-size: 24px; /* Velicina naslova */
            color: #333; /* Boja teksta */
            margin-bottom: 20px; /* Razmak ispod naslova */
            display: block; /* Da bi se teksto centrirao */
        }
        .reg-form input[type="text"],
        .reg-form input[type="password"] {
            width: calc(100% - 20px); /* Puna širina polja */
            padding: 10px; /* Udaljenost od ivica */
            margin-bottom: 10px; /* Razmak između polja */
            border: 1px solid #ccc; /* Ivica polja */
            border-radius: 5px; /* Zaobljeni ivici */
            box-sizing: border-box; /* Uključi padding i border u širinu */
        }
        .reg-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px; /* Razmak između dugmadi i ostalih elemenata */
        }
        
        .btn-primary,
        .btn-secondary {
            width: 48%; /* Širina dugmeta */
            background-color: #000; /* Boja pozadine dugmeta */
            color: #fff; /* Boja teksta */
            border: none; /* Ukloni ivicu */
            border-radius: 5px; /* Zaobljeni ivici */
            cursor: pointer; /* Promeni kursor na pokazivač */
        }
    </style>
</head>
<body>
   
        <%@include file="includes/navbar.jsp"%>
        <div class="reg-center">
                    <form class="reg-form" action="Autentikacija" method="post">  
                        <strong class="bold">REGISTRACIJA</strong><br>
                        <label for="korisnickoIme">Korisnicko ime</label> 

                        <input type="text" name="korisnickoIme" id="korisnickoIme" required/></br>

                        <label for="ime">Ime</label> 

                        <input type="text" name="ime" id="ime" required/></br>

                        <label for="prezime">Prezime</label> 

                        <input type="text" name="prezime" id="prezime" required/></br>

                        <label for="password">Password</label> 

                        <input type="password" name="password" id="password" required/></br>

                        <label for="adresa">Adresa</label> 

                        <input type="text" name="adresa" id="adresa" required/></br>
                        <div class="reg-buttons">
                                <input class="btn btn-primary " type="submit" value="Registruj"> 
                                <input class="btn btn-secondary" type="reset" value="Resetuj">
                        </div>      
                        <p class="greska">${msg}</p>
                    </form>                                 
        </div>
        <%@include file="includes/footer.jsp"%>
    
</body>
</html>
