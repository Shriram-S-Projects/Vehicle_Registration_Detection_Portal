<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
    
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
        
    	<div class="split-screen">

            <div class="left">
                <div class="video-wrapper">
                    <video class="vid" autoplay loop muted>
                        <source src="Vehicle Registration Number Detection.mp4" type="video/mp4">                            
                      </video>
                </div>
            </div>

            <div class="right">
                <form action="checklogin.jsp" method="post" onsubmit="return verify();">

                    <section class="c">
                        <h3>VEHICLE REGISTRATION NUMBER DETECTION PORTAL</h3>
                        <div class="login-container">
                            <p>Sign in to Vehicle Registration Number Detection Portal!!!</p>
                        </div>
                    </section>
                    
                    <div class="input-container name">
                        <label for="fname">Full Name</label>
                        <input type="text" id="fname" name="fname">
                    </div>

                    <div class="input-container email">
                        <label for="email">Email</label>
                        <input type="text" id="email" name="email">
                    </div>

                    <div class="input-container password">
                        <label for="password">Password</label>
                        <input id="password" name="password" type="password">
                    </div>
                    
                    <button class="signin-btn" type="submit" onclick="verify()">Sign In</button>

                    <script type="text/javascript">
                    function verify() {
                    	if (document.getElementById("fname").value.trim()== "" || document.getElementById("email").value.trim()== "" || document.getElementById("password").value.trim() == "") {
                    		alert("Please Enter all the Details !!!");
                    		return false;
                        }                    	
					};
                    </script>
                    
                    <section class="c legal">
                        <p>
                            <span class="small">
                                By continuing you accept our terms and conditions
                            </span>
                        </p>
                    </section>     

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