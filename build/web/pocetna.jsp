<%-- 
    Document   : pocetna
    Created on : May 27, 2024, 3:11:33 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
   
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ketering Služba</title>
    <link rel="icon" href="./img/svg/minilogo.svg" type="image/icon type">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="./css/customStyles.css"/>
    <script src="js/bootstrap.min.js"></script>
  <style>
        .wrapper {
            display: flex;
            flex-wrap: wrap;
        }
        .informacije {
            flex: 1 1 200px; /* Adjust the width as needed */
            margin-right: 20px; /* Space between info and products */
        }
        .proizvodiPrikaz {
            flex: 3 1 600px; /* Adjust the width as needed */
        }
    </style>
</head>
<body>
    
 <%@include file="/includes/navbar.jsp"%>
    <div class="wrapper fullpage">
        <!-- VAŽNE INFORMACIJE -->
        <div class="informacije">
            <h5 class="pola-bordera">VAŽNE INFORMACIJE</h5>
            <p><strong>Kontakt:</strong> catering@gmail.com</p>
            <p><strong>Adresa:</strong> Gandijeva 42, Beograd, Srbija</p>
            <p><strong>Telefon:</strong> +381 63 842 44 22</p>
            <p><strong>Radno vreme:</strong> Pon-Pet: 08:00 - 17:00, Sub: 09:00 - 14:00</p>
            <p><strong>Društvene mreže:</strong>
                <a href="https://www.facebook.com" target="_blank">Facebook</a> |
                <a href="https://www.twitter.com" target="_blank">Twitter</a> |
                <a href="https://www.instagram.com" target="_blank">Instagram</a>
            </p>
            <h5 class="pola-bordera">Opis našeg posla</h5>
            <p>
                Naša ketering služba posvećena je pružanju vrhunskih usluga i nezaboravnih kulinarskih iskustava za sve vrste događaja. Bilo da organizujete poslovni sastanak, venčanje, rođendan ili bilo koju drugu proslavu, naš tim profesionalaca će se pobrinuti da svaki detalj bude savršen. Koristimo samo najkvalitetnije sastojke kako bismo osigurali da naši specijaliteti ne samo da zadovolje već i premaše vaša očekivanja.
            </p>
            <p>
                Ponosimo se našom sposobnošću da prilagodimo naše usluge specifičnim potrebama i željama naših klijenata, pružajući personalizovan pristup svakom događaju. Naš meni je raznovrstan i fleksibilan, obuhvatajući različite kuhinje i dijetalne potrebe, tako da svako može uživati u našim ukusnim kreacijama.
            </p>
        </div>
        <!-- KRAJ VAŽNIH INFORMACIJA -->

        <div class="proizvodiPrikaz">
            ${msg}
            <!-- AUTOMATSKI PRIKAZ PROIZVODA -->
            <c:forEach var="proizvod" items="${proizvodi}">     
                <%@include file="/includes/proizvod.jsp" %>                    
            </c:forEach>
            <!-- KRAJ PRIKAZA PROIZVODA -->
        </div>
    </div>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>
