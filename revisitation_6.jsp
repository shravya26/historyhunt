<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="CT.*" import="java.io.*" import="java.util.*"%>


<h2>Ranking</h2>

						<div class="" role="alert">
							<strong>Adding the content and context scores those URI's (Page Id's) are same.</strong> 
						</div>

<br><font color="#fff">

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

	<tr><td><span class=" label-info"><%=rs.getString(1)%><td><span class="label-primary"><%=rs.getString(2)%><td><span class=" label-info"><%=rs.getString(3)%><td><span class="label-success"><%=rs.getString(4)%>
	
	<%

}


}catch(Exception e){
System.out.println("Sec update exception: "+e);
}
response.sendRedirect("revisitation_7.jsp");

%>
</table>
<br><br>
<div class="opinion">

<form method="post" action="revisitation7.jsp">
<h3><input type="submit" Value="Frequency Calculation"></h2>
</form>
</div><br><br>
<%@ include file="footer.jsp"%>
