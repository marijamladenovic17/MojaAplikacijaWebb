<%-- 
    Document   : karton
    Created on : Sep 19, 2018, 10:32:45 PM
    Author     : PC
--%>
<%@page import="java.util.LinkedList"%>
<%@page import="domen.Zadatak"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domen.GrupaZadatka"%>
<%@page import="domen.Test"%>
<%@page import="domen.Karton"%>
<%@page import="study.RegisterBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="study.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session = request.getSession();
    String email = "";
    String ip = "";

    if (session.getAttribute("session_user") == null || session.getAttribute("session_user") == "" || session.getAttribute("session_user").equals("")) {
        response.sendRedirect("login.jsp");
    } else {

        email = session.getAttribute("session_user").toString();
        ip = session.getAttribute("korisnik").toString();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Karton kandidata</title>
    </head>
    <body  style="background: #cccccc">
        <div class="container"> 
            <%@include file = "header.jsp" %> 
            <div class="row"> 
                <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="jumbotron">
                        <h1> Karton</h1>
                        <%
                            
                            String jmbgg = "";
                            Connection con = MyConnection.getConn();

                            String upit = "SELECT * FROM usertable WHERE email='" + email + "'";

                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(upit);

                            RegisterBean rb = new RegisterBean();
                            while (rs.next()) {
                                String ime1 = rs.getString(2);

                                String prez1 = rs.getString(3);
                                String imerodi = rs.getString(8);
                                String jmbg1 = rs.getString(9);
                                jmbgg = jmbg1;
                                String pol1 = rs.getString(10);
                                String mob1 = rs.getString(11);
                                String fiks1 = rs.getString(12);
                                rb.setImeRoditelja(imerodi);
                                rb.setFname(ime1);
                                rb.setLlanme(prez1);
                                rb.setJmbg(jmbg1);
                                rb.setPol(pol1);
                                rb.setMobilni(mob1);
                                rb.setFiksni(fiks1);

                            }

                            Connection con1 = MyConnection.getConn1();
                            Karton kart = null;
                           String upit1 = "SELECT * FROM karton k JOIN grupazadatka g ON k.brojGrupe = g.brojGrupe JOIN test t ON g.testID = t.testID WHERE k.kandidatID = '" + jmbgg + "' LIMIT 1";
                             Statement st1 = con1.createStatement();
                            ResultSet rs1 = st1.executeQuery(upit1);
                               LinkedList<Zadatak> zadaci = new LinkedList<Zadatak>();
                            while (rs1.next()) {
                                Test t = new Test(rs1.getInt("t.testID"), rs1.getString("nazivTesta"));
                                GrupaZadatka gz = new GrupaZadatka(rs1.getInt("g.brojGrupe"), null, t);
                                kart = new Karton(rs1.getInt("kartonID"), rs1.getInt("brojKartona"), rs1.getInt("brojUnosa"), gz, null);
                                int kID = kart.getKartonID();
                               Connection con2 = MyConnection.getConn1();
 
                                  String upit2 = "SELECT * FROM zadatak WHERE kartonID =" + kID;
                                Statement stat = con2.createStatement();
                                ResultSet rs2 = stat.executeQuery(upit2);
                                while (rs2.next()) {
                                    Zadatak zad = new Zadatak(rs2.getInt("rbZadatka"), rs2.getString("odgovor").toUpperCase().charAt(0));
                                    zadaci.add(zad);

                                }

                                
                            }
                        %>
                        <form name="sacuvajKandidata" action="karton.jsp" class="form-group" method="POST">
                            <table border="0" class = "table">

                                <tbody>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Zadatak:</font></td>
                                        <td><font face = "vedrana" color = "grey">Odabran odgovor:</font> </td>
                                    </tr>
                                    <%
                                        
                                        for (Zadatak z : zadaci) {
                                            int redB = z.getRbZadatka();
                                            char odgo = z.getOdgovor();
                                    %>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey"><%=redB%></font></td>

                                        <td><font face = "vedrana" color = "grey"><%=odgo%></font></td>
                                    </tr>
                                    <%
                                        }
                                    %>

                                </tbody>
                            </table>

                        </form>

                        <br>
                        <br>
                        <a href="welcome.jsp"><button style="height:40px;width:100px" type="submit" class="btn btn-secondary" >Nazad</button></a>

                    </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
