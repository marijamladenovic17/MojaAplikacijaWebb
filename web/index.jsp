<%-- 
    Document   : index
    Created on : Sep 8, 2018, 6:14:05 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        
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
    <body style="background: url(https://orig00.deviantart.net/3e1a/f/2016/349/3/1/grey_background_related_keywords_suggestions_grey__by_anupammajhi-darqb5u.jpg)">
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
                                    <li >
                                        <a href="login.jsp">Uloguj se</a>
                                    </li>
                                    <li class="active">
                                        <a href="#">Prijavi se</a>
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
                        <h1>  <font face = "vedrana" color = "grey">Unos podataka:</font></h1>
                        <form name="sacuvajKandidata" action="RegisterSevrlet" class="form-group" method="POST">
                            <table border="0" class = "table">

                                <tbody>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Ime:</font></td>
                                        <td><input type="text" name="ime" value="" size="50" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Prezime:</font> </td>
                                        <td><input type="text" name="prezime" value="" size="50" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Ime jednog roditelja:</font></td>
                                        <td><input type="text" name="imeRoditelja" value="" size="50" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">JMBG:</font></td>
                                        <td><input type="text" name="jmbg" value="" size="50" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Emal:</font></td>
                                        <td><input type="text" name="email" value="" size="50" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Sifra korisnika za sistem fakulteta:</font></td>
                                        <td><input type="text" name="pword" value="" size="50" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Pol:</font></td>
                                        <td><select name="pol">
                                                <option>Zenski</option>
                                                <option>Muski</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Mobilni:</font></td>
                                        <td><input type="text" name="mobilni" value="" size="50" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Fiksni:</font></td>
                                        <td><input type="text" name="fiksni" value="" size="50" /></td>
                                    </tr>
                                </tbody>
                            </table>
                            <input type="submit" value="Prijavi se" style="height:40px;width:100px" class="btn btn-success" name="sacuvaj" />
                        </form>
                        <br>
                        <br>

                    </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>

        <%--  <h1>Sign up page</h1>
        
        <form action="RegisterSevrlet" method="POST">
           <label>First name :: </label>
            <input name="fname" id="n1" type="text"/>
            <br><br>
            <label>Last name :: </label>
            <input name="lname" id="n2" type="text"/>
            <br><br>
            <label>Email :: </label>
            <input name="email" id="n3" type="text"/>
            <br><br>
            <label>Password :: </label>
            <input name="pword" id="n4" type="passwprd"/>
            <br><br>
            <input name="submit" type="submit" value="Submit"/>--%>

    </form>
</body>
</html>
