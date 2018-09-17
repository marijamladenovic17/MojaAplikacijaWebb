<%-- 
    Document   : signout
    Created on : Sep 9, 2018, 3:25:03 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Progma", "no-cache");
            response.setDateHeader("Expires", 0);

        %>
        <%
    session = request.getSession();
    String email="";
    
    if(session.getAttribute("session_user")==null || session.getAttribute("session_user")=="" || session.getAttribute("session_user").equals("")){
        response.sendRedirect("login.jsp");
    }else{
    
    email = session.getAttribute("session_user").toString();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="container"> 
            <%@include file = "header.jsp" %> 
            <div class="row"> 
                <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="jumbotron">
                    <h1>Izloguj se</h1>
        <%
            if(session.getAttribute("session_user")!=null){
                session.removeAttribute("session_user");
                request.getSession(false);
                session.setAttribute("session_user", null);
                session.invalidate();
                response.sendRedirect("login.jsp");
            }
        %>
                
                  </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
