<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="CT.*" import="java.io.*" import="java.util.*"%>
	    <body style='background-image:url("img4.jpg");background-repeat: no-repeat;background-position:right 0px bottom -200px;background-size:cover;'>

<!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
<h1>Ranking</h1>

						<div class="" role="alert">
							<strong>Rank(w) = (dRank * cRank)+Freq </strong> 
						</div>

<font color="black">

<h4>
<%
String freq=(String)session.getAttribute("freq");
String result="";
float freqsc=0.0f;

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st3=con.createStatement();
String Sql="select uid, uri,sum(impr),sum(context) ,count(*) from score group by uri   ";
ResultSet rs=st.executeQuery(Sql);
st3.executeUpdate("delete from score ");	

%><br>
<table width="100%" border cellpadding="10">						
<tr  bgcolor="#ff6600"> <th>URL ID<th>URL<th>dRank<th>cRank<th>Freq<th>Rank
<%
while(rs.next())
{	
		
		
	%>

	<tr><td> <%=rs.getString(1)%>
	<td><%=rs.getString(2)%><td><%=rs.getFloat(3)%><td><%=rs.getFloat(4)%><td>
	<%
	if(rs.getInt(5)<=3)
		result="Low";
	if(rs.getInt(5)>3&&rs.getInt(5)<11)
		result="Medium";
	if(10<rs.getInt(5))
		result="High";


if(freq.equals("non")){
}else{
if(result.equals(freq)){
	freqsc=rs.getInt(5)*0.1f;
}else{
freqsc=0.0f;
}
}
out.println(freqsc);
	
%><td>	
	<%=(rs.getFloat(3)*rs.getFloat(4))+freqsc%>
	
	<%
st3.executeUpdate("insert into score values ('"+rs.getString(1)+"','"+rs.getString(2)+"','"+rs.getFloat(3)+"','"+rs.getFloat(4)+"','"+((rs.getFloat(3)*rs.getFloat(4))+freqsc)+"')");	

}


}catch(Exception e){
System.out.println("Sec update exception: "+e);
}

%>
</table>
<br><br>
<div class="opinion">

<form method="post" action="revisitation9.jsp">
<h3><input type="submit" Value="Web Ranking"></h2>
</form>
</div><br><br>
<%@ include file="footer.jsp"%>
