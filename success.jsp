<!DOCTYPE html>
<html>
    <head>
        <title>Upload Vehicle Photo</title>
        <link rel="stylesheet" href="success.css">
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
        
    	<div class="split-screen">
            <div class="left">
                <div class="video-wrapper">
                    <video class="vid" autoplay loop muted>
                        <source src="Vehicle Registration Number Detection.mp4" type="video/mp4">                            
                      </video>
                </div>
            </div>

            <div class="right">
                <form action="detect.jsp" method="post">

                    <section class="c">
                        <h1>VEHICLE REGISTRATION NUMBER DETECTION PORTAL</h1>
                        <p>Successfully Uploaded the Image Click below to display the Vehicle Image and Detected Vehicle Registration Number</p>
                    </section>
                    
                    <input type="submit" value="Detect Registration Number" class="upload-btn"> 
                                      
                </form>
            </div>
        </div>

    	<footer>
    		<div class="footer-content">
    			<p>Copyright © 2023 Developed by Shriram Sivanandhan</p>
    		</div>
    	</footer>
        
    </body>
</html>