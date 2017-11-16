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
            function validateForm() {
                var x = document.forms["pledgeForm"]["title"].value;
                var y = document.forms["pledgeForm"]["institute"].value;
                var z = document.forms["pledgeForm"]["location"].value;
                var m = document.forms["pledgeForm"]["email"].value;
                var n = document.forms["pledgeForm"]["number"].value;
                var o = document.forms["pledgeForm"]["summary"].value;

                if (x == null || x == "") {
                    alert("Organisation name must be filled out");
                    return false;
                }

                if (n == null || n == "" || (n.value < 10) || (isNaN(n.value))) {
                    alert("Number must be filled out");
                    return false;
                }

                if (y == null || y == "") {
                    alert("Institute must be filled out");
                    return false;
                }

                if (z == null || z == "") {
                    alert("Location must be filled out");
                    return false;
                }

                if (m == null || m == "") {
                    alert("email must be filled out");
                    return false;
                }

                if (o == null || o == "") {
                    alert("Summary must be filled out");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <nav class="nav">
            <div class="nav-center">
                <a class="toggle-nav" href="#">&#9776;</a>

                <div class="nav-mobile">
                    <ul class="left">
                        <a href=""><img src="img/logo2.png" width="280" height="120"></a>
                    </ul>
                    <ul class="right">
                        <li><a href="index.html"><i class="fa fa-home fa-lg"></i> Home</a></li>
                        <li><a href="projects.jsp"><i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i> Featured Projects</a></li>
                        <li><a href="#"><i class="fa fa-users fa-lg" aria-hidden="true"></i> Partners</a></li>
                        <li style="font-size: 18.5px;"><a href="">
                                <%

                                    //                                String x = session.getAttribute("username").toString();
                                    //                                out.println("Hi " + x);
                                %>
                            </a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section class="page-opener blue commitment">
            <div class="container grid-x" style="width: 1170px;">
                <div class="large-8 cell">
                    <div class="page-opener-content">
                        <h1>Make a pledge</h1>
                    </div>
                </div>
            </div>
        </section>
        <section class="sort-area commitments">
            <div class="container" style="width: 1170px;">
                <div class="grid-x" style="width: 100%;">
                    <div class="large-12 cell">
                        <div class="sort-btn">
                            <a href="#" class="btn-sort">
                                New Pledges <i class="fa fa-plus-circle"></i>
                            </a>

                            <a href="#" class="btn-sort">
                                My Pledges <i class="fa fa-book"></i>
                            </a>

                            <a href="#" class="btn-sort">
                                My Profile <i class="fa fa-user"></i>
                            </a>
                            <a href="#" class="btn-sort">
                                Log Out <i class="fa fa-sign-out"></i>
                            </a>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div id="app" class="grid-container fluid">
            <div class="grid-x">
                <div class="large-10 cell frm_forms  with_frm_style frm_style_formidable-style-3">
                    <h6>Fields marked with an * are required for submission.</h6>
                    <form action="projects" method="post" enctype="multipart/form-data" class="frm-show-form  frm_pro_form" name="pledgeForm" onsubmit="return validateForm()">
                        <fieldset>
                            <label>ORGANISATION NAME *</label>
                            <input type="text" name="title" placeholder="ORGANISATION MAME">
                        </fieldset>
                        <fieldset>
                            <label>TYPE OF INSTITUTE *</label>
                            <select name="institute">
                                <option value="Non-profit">Non-Profit </option>
                            </select>
                        </fieldset>
                        <fieldset>
                            <label>LOCATION *</label>
                            <input type="text" name="location" placeholder="LOCATION">
                        </fieldset>
                        <fieldset>
                            <label>EMAIL *</label>
                            <input type="email" name="email" placeholder="EMAIL">
                        </fieldset>
                        <fieldset>
                            <label>PHONE *</label>
                            <input type="text" name="number" placeholder="PHONENUMBER">
                        </fieldset>
                        <hr>
                        <h6>TYPE OF PLEDGE (select all that apply) *</h6>
                        <div class="grid-container">
                            <div class="grid-x grid-padding-x">
                                <div class="large-6 cell">
                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Financial</label>
                                    <!--<input type="text" id="finance" name="finance" disabled>-->
                                    <br>
                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Access to an international network of donors, investors and (corporate) partners</label>
                                    <br>
                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Incubation facilities (office or laboratory space)</label>
                                    <br>
                                    <!--                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                                                                        <br>
                                                                        <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>-->
                                    <br>
                                </div>
                                <div class="large-6 cell">
                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Long or short term strategic partnership</label>
                                    <br>
                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Training</label>
                                    <br>
                                    <input id="checkbox1" type="checkbox"><label for="checkbox1" onClick="addInput('dynamicInput');">Others (please specify)</label>
                                    <br>
                                    <!--                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                                                                        <br>
                                                                        <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                                                                        <br>-->
                                </div>
                                <div class="">
                                    <!--                                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                                                                        <br>
                                                                        <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                                                                        <br>
                                                                        <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                                                                        <br>
                                                                        <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                                                                        <br>
                                                                        <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>-->
                                    <br>
                                </div>
                            </div>
                        </div>
                        <fieldset
                            <label>PROVIDE A 200-WORD DESCRIPTION OF YOUR PLEDGE* </label>
                            <textarea rows="4" name="summary"></textarea>
                        </fieldset>
                        <button type="submit" class="button success expanded" style="background-color: #F26522; color: #FFFFFF;">Submit</button>
                    </form>
                </div>
            </div>
            <br>
        </div>
        <!--footer-->
        <footer class="animated fadeIn">
            <div class="container">
                <p style="text-align: center;"><span class="si">For more information on the<em> Grand Challenges Africa E-Marketplace</em> or for general inquiries, </span><a href="mailto:GCAfrica@aasciences.ac.ke" style="font-size: 17px;"> <i class="fa fa-envelope-o" aria-hidden="true"></i>Contact now</a></p>
                <div class="clearfix"></div>
                <div class="footer-menu">
                    <div class="large-12 cell">
                        <ul>
                            <li><a data-scroll href="#about"><i class="fa fa-info fa-lg" aria-hidden="true"></i> ABOUT</a></li>
                            <li><a href="projects.jsp"><i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i> FEATURED PROJECTS</a></li>
                            <!--<li><a href="register.jsp"><i class="fa fa fa-key fa-lg" aria-hidden="true"></i> SIGN UP</a></li>-->
                            <li><a href=""><i class="fa fa-users fa-lg" aria-hidden="true"></i> PARTNERS</a></li>
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