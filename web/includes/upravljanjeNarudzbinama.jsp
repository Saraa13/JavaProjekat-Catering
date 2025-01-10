<%-- 
    Document   : upravljanjeNarudzbinama
    Created on : May 27, 2024, 3:09:44 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<div class='panel'>
    
    <div class="prikaz-neostvarenih">
        <c:if test="${requestScope.Narudzbine.isEmpty()}">
            <div class="prazna-korpa">
                <p>Nema neostvarenih narudzbina!</p>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </c:if>

        <c:if test="${!requestScope.Narudzbine.isEmpty()}">
            <!-- PRIKAZ NARUDZBINA -->

                <c:forEach var="narudzbina" items="${requestScope.Narudzbine}">
                    <%@include file="./neostvarenaNarudzbina.jsp"%>
                </c:forEach>

            <!-- KRAJ NARUDZBINA -->
        </c:if>
    </div>
</div>
