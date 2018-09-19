<%-- 
    Document   : home
    Created on : Sep 10, 2018, 2:59:06 PM
    Author     : PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="study.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="novo.Obavestenje"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Fakultet</title>

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
    <body style="background-color:#cccccc">
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
                        <li class="active">
                            <a href="#">Pocetna</a>
                        </li>
                        <li>
                            <a href="login.jsp">Uloguj se</a>
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
                <div class="col-sm-2">
                    <h2 style=" font-size: 300%">Vesti:</h2>
                </div>
                <div class="col-sm-10">
                    <%

                        LinkedList<Obavestenje> listaObav = new LinkedList<Obavestenje>();
                        String textZaObav = "";
                        String naslovi = "";
                        Connection con = MyConnection.getConn1();

                        String upit = "SELECT * FROM obavestenje";

                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery(upit);

                        while (rs.next()) {
                            int id = rs.getInt(1);
                            String text = rs.getString(2);
                            String naslov = rs.getString(3);
                            Obavestenje obavestenje = new Obavestenje(id, text, naslov);
                            listaObav.addFirst(obavestenje);

                        }


                    %>


                    <% for (Obavestenje obav : listaObav) {
                            textZaObav = obav.getText();
                            naslovi = obav.getNaslov();


                    %> <div class="row">
                <div class="col-sm-0">
                    
                </div>
                <div class="col-sm-12">
                    <h2 style=" font-size: 300%" ><%=naslovi%></h2>
                        <p style=" font-size: 160%"><%=textZaObav%> </p> 
                        <hr>
                    </div>
            <div class="col-sm-0"></div>

        </div><%
                             }%>
            </div>
            <div class="col-sm-0"></div>

        </div>

    </div>
    <footer class="container-fluid text-center">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <p align="center">Kotaktirajte nas:</p>
                <p align="center">fakultet302@gmail.com</p>
            </div>
            <div class="col-sm-2"></div>
        </div>

    </footer>

</body>
</html>
