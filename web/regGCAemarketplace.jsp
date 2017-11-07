<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="dbConn" scope="request" class="com.gca.db.DBProperties"/>
<%
    Connection conn = null;
    conn = dbConn.getConnection();

    PreparedStatement psInsert = null;

    String sFirstName = request.getParameter("sFirstName");
    String sLastName = request.getParameter("sLastName");
    String iCountryID = request.getParameter("iCountryID");
    String iCityID = request.getParameter("iCityID");
    String iLocation = request.getParameter("iLocation");
    String sRegEmail = request.getParameter("sRegEmail");
    String dd = request.getParameter("dd");
    String mm = request.getParameter("mm");
    String yyyy = request.getParameter("yyyy");
    String iDateBirth = yyyy + "-" + mm + "-" + dd;
    String sRegGender = request.getParameter("sRegGender");
    String iUserLevel = request.getParameter("iUserLevel");
    String iUserContact = request.getParameter("iUserContact");
    String iUserType = request.getParameter("iUserType");
    String sUserID = request.getParameter("sUserID");
    String sPassword = request.getParameter("sPassword");
    String sCPassword = request.getParameter("sCPassword");

    String sqlInsertregistration = null;

    try {
        sqlInsertregistration = "insert into registration (sUserID, sRegEmail, sFirstName, sLastName, iDateBirth, sRegGender,iCountryID, iCityID, iLocation, iUserType, iUserLevel, sPassword, iUserContact,dCreatedDate, sStatus)"
                + "values(?, ?, ?, ?, ?, ?, ?, ?, ?, 3, ?, password('" + sPassword + "'), ?, sysdate(),'P')";
        psInsert = conn.prepareStatement(sqlInsertregistration);
        psInsert.setString(1, sUserID);
        psInsert.setString(2, sRegEmail);
        psInsert.setString(3, sFirstName);
        psInsert.setString(4, sLastName);
        psInsert.setString(5, iDateBirth);
        psInsert.setString(6, sRegGender);
        psInsert.setString(7, iCountryID);
        psInsert.setString(8, iCityID);
        psInsert.setString(9, iLocation);
        psInsert.setString(10, iUserLevel);
        psInsert.setString(11, iUserContact);

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