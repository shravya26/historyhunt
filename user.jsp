<%
session.invalidate();%>

  <%
    String mm=request.getParameter("id");
  if(mm!=null && mm.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>
<br>
<%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<script type=text/javascript>alert('LOGIN FAIL!! '); </script>");
                                                       }
%>
<br>
<br>											   
<!doctype html>
<html lang="en" style="margin-top:-60px;">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>User Login</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body style='background-image:url("yoyo.jpeg");background-repeat: no-repeat;background-position:center;background-size:cover;'>
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
  <div class="container">
    <form method="post" action="ulogin.jsp" class="form-signin">
       <center><div  style='text-shadow:2px 2px 6px grey;margin-top:30%;padding:5px 10px;font-size:35px;font-weight:bolder;font-family: Cooper Black'>User <span style='color:#337ab7;'>Login</span> </div></center>     
          <label for="inputEmail" class="sr-only">Email</label>
          <input type="text" name="uid" id="inputEmail" class="form-control" placeholder="Email address" onfocus="this.value = '';"  required="autofocus" style='box-shadow:5px 5px 5px grey;margin-top:20px;padding: 7px;font-size: 18px;border-radius:3px;'>
          <label for="inputPassword" class="sr-only">Password</label>
          <input type="password" name="pwd" placeholder="Password" id="inputPassword" class="form-control" onfocus="this.value = '';"  required="" style='box-shadow:5px 5px 5px grey;margin-top:20px;padding: 7px;font-size: 18px;border-radius:3px;' >
          
		  <br/><button class="btn btn-lg btn-primary btn-block" style="margin-top:10%width: 100%;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);"type="submit">Log In</button>
    </form>
    </div> <!-- /container -->
  </body>
</html>
