<%-- 
    Document   : Rezultati
    Created on : Sep 19, 2018, 3:54:32 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: url(https://orig00.deviantart.net/3e1a/f/2016/349/3/1/grey_background_related_keywords_suggestions_grey__by_anupammajhi-darqb5u.jpg)">
          <div class="container"> 
            <%@include file = "header.jsp" %> 
            <div class="row"> 
                <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="jumbotron">
                    <form name="Rezultati" action="home.jsp" class="form-group" method="GET">
                            <table border="0" class = "table">

                                <tbody>
                                   <tr>
                                        <td><font face = "vedrana" color = "grey">Informacioni sistemi i tehnologije:</font></td>
                                        <td><a href="http://localhost:8080/MojaAplikacijaWebb/pdfIsit.jsp">ovde</a></td>
                                       
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Menadzment:</font> </td>
                                        <td><a href="http://localhost:8080/MojaAplikacijaWebb/pdfmen.jsp">ovde</a></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Informacioni sistemi i tehnologije - sistem na daljinu:</font></td>
                                        <td><a href="http://localhost:8080/MojaAplikacijaWebb/odfDalj.jsp">ovde</a></td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                            <input type="submit" value="Nazad" style="height:40px;width:100px" class="btn btn-success" name="sacuvaj" />
                        </form>

                </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
