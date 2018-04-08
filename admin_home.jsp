
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

    <body style='background-image:url("yoyo.jpeg");background-repeat: no-repeat;background-position: right 0px bottom -300px;;background-size:cover;'>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <li><a href="admin_home.jsp">Home</a></li>
            <li><a href="addactivity.jsp">Edit Activity</a></li>
            <li><a href="Performance.jsp">Performance</a></li>
            <li><a href="admin.jsp">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav></br></br>
    <div class="container">
    <h2><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:45px;font-weight:bolder;font-family: Cooper Black'>Welcome <span style='color:#337ab7;'>Admin</span> </div></h2>
    <br><br><br><br><br><br><br>
    <CENTER><button onclick="window.location='addactivity.jsp'" class="btn btn-lg btn-primary btn-block" style="background-color:black;width: 30%;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19)">Edit Activities</button></CENTER>
    <br>
    
    <CENTER><button class="btn btn-lg btn-primary btn-block" onclick="window.location='Performance.jsp'" style="width: 30%;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19)">Test Performance</button></CENTER>
  </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.js"></script>
    
  </body>
</html>
