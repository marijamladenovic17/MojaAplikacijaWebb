<%-- 
    Document   : login
    Created on : Sep 8, 2018, 8:39:55 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body  style="background: url(https://orig00.deviantart.net/3e1a/f/2016/349/3/1/grey_background_related_keywords_suggestions_grey__by_anupammajhi-darqb5u.jpg)">
        <div class="container"> 
            <%@include file = "header1.jsp" %> 
            <div class="row"> 
                <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="jumbotron">
                        <h1 align = "center"><font face = "vedrana" color = "grey"> Uloguj se: </font></h1>
                        <form action="LoginServlet" method="POST">

                            <label> <font face = "vedrana" color = "grey">E-mail adresa: </font></label>
                            <br>
                            <input name="email" id="n1" type="text" size="50"/>
                            <br><br>
                            <label ><font face = "vedrana" color = "grey"> Sifra naloga:</font></label>
                            <br>
                            <input name="pword" id="n2" type="password" size="50"/>
                            <br><br>
                            <input name="submit" type="submit" class="btn btn-success" style="height:40px;width:100px" value="Uloguj se"/>
                             
                        </form>
                        <br>
                        <a href="home.jsp"><button style="height:40px;width:100px" type="submit" class="btn btn-secondary" >Nazad</button></a>
                    </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
