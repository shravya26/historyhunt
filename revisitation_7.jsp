<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="CT.*" import="java.io.*" import="java.util.*"%>


<h2>Frequency Calculation</h2>

						<div class="" role="alert">
							<strong>Caluculating Frequency Score, (less than 3-Low; Greater than 3-Medium; Greater than 10-High;) Score*0.1;  Adding the content and context scores those URI's (Page Id's) are same.</strong> 
						</div>
<font color="#fff">

<h4>
<%
String freq=(String)session.getAttribute("freq");
String result="";
double freqsc=0.0;
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String Sql="select uid, uri,sum(impr),sum(context), count(*) from score group by uri   ";
ResultSet rs=st.executeQuery(Sql);
%><br>
<table width="100%"  cellpadding="10">						
<tr bgcolor="#ff6600"><th>URL ID<th>URL<th>Frequency
<%
while(rs.next())
{	
		
	%>

	<tr><td> <span class="label-primary"><%=rs.getString(1)%><td><span class="label-info"><%=rs.getString(2)%>
	<td><span class="label-success"><% out.println(rs.getString(5)+"/");
	if(rs.getInt(5)<=3)
		result="Low";
	if(rs.getInt(5)>3&&rs.getInt(5)<11)
		result="Medium";
	if(10<rs.getInt(5))
		result="High";

out.println(result);

if(freq.equals("non")){
}else{
if(result.equals(freq)){
	freqsc=rs.getInt(5)*0.1;
}else{
freqsc=0.0;
}
}

out.println("/ "+freqsc);

		%>

	
	<%

}


}catch(Exception e){
System.out.println("Sec update exception: "+e);
}
response.sendRedirect("revisitation_8.jsp");
%>
</table>
<br><br>
<div class="opinion">

<form method="post" action="revisitation8.jsp">
<h3><input type="submit" Value="Ranking"></h2>
</form>
</div><br><br>
<%@ include file="footer.jsp"%>
