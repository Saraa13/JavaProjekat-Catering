<%-- 
    Document   : izbrisi
    Created on : May 27, 2024, 3:06:05 PM
    Author     : Windows HD
--%>

<!-- Upit za brisanje -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<div class="brisanje">
    <form class="form-brisanje" action="Profil" method="post">
        <br><br><br>
        <p id="hvala">Hvala što ste koristili naše usluge!</p>
        <input type="text" placeholder="Unesite šifru" name="password">
        <input type="submit" class="btn btn-danger" value="Izbriši" name="zahtev">
        
        <c:if test="${param.Status == 'greska'}">
            <p class="Del-greska">Uneli ste pogrešnu šifru</p> 
        </c:if>
    </form>
</div>
