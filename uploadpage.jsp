<!DOCTYPE html>
<html>
    <head>
        <title>Upload Vehicle Photo</title>
        <link rel="stylesheet" href="uploadpage.css">
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
                <form action="upload.jsp" method="post">

                    <section class="c">
                        <h3>VEHICLE REGISTRATION NUMBER DETECTION PORTAL</h3>
                        <div class="login-container">
                            <p>Upload Vehicle Photo to Vehicle Registration Number Detection Portal!!!</p>
                        </div>
                    </section>
                    
                    <div class="input-container image">
                        <label for="vaild image">Upload Vehicle Photo</label>
                        <input type="file" name="fileToUpload" id="fileToUpload">
                    </div>   
                    
                    <input type="submit" value="Upload Image" class="upload-btn"> 
                                      
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