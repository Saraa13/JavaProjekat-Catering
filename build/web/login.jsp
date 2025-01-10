<%-- 
    Document   : login
    Created on : May 27, 2024, 3:11:18 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ketering Služba - Login</title>
    <link rel="icon" href="./img/svg/minilogo.svg" type="image/icon type">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="./css/customStyles.css"/>

    <style>
        body {
           background-image: url('img/loginslika.jpg');
            font-family: Arial, sans-serif; /* Promeni font */
        }
        .login-cent {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Centriranje vertikalno */
        }
        .login-form {
            background-color: #fff; /* Boja pozadine forme */
            padding: 20px;
            border-radius: 10px; /* Zaobljeni ivici */
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5); /* Senka oko forme */
            text-align: center; /* Centriranje teksta */
        }
        .login-form strong {
            font-size: 24px; /* Velicina naslova */
            color: #333; /* Boja teksta */
            margin-bottom: 20px; /* Razmak ispod naslova */
            display: block; /* Da bi se teksto centrirao */
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%; /* Puna širina polja */
            padding: 10px; /* Udaljenost od ivica */
            margin-bottom: 10px; /* Razmak između polja */
            border: 1px solid #ccc; /* Ivica polja */
            border-radius: 5px; /* Zaobljeni ivici */
            box-sizing: border-box; /* Uključi padding i border u širinu */
        }
        .btn-login {
    width: 100%; /* Puna širina dugmeta */
    padding: 10px; /* Udaljenost od ivica */
    background-color: #000; /* Crna boja pozadine dugmeta */
    color: #fff; /* Boja teksta */
    border: none; /* Ukloni ivicu */
    border-radius: 5px; /* Zaobljeni ivici */
    cursor: pointer; /* Promeni kursor na pokazivač */
    transition: background-color 0.3s; /* Animacija promene boje */
}

        .btn-login:hover {
    background-color: #000; /* Promenjena boja pozadine dugmeta na hover u crnu */
    color: #fff; /* Promenjena boja teksta na belu */
}
        .msg {
            color: red; /* Boja poruke */
            margin-top: 10px; /* Razmak iznad poruke */
        }
    </style>
</head>
<body>
    <%@include file="includes/navbar.jsp"%>
    <section>
        <div class="container login-cent">
            <form class="login-form" action="Autentikacija" method="post">
                <strong>LOGIN</strong>
                <input type="text" placeholder="Korisničko ime" name="loginKorisnicko" required><br>
                <input type="password" placeholder="Lozinka" name="password" required><br>
                <input class="btn btn-login" type="submit" value="Uloguj se!">
                <p class="msg">${msg}</p>
            </form>
        </div>
    </section>
    <%@include file="includes/footer.jsp"%>
</body>
</html>
