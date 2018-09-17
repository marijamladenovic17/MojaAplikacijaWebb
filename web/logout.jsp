<%-- 
    Document   : logout
    Created on : Sep 9, 2018, 3:20:35 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session = request.getSession();
    String email="";
    
    if(session.getAttribute("session_user")==null || session.getAttribute("session_user")=="" || session.getAttribute("session_user").equals("")){
        response.sendRedirect("login.jsp");
    }else{
    
    email = session.getAttribute("session_user").toString();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout </title>
    </head>
    <body style="background: url(https://orig00.deviantart.net/3e1a/f/2016/349/3/1/grey_background_related_keywords_suggestions_grey__by_anupammajhi-darqb5u.jpg)">
        <div class="container"> 
            <%@include file = "header.jsp" %> 
            <div class="row"> 
                <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="jumbotron">
                    <h1>Da li ste sigurni?</h1>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Progma", "no-cache");
            response.setDateHeader("Expires", 0);

        %>
        <a href="signout.jsp"><button type="submit" class="btn-success" >Da </button></a>
        <a href="welcome.jsp"><button type="submit" color="orange">Ne </button></a>
                
                  </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
