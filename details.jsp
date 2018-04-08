<%@ include file="uheader.jsp"%>

			<div class="agile-blog-grids">
				<div class="col-md-8 agile-blog-grid-left">
	    <body style='background-image:url("yoyo.jpeg");background-repeat: no-repeat;background-position:center -250 px;background-size:cover;'>


<%@ page  import="java.sql.*" import="java.util.Vector" import="databaseconnection.*"  import="GCTC.*" %>


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
window.location="u_home.jsp";

	} else {
window.location="locstore.jsp?id="+dip;
  }
</script>

<%
}

Vector<String> v=CalendarDate.main();
%>

				<div class="col-md-4 agile-blog-grid-right">
					<div class="categories">
						<br><br/><br/>
						<br><h3>Session Details</h3>
						<br><br><br><b>
						<ul>
							<li><a href="#">Location: <%=loc%></a></li>
							<li><a href="#">IP Address: <%=ip%></a></li>
							<li><a href="#">Year: <%=v.get(0)%></a></li>
							<li><a href="#">Month: <%=v.get(1)%></a></li>
							<li><a href="#"><%=v.get(2)%></a></li>
							<li><a href="#">Date: <%=v.get(3)%></a></li>
							
						</ul></b>
					</div>
					</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<%@ include file="footer.jsp"%>