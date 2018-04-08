<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="CT.*" import="java.io.*" import="java.util.*"%>
<!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
	    <body style='background-image:url("img4.jpg");background-repeat: no-repeat;background-position:right 0px bottom -200px;background-size:cover;'>

<h1>Ranking</h1>

						<div class="" role="alert">
							<strong>Adding the content and context scores those URI's (Page Id's) are same.</strong> 
						</div>

<br><font color="black">

<h4>	
<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String Sql="select * from score  ";
ResultSet rs=st.executeQuery(Sql);
%>
<table width="100%"  cellpadding="10">						
<tr bgcolor="#ff6600"><th>URL ID<th>URL<th>Impr Score<th>Context Score
<%
while(rs.next())
{	
		
	%>

	<tr><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString(3)%><td><%=rs.getString(4)%>
	
	<%

}


}catch(Exception e){
System.out.println("Sec update exception: "+e);
}

%>
</table>
<br><br>
<div class="opinion">

<form method="post" action="revisitation7.jsp">
<h3><input type="submit" Value="Frequency Calculation"></h2>
</form>
</div><br><br>
<%@ include file="footer.jsp"%>
