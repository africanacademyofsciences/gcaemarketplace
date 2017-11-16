<%-- 
    Document   : register
    Created on : Nov 7, 2017, 10:41:59 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>GC Africa E-Market Place | Make a pledge</title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <!--font-awesome-->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <!--css animate-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--Recaptch API-->
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script>
            function trim(s)
            {
                return s.replace(/^\s*/, "").replace(/\s*$/, "");
            }

//            function validateEmail(emailValue)
//            {
//                var objRegExp = /(^[a-z]([a-z_\.]*)@([a-z_\.]*)([.][a-z]{3})$)|(^[a-z]([a-z_\.]*)@([a-z_\.]*)(\.[a-z]{3})(\.[a-z]{2})*$)/i;
//
//                return objRegExp.test(emailValue);
//            }

            function validateForm()
            {
                var str = /^[A-Za-z][.A-Za-z ]{0,100}$/;

                if ((trim(document.frmLogin.username.value) == "") || str.test(trim(document.frmLogin.username.value)) == false)
                {
                    alert("Please fill your username and it should be characters only");
                    document.frmLogin.username.focus();
                    return false;
                } else if ((trim(document.frmLogin.email.value) == "") || validateEmail(document.frmLogin.email) == false)
                {
                    alert("Please fill email value and should be email format");
                    document.frmLogin.email.focus();
                    return false;
                }
            }

            function init()
            {
                document.frmLogin.login.focus();
            }
        </script>
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
                        <li><a href="projects.jsp"><i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i> Featured Projects</a></li>
                        <li><a data-scroll href="#"><i class="fa fa-newspaper-o fa-lg" aria-hidden="true"></i> News and Events</a></li>
                        <li style="font-size: 18.5px;"><a href="">
                            <%
                                
//                                String x = session.getAttribute("username").toString();
//                                out.println("Hi " + x);
                            %>
                        </a></li>
                        <li><a href="logout.jsp"><i class="fa fa-sign-out fa-lg" aria-hidden="true"></i> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
                        <section class="page-opener blue commitment">
                            <div class="container grid-x">
                                <div class="large-12 cell">
                                    <div class="page-opener-content">
                                        <h1>Make a pledge</h1>
                                    </div>
                                </div>
                            </div>
                        </section>
        <div id="app" class="grid-container fluid">
            <h6>Fields marked with an * are required for submission.</h6>
            <div class="grid-x">
                <div class="large-8 cell">
                    <form action="projects" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <label>Project Title</label>
                            <input type="text" name="title" placeholder="Project Title">
                        </fieldset>
                        <fieldset>
                            <label>Project Summary (in 280 characters)</label>
                            <textarea rows="4" name="summary" placeholder="Project Summary"></textarea>
                        </fieldset>
                        <fieldset>
                            <label>Upload Image</label>
                            <input type="file" name="photo">
                        </fieldset>
                        <button type="submit" class="button success">Submit</button>
                    </form>
                </div>
            </div>
            <br>
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