<%-- 
    Document   : LoginCheck
    Created on : Mar 26, 2014, 8:19:12 PM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        if((username.equals("nshah77") && password.equals("password")))
            {
            session.setAttribute("username",username);
            response.sendRedirect("Home.jsp");
            }
        else
            response.sendRedirect("Error.jsp");
        %>
    </body>
</html>


