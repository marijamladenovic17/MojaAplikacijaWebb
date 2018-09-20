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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .navbar{
                margin-bottom: 0;
                border-radius: 0;
                background-color: #848484;
                color: #151515;
                padding: 1% 0;
                font-size: 1.2em;
                border: 0;
            }
            .navbar-brand{
                float: left;
                min-height: 55px;
                padding: 0 15px 5px;

            }
            .navbar-inverse .navbar-nav .active a,.navbar-inverse .navbar-nav .active a:focus,
            .navbar-inverse .navbar-nav .active a:hover{
                color: #FFF;
                background-color:#A4A4A4;
            }

            .navbar-inverse .navbar-nav li a {
                color: #D5D5D5;
            }

            .container-fluid, .text-center{
                margin-bottom: 0;
                border-radius: 0;
                background-color: #848484;
                color: #151515;
                font-size: 1.2em;
                border: 0;
            }
            


        </style>
    </head>
    <body  style="background: url(https://orig00.deviantart.net/3e1a/f/2016/349/3/1/grey_background_related_keywords_suggestions_grey__by_anupammajhi-darqb5u.jpg)">
        <div class="container" style="">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#"><img src="Images/logo.png" height="71" width="120"/></a>
                            </div>
                            <div class="collapse navbar-collapse" id="myNavbar">
                                <ul class="nav navbar-nav navbar-right">
                                    <li >
                                        <a href="home.jsp">Pocetna</a>
                                    </li>
                                    <li class="active">
                                        <a href="#">Uloguj se</a>
                                    </li>
                                    <li>
                                        <a href="index.jsp">Prijavi se</a>
                                    </li>
                                    <li>
                                        <a href="rezultati.jsp">Rezultati</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>


                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="Images/f6.png">

                            </div>
                            <div class="item">
                                <img src="Images/f8.png">

                            </div>
                            <div class="item">
                                <img src="Images/f1.png">

                            </div>
                        </div>

                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" area-hidden="true"></span>
                            <span class="sr-only">Prethodna</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" area-hidden="true"></span>
                            <span class="sr-only">Sledeca</span>
                        </a>

                    </div><!-- End slider -->
                </div>
            </div>
        </div>
        <div class="container"> 
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
                    </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
