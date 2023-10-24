<!DOCTYPE html>
<html>
    <head>
        <title>Upload Vehicle Photo</title>
        <link rel="stylesheet" href="detect.css">
    </head>
    <body>
    <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);  
  if(session.getAttribute("email")==null)
      response.sendRedirect("index.jsp");  
  %> 
    	<header>
            <div class="navigation">
                <nav>
                    <a href="optionspage.jsp"><img class="imageLogo" src="logo.png"></a>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </nav>
            </div> 
        </header>   	
    	<hr>
        
            <center><h3>VEHICLE REGISTRATION NUMBER DETECTION PORTAL</h3></center>
                    
                    <%@page import="java.sql.*"%>
					<%@page import="java.io.*"%>
                    <%
                    Connection con = null;
                    Class.forName("com.mysql.jdbc.Driver");
                	ResultSet resultSet = null;

                	con = DriverManager.getConnection(db_url, db_username, db_password);
                	PreparedStatement pst = con.prepareStatement("select * from vehicle_registration.vehicle_registration_details ORDER BY vehicle_image_filename DESC LIMIT 1");

                	resultSet = pst.executeQuery();
                    %>
                    <TABLE cellspacing="15" cellpadding="50" border="1" style="background-color: #ffffcc; margin-left: 400px"">
					<thead>
					<TR>
					<TH>Vehicle Image File Name</TH>
					<TH>Vehicle Image</TH>
					<TH>Detected Vehicle Registartion Number</TH>
					</TR>
					</thead>
					<%
					while (resultSet.next()) {
					%>					 
					<TR>
					<TD><%=resultSet.getString(3)%></TD>
					<TD><img src="view.jsp" height="300" width="300"></TD>
					<TD><%=resultSet.getString(2)%></TD>
					</TR>
					<% } %>
					</TABLE>
                    

    	<footer>
    		<div class="footer-content">
    			<p>Copyright © 2023 Developed by Shriram Sivanandhan</p>
    		</div>
    	</footer>
        
    </body>
</html>