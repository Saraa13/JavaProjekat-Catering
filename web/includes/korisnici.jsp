<%-- 
    Document   : korisnici
    Created on : May 27, 2024, 3:06:36 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Korisnici</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <style>
        
        .header-korisnika, .korisnik-stavka {
            display: flex;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .header-korisnika p {
            font-weight: bold;
        }
        .korisnik-stavka p, .korisnik-stavka select {
            flex: 1;
            margin: 0 5px;
        }
        .korisnik-stavka p {
            border: 1px solid #ddd;
            padding: 5px;
        }
        .korisnik-stavka div {
            display: flex;
            justify-content: space-between;
        }
        .btn {
            margin-left: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="edit-korisnika">
            <div class="header-korisnika">
                <p>Username</p>
                <p>Ime</p>
                <p>Prezime</p>
                <p>Adresa</p>
                <p>Poeni</p>
                <p>Rola</p>
                <p>Password</p>
                <p>Akcije</p>
            </div>
            <form action="Korisnici" method="post" class="korisnik-stavka">
                <input type="text" name="korisnicko" placeholder="Korisničko ime" class="form-control">
                <input type="text" name="ime" placeholder="Ime" class="form-control">
                <input type="text" name="prezime" placeholder="Prezime" class="form-control">
                <input type="text" name="adresa" placeholder="Adresa" class="form-control">
                <input type="number" min="0" name="poeni" placeholder="0" class="form-control">
                <select class="form-control nov-rola">
                    <option id="3">Klijent</option>
                    <option id="2">Menadžer</option>
                    <option id="1">Administrator</option>               
                </select>
                <input type="hidden" class="nov-rolaID" name="rola" value="3">
                <input type="password" name="password" placeholder="Password" class="form-control">
                <input type="submit" class="btn btn-dark btn-dodaj" name="zahtev" value="Dodaj">
            </form>
            <c:forEach var="korisnik" items="${requestScope.korisnici}">
                <div class="korisnik-stavka">
                    <p id="korisnicko${korisnik.getKorisnickoIme()}" contentEditable="true">${korisnik.getKorisnickoIme()}</p>
                    <p id="ime${korisnik.getKorisnickoIme()}" contentEditable="true">${korisnik.getIme()}</p>
                    <p id="prezime${korisnik.getKorisnickoIme()}" contentEditable="true">${korisnik.getPrezime()}</p>
                    <p id="adresa${korisnik.getKorisnickoIme()}" contentEditable="true">${korisnik.getAdresa()}</p>
                    <p id="poeni${korisnik.getKorisnickoIme()}" contentEditable="true">${korisnik.getPoeni()}</p>
                    <select name="rola" id="rola${korisnik.getKorisnickoIme()}" class="form-control">
                        <option id="${korisnik.getRola().getRolaID()}">${korisnik.getRola().getNazivRole()}</option>
                        <option disabled>--------</option>
                        <option id="1">Administrator</option>
                        <option id="2">Menadžer</option>
                        <option id="3">Klijent</option>
                    </select>
                    <p id="password${korisnik.getKorisnickoIme()}" contentEditable="true"></p>
                    <div>
                        <a href="Korisnici?Zahtev=Izbrisi&Korisnik=${korisnik.getKorisnickoIme()}" class="btn btn-danger">Izbriši</a>
                        <a id="${korisnik.getKorisnickoIme()}" class="btn btn-warning btn-izmeni-kor">Izmeni</a>
                    </div>
                </div>
            </c:forEach>
            <br>
        </div>
    </div>
</body>
</html>
