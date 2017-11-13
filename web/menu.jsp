<%-- 
    Document   : menu
    Created on : Nov 13, 2017, 11:52:45 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu</title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <!--font-awsome-->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <!--css animate-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css" />
    </head>
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
        <div id="app" class="grid-container fluid">

        </div>
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
