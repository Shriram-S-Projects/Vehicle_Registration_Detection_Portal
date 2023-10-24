<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
	
<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);  
  if(session.getAttribute("email")==null)
      response.sendRedirect("index.jsp");  
  %> 
  
<%

Connection con = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	ResultSet resultSet = null;

	con = DriverManager.getConnection(db_url, db_username, db_password);
	PreparedStatement pst = con.prepareStatement("select * from vehicle_registration.vehicle_registration_details ORDER BY vehicle_image_filename DESC LIMIT 1");

	resultSet = pst.executeQuery();

	Blob image = null;

	if (resultSet.next()) {
		image =resultSet.getBlob(1);
		byte[ ] imgData = null ;
		imgData = image.getBytes(1,(int)image.length());
		response.setContentType("image/jpg");
		OutputStream o = response.getOutputStream();
		o.write(imgData);
		o.flush();
		o.close();
		}	
}
catch(Exception e){
    System.out.println(e);
}

%>