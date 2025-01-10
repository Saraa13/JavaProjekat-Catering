<%-- 
    Document   : korpa
    Created on : May 27, 2024, 3:07:25 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
    .korpa-stavka {
        display: grid;
        grid-template-rows: auto auto;
        grid-template-columns: 1fr 2fr 1fr;
        gap: 20px; /* Dodaje razmak između elemenata unutar stavke */
        background-color: #D3D3D3;
        border: solid 2px #fff;
        width: 100%;
        padding: 1.5rem;
        margin-bottom: 20px; /* Dodaje razmak između stavki */
        place-items: center;
    }
    .korpa-stavka img {
        max-width: 150px;
        max-height: 150px;
    }
</style>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <c:if test="${Narudzbina == null}">
                <div class="prazna-korpa text-center">
                    <p>Vaša korpa je prazna!</p>
                    <a href="Pocetna" class="btn btn-dark">Pogledajte ponudu!</a>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
            </c:if>

            <!-- PRIKAZ KORPE -->
            <c:if test="${Narudzbina != null}">
                <form class="korpa-prikaz" action="Narucivanje" method="post">
                    <h3 class="text-center mb-4">Vaša narudžbina</h3>

                    <!-- STAVKE -->
                    <div class='stavke-prikaz'>
                        <c:forEach var="stavka" items="${Narudzbina.getStavkeNarudzbine().keySet()}">
                            <div class='korpa-stavka'>
                                <h5>${stavka.getNazivProizvoda()}</h5>
                                <!-- Prikaz slike proizvoda -->
                                <img src="${stavka.getSlikaPath()}" alt="${stavka.getNazivProizvoda()}" class="img-fluid">
                                <input class="form-control poeni-korpa" type="number" min="1" id="${stavka.getProizvodID()}" onchange="updateUrl(this)" value="${Narudzbina.getStavkeNarudzbine().get(stavka)}">
                                <div class="stavka-buttons mt-2">
                                    <!-- Link se puni dinamicki js scriptom -->
                                    <a href="" id="a${stavka.getProizvodID()}" class="btn btn-warning btn-stavka">Izmeni</a>
                                    <a href="Korpa?Zahtev=Izbrisi&Proizvod=${stavka.getProizvodID()}" class="btn btn-danger btn-stavka">Izbriši</a>
                                </div>
                                 <p class='stavka-total'>Cena: ${stavka.getCenaPoPorciji() * Narudzbina.getStavkeNarudzbine().get(stavka)} RSD</p>
                            </div>
                           
                        </c:forEach>
                    </div>
                    <!-- KRAJ STAVKI -->

                    <!-- Footer narudzbine -->
                    <div class="korpa-footer py-3">
                        <input class="form-control poeni-korpa mb-2" type="number" min="0" id="poeni" onchange='popust(this)' max="<c:if test="${sessionScope.Poeni>2}">2</c:if><c:if test="${sessionScope.Poeni<=2}">${sessionScope.Poeni}</c:if>" name="poeni" placeholder="Poeni za popust">
                        <input class="btn btn-danger btn-korpa mr-2" type="submit" name="zahtev" value="Otkaži">
                        <input class="btn btn-dark btn-korpa" type="submit" name="zahtev" value="Naruči">
                        <div class="total">
                            <p>Cena bez popusta: <span id="subtotal">${Narudzbina.getTotalBezPopusta()}</span> RSD</p> 
                <p>Cena sa popustom: <span id="total">${Narudzbina.getTotalBezPopusta()}</span> RSD</p>
                        </div>
                    </div>
                </form>  
            </c:if>
        </div>
    </div>
</div>
<script src="scripts/popust.js"></script>
