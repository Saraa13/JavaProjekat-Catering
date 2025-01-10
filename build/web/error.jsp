<%-- 
    Document   : error
    Created on : May 27, 2024, 3:10:53 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ketering Služba</title>
        <link rel="icon" href="./img/svg/minilogo.svg" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="./css/customStyles.css"/>

        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        
            <%@include file="includes/navbar.jsp"%>
            <div class="forbidden">
                <p> Error! <br>Samo admin ima pristup!</p>           
            </div>
            <%@include file="includes/footer.jsp"%>

    </body>
</html>

</html>
