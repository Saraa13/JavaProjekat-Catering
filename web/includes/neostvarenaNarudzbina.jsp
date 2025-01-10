<%-- 
    Document   : neostvarenaNarudzbina
    Created on : May 27, 2024, 3:08:28 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="narudzbina status0">
    <div class='istorija-heading'>
        <h4> <p class="bold"> Naručio: ${narudzbina.getKorisnik().getKorisnickoIme()}</p></h4>
        <h4> Narucena: ${narudzbina.getDatumKreiranja()} </h4>
        
      
    </div>

    <div class='narudzbina-stavke'>
        <c:forEach var="stavka" items="${narudzbina.getStavkeNarudzbine().keySet()}">
            <div class="narudzbina-stavka">
                <p>${stavka.getNazivProizvoda()}: </p><p>${stavka.getCenaPoPorciji()} RSD x ${narudzbina.getStavkeNarudzbine().get(stavka)}</p>
            </div>                 
        </c:forEach>
    </div>

    <div class='narudzbina-footer'>
        <div>               
            <p> Popust: ${narudzbina.getPopust()} %</p>
            <p> Ukupno: ${narudzbina.getUkupnaCena()} RSD </p>
        </div>
        <div class="btn-narudzbina">
            <a href="Narudzbe?Zahtev=Ostvari&Narudzba=${narudzbina.getNarudzbinaID()}" class="btn btn-warning" >Ostvari</a>
            <a href="Narudzbe?Zahtev=Otkazi&Narudzba=${narudzbina.getNarudzbinaID()}" class="btn btn-danger" >Otkazi</a>
        </div>
    </div>
</div> 

