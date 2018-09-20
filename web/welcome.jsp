<%-- 
    Document   : welcome
    Created on : Sep 9, 2018, 2:29:47 PM
    Author     : PC
--%>

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
        <title>JSP Page</title>
    </head>
    <body  style="background: url(https://orig00.deviantart.net/3e1a/f/2016/349/3/1/grey_background_related_keywords_suggestions_grey__by_anupammajhi-darqb5u.jpg)">
        <div class="container"> 
            <%@include file = "header.jsp" %> 
            <div class="row"> 
                <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="jumbotron">
                        <h1> Zdravo!</h1>
                        <h2> 
                            <%=ip%>
                        </h2>
                        <%
                            
                            Connection con = MyConnection.getConn();
                            
                            String upit = "SELECT * FROM usertable WHERE email='"+email+"'";
                            
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(upit);
                            
                            RegisterBean rb = new RegisterBean();
                            while (rs.next()) {                                
                               String ime1 =rs.getString(2);
                               
                                String prez1 =rs.getString(3);
                                 String imerodi =rs.getString(8);
                                  String jmbg1 =rs.getString(9);
                                   String pol1 =rs.getString(10);
                                   String mob1 =rs.getString(11);
                                   String fiks1 =rs.getString(12);
                                   rb.setImeRoditelja(imerodi);
                                   rb.setFname(ime1);
                                   rb.setLlanme(prez1);
                                   rb.setJmbg(jmbg1);
                                   rb.setPol(pol1);
                                   rb.setMobilni(mob1);
                                   rb.setFiksni(fiks1);
                                   
                            }
                        %>
                        <form name="sacuvajKandidata" action="karton.jsp" class="form-group" method="POST">
                            <table border="0" class = "table">

                                <tbody>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Ime:</font></td>
                                        <td><font face = "vedrana" color = "grey"><%=rb.getFname()%></font></td>
                                       
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Prezime:</font> </td>
                                        <td><font face = "vedrana" color = "grey"><%=rb.getLlanme()%></font></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Ime jednog roditelja:</font></td>
                                        <td><font face = "vedrana" color = "grey"><%=rb.getImeRoditelja()%></font></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">JMBG:</font></td>
                                        <td><font face = "vedrana" color = "grey"><%=rb.getJmbg()%></font></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Pol:</font></td>
                                        <td><font face = "vedrana" color = "grey"><%=rb.getPol()%></font></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Mobilni:</font></td>
                                        <td><font face = "vedrana" color = "grey"><%=rb.getMobilni()%></font></td>
                                    </tr>
                                    <tr>
                                        <td><font face = "vedrana" color = "grey">Fiksni:</font></td>
                                        <td><font face = "vedrana" color = "grey"><%=rb.getFiksni()%></font></td>
                                    </tr>
                                </tbody>
                            </table>
                                    <input type="submit" value="Pronadji svoj karton" class="btn-success" name="sacuvaj" />
                        </form>

                        <br>
                        <br>
                        <a href="logout.jsp"><button style="height:40px;width:100px" type="submit" class="btn btn-secondary" >Izloguj se</button></a>

                    </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
