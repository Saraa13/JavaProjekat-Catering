<%-- 
    Document   : profil
    Created on : May 27, 2024, 3:11:58 PM
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
         <style>
            .fullwidth-content {
                width: 100%;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                
            }
        </style>
    </head>
    <body>
         
            <%@include file="includes/navbar.jsp"%>
            <section class="sekcija-boja"><br><br><br><br>
                

                    <c:if test = "${param.View == 'Profil'}">
                        <%@include file="includes/profilInfo.jsp"%>
                    </c:if>
                    <c:if test = "${param.View == 'Korpa'}">
                        <%@include file="includes/korpa.jsp"%>
                    </c:if>
<br><br>
                    <c:if test = "${param.View == 'Izbrisi'}">
                        <%@include file="includes/izbrisi.jsp"%>
                    </c:if>
<br><br><br><br><br><br>
                    <c:if test = "${param.View == 'Poruka'}">
                        <%@include file="includes/poruka.jsp"%>
                    </c:if>
                      
            </section>
                        
            <%@include file="includes/footer.jsp"%>
        
    </body>
</html>
