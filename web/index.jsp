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
    </head>
    <body style="background: url(https://orig00.deviantart.net/3e1a/f/2016/349/3/1/grey_background_related_keywords_suggestions_grey__by_anupammajhi-darqb5u.jpg)">
        <div class="container"> 
            <%@include file = "header.jsp" %> 
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
                        <a href="home.jsp"><button style="height:40px;width:100px" type="submit" class="btn btn-secondary" >Nazad </button></a>

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
