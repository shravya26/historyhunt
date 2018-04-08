<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>
<%@ page  import="database.mysql.*" %>
<%
String path = request.getRealPath("/"); 
Check.main(path);
%>
<%
                                                       String m=request.getParameter("m");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("dup"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Duplicate Email  !! </blink></font></h3>");
                                                       }
%>
 <form name="reg" action="signup1.jsp" method="get"   name="pwForm" >
					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {
                                                               out.println("<blink><h2>Registration Success ! <br> <font color=orange size=+2>Your User Id:: <font color=#009900>"+id+" </blink></font></font></font></h2><br>");
                                                       }
													   else {%>
												
                                               <%}%>

<!DOCTYPE html>
<html lang="en" style="border-top:2px solid black;">
  <head>
    <meta charset="utf-8">
    <title>Web Reuse Home</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
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
            <li><a href="aboutus_def.jsp">About Us</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.js"></script>
    
  </body>
</html>
<div class="opinion">
       <center><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:35px;font-weight:bolder;font-family: Cooper Black'>New User <span style='color:#337ab7;'>Registration</span> </div></center>     

	<table ALIGN="CENTER"><tr><td>
		<!--strong>First Name</strong><BR>-->
						<div class="opinion">
						<input type="text"  name="name" id = "name" placeholder="First Name"  class="form-control" required size="50"></div>
						<tr><td>
		<!--<strong>Name</strong><BR>-->
						<input type="text"  name="lname" id = "lname" placeholder="Last Name" class="form-control" class="form-control" required size="50">
						<tr><td>
		<!--<strong>Address</strong><br>-->
						<input type="text" name="addr" id = "addr" class="form-control" placeholder="Address" required size="50">
						<tr><td>
		<!--<strong>City</strong><br>-->
						<input type="text" name="city" id = "addr"  class="form-control" placeholder="City" required size="50">
						<tr><td>
		<!--<strong>Zip</strong><br>-->
						<input type="text" 	pattern="[0-9]*" minlength="6" maxlength="6" id="zip" placeholder="Zip Code" class="form-control"  required size="50"  name="zip">
						<tr><td>
		<!--<strong>Country</strong><br>-->
						<input type="text" 	 required size="50" class="form-control" placeholder="Country" name="country">
						<tr><td>
		<!--<strong>Email</strong><br>-->
						<input type="email" name="email" id="email" class="form-control" placeholder="Email address" required size="50">
						<tr><td><br>
		<label>Gender</label>
						<CENTER><input type="radio" name="gen" value="male">Male&nbsp;&nbsp;<input type="radio" name="gen" value="female">Female&nbsp;&nbsp;
						</CENTER><tr><td><br>
		<!--<strong>Contact no</strong><br>-->
						<input type="text" name="tele"  class="form-control" placeholder="Phone No"	pattern="[0-9]*" minlength="10" maxlength="10"   required size="50">
						<tr><td>
		<!--<strong>Password</strong><br>-->
						<input type="password" name="pwd" id="pwd" placeholder="Password" class="form-control" required size="50" > 
						<tr><td><br>
		<CENTER><button class="btn btn-lg btn-primary btn-block" type="submit">Register</button></CENTER>
					<!--'opinion?'-->
			</form>
		</table>
	</div>
			


				
