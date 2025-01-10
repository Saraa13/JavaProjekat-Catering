<%-- 
    Document   : upravljanjeProizvodima
    Created on : May 27, 2024, 3:10:06 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<style>
.lista-stavka img {
    width: 50px; 
    height: auto; 
}
</style>

<div class='panel edit-ponude'>

    <!-- LISTA PROIZVODA ZA EDIT -->
    <div>
        <div class="lista-naslov">
            <p>Proizvod</p>
            <p>Slika</p>
            <p>Opis</p>
            <p>RSD</p>
            <p>Kategorija</p>
            <p>Akcije</p>
        </div>

        <div class="lista">
            <c:forEach var="proizvod" items="${requestScope.proizvodi}">
                <div class="lista-stavka " >
                    <p id="naziv${proizvod.getProizvodID()}" contentEditable="true">${proizvod.getNazivProizvoda()}</p>
                   <p id="slika${proizvod.getProizvodID()}"><img src="${proizvod.getSlikaPath()}" alt="Slika proizvoda"></p>
                    <p id="opis${proizvod.getProizvodID()}" contentEditable="true" class="lista-stavka-opis">${proizvod.getOpis()}</p>
                    <p id="cena${proizvod.getProizvodID()}" contentEditable="true">${proizvod.getCenaPoPorciji()}</p>
                    <select id="kategorija${proizvod.getProizvodID()}">
                        <option id="${proizvod.getKategorija().getKategorijaID()}" selected> ${proizvod.getKategorija().getNazivKategorije()} </option>
                        <option disabled>---------</option>
                        <c:forEach var="kategorija" items="${requestScope.kategorije}">
                            <option id="${kategorija.getKategorijaID()}">${kategorija.getNazivKategorije()}</option>
                        </c:forEach>
                    </select>
                    <div class="lista-btn">
                        <a href="Proizvodi?Zahtev=Izbrisi&Proizvod=${proizvod.getProizvodID()}" class="btn btn-danger">X</a>
                        <a id="${proizvod.getProizvodID()}" class="btn btn-warning btn-izmeni">Izmeni</a>
                    </div>            
                </div>                    
            </c:forEach>  
        </div>       
    </div>

    <div class="ponuda-dole">

   

        <!-- FORMA ZA NOV PROIZVOD -->
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Nov Proizvod</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <style>
        .nov-proizvod {
            -webkit-box-shadow: -6px 10px 19px 0px rgba(0,0,0,0.35);
            box-shadow: -6px 11px 19px 0px rgba(0,0,0,0.35);
            background-color: #fff;
            border-radius: 0.5rem;
            display: grid;
            padding: 1rem;
            max-width: 600px;
            margin: 0 auto;
        }
        .nov-proizvod form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1rem;
        }
        .nov-proizvod div {
            display: flex;
            flex-direction: column;
        }
        .nov-proizvod label {
            font-weight: bold;
            margin-bottom: 0.5rem;
        }
        .nov-proizvod input[type="submit"] {
            grid-column: span 2;
            justify-self: center;
            padding: 0.5rem 2rem;
        }
    </style>
</head>
<body>
    <div class="nov-proizvod">
        <form action="Proizvodi" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
            <input type="hidden" name="zahtev" value="dodaj">
            <div>
                <label for="slika">Izaberite sliku</label>
                <input id="slika" type="file" name="slika" placeholder="Izaberite fotografiju!" required>
            </div>
            <div>
                <label for="naziv">Naziv</label>
                <input id="naziv" type="text" name="naziv" placeholder="Naziv proizvoda" required>
            </div>
            <div>
                <label for="opis">Opis</label>
                <textarea id="opis" name="opis" maxlength="200" required></textarea>
            </div>
            <div>
                <label for="kategorija">Kategorija</label>
                <select class="katSelect" id="kategorija" name="kategorija" required>
                    <option disabled selected>Izaberite kategoriju</option>
                    <c:forEach var="kategorija" items="${requestScope.kategorije}">
                        <option value="${kategorija.getKategorijaID()}">${kategorija.getNazivKategorije()}</option>
                    </c:forEach>
                </select>
                <input type="hidden" class="katID" name="kategorijaID" value="">
            </div>
            <div>
                <label for="cena">Cena</label>
                <input id="cena" type="number" name="cena" min="0" placeholder="RSD" required>
                
            </div>
            <input class="btn btn-dark" type="submit" value="Dodaj u ponudu">
        </form>
    </div>
    <script>
        function validateForm() {
            var kategorija = document.getElementById("kategorija");
            var kategorijaID = document.querySelector(".katID");
            kategorijaID.value = kategorija.value;

            // Provera da li je kategorija izabrana
            if (kategorija.value === "") {
                alert("Molimo izaberite kategoriju.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>



    </div>        
</div>
