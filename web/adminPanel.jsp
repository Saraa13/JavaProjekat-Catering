<%-- 
    Document   : adminPanel
    Created on : May 27, 2024, 3:10:37 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ketering Služba</title>
    <link rel="icon" href="./img/svg/minilogo.svg" type="image/icon type">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="./css/customStyles.css"/>
    <script src="js/html2pdf.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>     
    <script src="js/scripts.js"></script>
</head>
<body>
    <%@include file="includes/navbar.jsp"%>
    <div class="administracija fullpage">
        <!-- Prikaz panela -->
        <c:if test="${param.Zahtev == 'Narudzbine'}">
            <%@include file="includes/upravljanjeNarudzbinama.jsp"%>
        </c:if>
        <c:if test="${param.Zahtev == 'Proizvodi'}">
            <%@include file="includes/upravljanjeProizvodima.jsp"%>
        </c:if>
        <c:if test="${param.Zahtev == 'Korisnici'}">
            <%@include file="includes/korisnici.jsp"%>
        </c:if>
    </div>
    <br>
    <%@include file="includes/footer.jsp"%>
</body>
</html>
