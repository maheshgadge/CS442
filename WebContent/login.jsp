<%-- 
    Document   : login
    Created on : Mar 26, 2014, 8:18:16 PM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>WELCOME TO BANKING AND SHOPPING PORTAL</h1> </center>
        <center>
            <h2>Enter Login details</h2>
            <form action="LoginCheck.jsp" method="post">
            <br/>Username:<input type="text" name="username">
            <br/>Password:<input type="password" name="password">
            <br/><input type="submit" value="Submit">
            </form>
        </center>
    </body>
</html>

