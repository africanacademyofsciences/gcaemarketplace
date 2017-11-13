<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.text.SimpleDateFormat" errorPage="" %>
<jsp:useBean id="dbConn" scope="request" class="com.gca.db.DBProperties"/>
<%@ include file="function.jsp"%>
<%

		    Connection conn = null;
			conn=dbConn.getConnection();
			
			ResultSet rsOptions = null;
			PreparedStatement psOptions=null;
			
			String sUserID=nullconv(request.getParameter("username"));
			String sPassword=nullconv(request.getParameter("password"));
			String message="User login successfully ";
			String loginYes="";
			
		    String sqlOption="SELECT * FROM registration u where sRegEmail=? and sPassword=?";
      	    psOptions=conn.prepareStatement(sqlOption);
			psOptions.setString(1,sUserID);
			psOptions.setString(2,sPassword);
			rsOptions=psOptions.executeQuery();
			if(rsOptions.next())
			{
			  loginYes="yes";

                          session.setAttribute("username",rsOptions.getString("sName"));
			  response.sendRedirect("menu.jsp");
			}
			else
			{
			  message="No user or password matched" ;
			  response.sendRedirect("login.jsp?error="+message);
			}
			
			
			try{
				 if(psOptions!=null){
					 psOptions.close();
				 }
				 if(rsOptions!=null){
					 rsOptions.close();
				 }
				 
				 if(conn!=null){
				  conn.close();
				 }
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

%>
