<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="kong.unirest.HttpResponse"%>
<%@page import="kong.unirest.Unirest"%>	
<%@page import="kong.unirest.json.JSONArray"%>	
<%@page import="kong.unirest.json.JSONObject"%>	
<%@page import="java.time.*"%>	
<%@page import="java.time.format.DateTimeFormatter"%>	
	<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);  
  if(session.getAttribute("email")==null)
      response.sendRedirect("index.jsp");  
  %> 
<%
String token = token;

String myloc = request.getParameter("fileToUpload");
File image = new File(myloc);
FileInputStream in = new FileInputStream(image);
Connection con = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
        
    
	HttpResponse<String> res = Unirest.post("https://api.platerecognizer.com/v1/plate-reader/")
			.header("Authorization", "Token "+ token)
	        .field("upload", image)
	        .asString();

	String s = res.getBody().toString();
	 
	JSONObject jsonResult = new JSONObject(s);
    JSONArray results = jsonResult.getJSONArray("results");
    JSONObject val = results.getJSONObject(0);
    String plateData = val.getString("plate");
        
    con = DriverManager.getConnection(db_url, db_username, db_password);
    PreparedStatement pst = con.prepareStatement("INSERT into vehicle_registration_details VALUES (?, ?, ?)");
        
    ZoneId id = ZoneId.of("Asia/Kolkata");  
    LocalDateTime current = LocalDateTime.now(id);                
    DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd-HH:mm:ss");
    String file_name = current.format(dateTimeFormatter);       
    file_name = file_name + "_" + myloc;
       
    pst.setBlob(1, in);
    pst.setString(2, plateData);
    pst.setString(3, file_name);
    pst.executeUpdate();
    response.sendRedirect("success.jsp");
}
catch(Exception e){
    System.out.println(e);
}

%>