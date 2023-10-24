<!DOCTYPE html>

<html>

<head>
	<title>Vehicle Registration Number Detection Portal</title>
	<link rel="stylesheet" href="optionspage.css">	
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

    <div class="screen">
        <h1 style="text-align: center;">VEHICLE REGISTRATION NUMBER DETECTION PORTAL</h1>
            
        <ul class="buttons" style="text-align: center;">
          	<li><a href="uploadpage.jsp">Upload Vehicle Photo</a></li>
            <li><a href="detected.jsp">View previously uploaded Vehicle Registration Number</a></li>
        </ul>
    </div>

    <footer>
        <div class="footer-content">
            <p>Copyright © 2023 Developed by Shriram Sivanandhan</p>
        </div>
    </footer>
    
</body>
</html>