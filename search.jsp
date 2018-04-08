<%@ include file="uheader.jsp"%>

			<div class="agile-blog-grids">
				<div class="col-md-8 agile-blog-grid-left">


<%@ page  import="java.sql.*" import="java.util.Vector" import="databaseconnection.*"  import="GCTC.*" %>
    <body style='background-image:url("yoyo.jpeg");background-repeat: no-repeat;background-position:center;background-size:cover;background-attachment: fixed;'>

<br/><br/><font size="" color=""><h2><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:45px;font-weight:bolder;font-family: Cooper Black'>Welcome <span style='color:#337ab7;'><%=session.getAttribute("name")%></span></div></h2></font>
<%
String ip=GetMyIPAddress.main();
String loc="";
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
Statement st2 = con1.createStatement();
ResultSet rs=st1.executeQuery("select * from location where email='"+session.getAttribute("email")+"' and ip='"+ip+"' ");
if(rs.next()){
loc=rs.getString(3);
session.setAttribute("loc", loc);
}else{
%>

<script>
    var txt;
    var dip = prompt("Found New Location, Please Enter Location Name:", "");
    if (dip == null || dip == "") {
window.location="search.jsp";

	} else {
window.location="locstore.jsp?id="+dip;
  }
</script>

<%
}

Vector<String> v=CalendarDate.main();
%>


<div class="comtainer">
	<div class="row">
	<div class="col-sm-12 col-sm-offset-3" style="margin-top: 10%;">
            <div id="imaginary_container">               
              <br><br><br>
              <img src="images/bing.png"><br><br><br><br>
              <form method="post" action="search1.jsp">
                <div class="input-group stylish-input-group">
                   
                   <input name="search" type="text" class="form-control"  placeholder="Enter your text.." style='box-shadow:5px 5px 5px grey;margin-top:0px;padding: 7px;font-size: 18px;border-radius:3px'>  
                    

                    <span class="input-group-addon" style="
   background: #337ab7;
    color: white;
    height: 37px;
    box-shadow: 2px;
    box-shadow: 1px 2px 1px grey;">
                    <button type="submit" onclick="search1.jsp" id="submit" value="Search" >Search</button>
                    </span>

                </div>
              </form>
            </div>
        </div>
    </div>
   </div>

<br>
				




<%@ include file="footer.jsp"%>