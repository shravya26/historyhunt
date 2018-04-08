<%@ include file="uheader.jsp"%>

			<div class="agile-blog-grids">
				<div class="col-md-8 agile-blog-grid-left">


<%@ page  import="java.sql.*" import="java.util.Vector" import="databaseconnection.*"  import="GCTC.*" %>

<font size="" color=""><h2>Welcome <%=session.getAttribute("name")%></h2></font>
<%
try{
String ip=GetMyIPAddress.main();
catch(Exception e1){
	out.println("Error, check INternet Connection.")
}
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


<div class="col-sm-6 col-sm-offset-3" style="margin-top: 10%;">
            <div id="imaginary_container">               
              <br><br><br>
              <CENTER><img src="images/bing.png"></CENTER><br><br><br><br>
              <form method="post" action="search1.jsp">
                <div class="input-group stylish-input-group">
                   <input name="search_txt" type="text" class="form-control"  placeholder="Enter your text.." >
                    

                    <span class="input-group-addon">
                    <button type="submit" onclick="search.jsp" id="submit" value="Search">Search</button>
                    </span>

                </div>
              </form>
            </div>
        </div>
</div></div>
				<div class="col-md-4 agile-blog-grid-right">
					<div class="categories">
						<h3>Details</h3>
						<ul>
							<li><a href="#">Location: <%=loc%></a></li>
							<li><a href="#">IP Address: <%=ip%></a></li>
							<li><a href="#">Year: <%=v.get(0)%></a></li>
							<li><a href="#">Month: <%=v.get(1)%></a></li>
							<li><a href="#"><%=v.get(2)%></a></li>
							<li><a href="#">Date: <%=v.get(3)%></a></li>
							
						</ul>
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