<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="dbConn" scope="request" class="com.gca.db.DBProperties"/>
<%
    Connection conn = null;
    conn = dbConn.getConnection();

    PreparedStatement psInsert = null;

    String sRegUsername = request.getParameter("username");
    String sRegEmail = request.getParameter("regemail");

    String sqlInsertregistration = null;

    try {
        sqlInsertregistration = "insert into registration (sRegUsername, sRegEmail)" + "values(?, ?)";
        psInsert = conn.prepareStatement(sqlInsertregistration);

        psInsert.setString(1, sRegUsername);
        psInsert.setString(2, sRegEmail);

        psInsert.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
        request.setAttribute("error", "<span class='sSError'>&nbsp; Registration is not successful, May be User ID already Exists &nbsp; </span>");
        RequestDispatcher dispatch = request.getRequestDispatcher("/register.jsp");
        dispatch.forward(request, response);
    }
%>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Registration</title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <!--font-awsome-->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <!--css animate-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css" />
    <body>
        <nav class="nav">
            <div class="nav-center">
                <a class="toggle-nav" href="#">&#9776;</a>

                <div class="nav-mobile">
                    <ul class="left">
                        <li><a href="index.html"><i class="fa fa-home fa-lg"></i> Home</a></li>
                    </ul>
                    <ul class="right">
                        <li><a data-scroll href="#about"><i class="fa fa-info fa-lg" aria-hidden="true"></i> About</a></li>
                        <li><a  href="projects.jsp"><i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i> Featured Projects</a></li>
                        <li><a data-scroll href="#"><i class="fa fa-newspaper-o fa-lg" aria-hidden="true"></i> News and Events</a></li>
                        <li><a data-scroll href="#"><i class="fa fa-users fa-lg" aria-hidden="true"></i> Partners</a></li>
                        <li><a href="register.jsp"><i class="fa fa-sign-in fa-lg" aria-hidden="true"></i> Login/SignUp</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <h2>Registration completed Successfully!</h2>
        </div>
        <!--footer-->
        <footer class="animated fadeIn">
            <div class="container">
                <p style="text-align: center;"><span class="si">For more information on <em>The Grand Challenges Africa E-Marketplace</em> or for general inquiries, </span><a href="mailto:GCAfrica@aasciences.ac.ke" style="font-size: 17px;"> <i class="fa fa-envelope-o" aria-hidden="true"></i>Contact now</a></p>
                <div class="clearfix"></div>
                <div class="footer-menu">
                    <div class="large-12 cell">
                        <ul>
                            <li><a data-scroll href="#about"><i class="fa fa-info fa-lg" aria-hidden="true"></i> ABOUT</a></li>
                            <li><a href="projects.jsp"><i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i> FEATURED PROJECTS</a></li>
                            <li><a data-scroll href=""><i class="fa fa-newspaper-o fa-lg" aria-hidden="true"></i> NEWS &amp; EVENTS</a></li>
                            <li><a data-scroll href=""><i class="fa fa-users fa-lg" aria-hidden="true"></i> PARTNERS</a></li>
                        </ul>
                    </div>
                </div>
                <div class="social-footer">
                    <p>FOLLOW US</p>
                    <ul>
                        <li><a href="https://www.facebook.com/aesaafrica/" target="_blank"><i class="fa fa-facebook fa-lg" style="font-size: 20px;"></i></a></li>
                        <li><a href="https://twitter.com/AAS_AESA" target="_blank"><i class="fa fa-twitter fa-lg" style="font-size: 20px;"></i></a></li>
                        <li><a href="https://www.youtube.com/channel/UCtdLgoNICbdUFqkw-ph508g" target="_blank"><i class="fa fa-youtube-play fa-lg" style="font-size: 20px;"></i></a></li>
                    </ul>
                </div>

                <div class="clearfix"></div>

                <div class="disclaimer-footer">
                    <div class="large-12 cell">
                        <p class="p1" style="text-align: center;"><span class="s1">&copy;<script type="text/javascript">document.write(new Date().getFullYear());</script><em> Grand Challenges Africa E-marketplace</em>. All Rights Reserved. <a href="https://www.aasciences.ac.ke/aesa/privacy-policy/">Disclaimer</a></span></p>
                    </div>
                </div>
            </div>
        </footer>
        <script src="js/vendor/jquery.js"></script>
        <script src="js/vendor/what-input.js"></script>
        <script src="js/vendor/foundation.min.js"></script>
        <script src="js/app.js"></script>
        <script src="js/smooth-scroll.js"></script>
        <script>
                            smoothScroll.init();
        </script> 
    </body>
</html>
<%
    try {
        if (psInsert != null) {
            psInsert.close();
        }

        if (conn != null) {
            conn.close();
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>