<%-- 
    Document   : footer
    Created on : May 27, 2024, 3:05:11 PM
    Author     : Windows HD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .content {
            flex: 1;
        }
        .footer {
            display: flex;
            justify-content: space-between;
            padding: 10px;
          
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .footer-item-left, .footer-item-right {
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="content">
        <!-- Glavni sadržaj vaše stranice ide ovde -->
    </div>
    <footer>
        <div class="footer">
            <span class="footer-item-left">Copyright @DapurLarana 2024</span>
            <span class="footer-item-right">Sara Jovanovic</span>
        </div>
    </footer>
</body>
</html>
