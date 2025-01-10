<%-- 
    Document   : istorija
    Created on : May 27, 2024, 3:11:05 PM
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

        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
        
        
    </head>
    <body>
       
            <%@include file="includes/navbar.jsp"%>
           <section>
             
                        
                    <c:if test="${requestScope.Narudzbine.isEmpty()}">
                        <div class="prazna-korpa">
                              <br><br><br><br><br><br><br><br><br>
                            <p>Nemate narudzbina!<br><a href="Pocetna" class="btn btn-dark">Pogledajte ponudu!</a></p>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                        </div>
                    </c:if>
                        
                    <c:if test="${!requestScope.Narudzbine.isEmpty()}">
                        <!-- PRIKAZ NARUDZBINA -->
                        <div class="istorija-prikaz">
                            <c:forEach var="narudzbina" items="${requestScope.Narudzbine}">
                                <%@include file="includes/narudzbina.jsp"%>
                            </c:forEach>
                        </div>
                        <!-- KRAJ NARUDZBINA -->
                    </c:if>

                </div>
            </section>
                        <br><br>
            <%@include file="includes/footer.jsp"%>
        
    </body>
</html>