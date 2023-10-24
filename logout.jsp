<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="logout.css">	
<title>Logout</title>
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
    				<a href="index.jsp"><img class="imageLogo" alt="E-Pass" src="logo.png"></a>
    				<ul>
                		<li><a href="#">About</a></li>
                		<li><a href="#">Contact</a></li>
            		</ul>
        		</nav>
    		</div> 
    	</header>
    	<hr>

	<%
	HttpSession mySession = request.getSession();	
	mySession.invalidate();	
    %>
	 <h1><font color="Red">You are Successfully logged out...</font></h1>

        <a href="index.jsp">Go-Back To Home Page</a>
        
        <footer>
    		<div class="footer-content">
    			<p>Copyright © 2023 Developed by Shriram Sivanandhan</p>
    		</div>
    	</footer>
</body>
</html>