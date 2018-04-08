<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <title>Web Reuse Home</title>                                               
  

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
	<link href="css/style.css" rel="stylesheet">
   
  </head>
  <body style='background-image:url("yoyo.jpeg");background-repeat: no-repeat;background-position:right 0px bottom -300px;background-size:cover;'>
    <nav class="navbar navbar-inverse">
      <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>Home</a></li>
            <li><a href="admin.jsp"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
            <li><a href="user.jsp"><span class="glyphicon glyphicon-user"></span>User</a></li>
            <li><a href="signup.jsp"><span class="glyphicon glyphicon-log-in"></span>Signup</a></li>
						 <li><a href="aboutus.jsp">About Us</a></li>

           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
	  </nav>
    <div class="container" style="margin-top: 13%">
<html style='border-top:2px solid black;'><head><center><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:45px;font-weight:bolder;font-family: Cooper Black;margin-top:-80px;'>HISTORY <span style='color:#337ab7;margin-right:7px;'>HUNT</span> </div></center></head>

<br><br><br>


    <CENTER><button type="submit" onclick="window.location='user.jsp'" id="submit" value="Search" style="background-color:black;width: 15%;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19)" class="btn btn-lg btn-primary btn-block">User Login</button></CENTER>
    <br>
    <CENTER><button type="submit" onclick="window.location='admin.jsp'" id="submit" value="Search" style="width: 15%;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19)" class="btn btn-lg btn-primary btn-block">Admin Login</button></CENTER>
  </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.js"></script>
    
  </body>
</html>
