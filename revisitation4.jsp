<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="GCTC.*" import="java.io.*" import="java.util.Vector"%>
<%
String 	content=(String)session.getAttribute("content");
%>   	    <body style='background-image:url("img4.jpg");background-repeat: no-repeat;background-position:right 0px bottom -200px;background-size:cover;'>

<!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
<h1>Impression Score Caluculation</h1>

						<div class="alert " role="alert">
							<strong>Impression Score= {(Time length+TFIDF)/2}</strong> 
						</div>



<br>
<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
st2.executeUpdate("delete from score");
String Sql="select * from context where  seconds>30 and user_='"+session.getAttribute("email")+"'  ";
String[] words=content.split("\\s+");
for(String w: words){
Sql=Sql+" and data_ like  '%"+w+"%' ";
}
System.out.println(Sql);
ResultSet rs=st.executeQuery(Sql);
%>
<font color="black">

<h4>

<table width="100%"  cellpadding="10">						
<tr  bgcolor="#ff6600"><th>URL ID<th>URL<th>Ratio of the time length<th>TF-IDF Score<th>Impression Score
<%
int count=0;
String temp="";
while(rs.next())
{%>
	<tr><td><%=rs.getString(1)%><td><%=rs.getString(2)%>

	<td><%=(rs.getDouble("seconds")/500)%>
		<%
	 words=content.split("\\s+");
		for(String ex:words)
		{
			count=count+CountWords.main(rs.getString("data_"),ex);
		}
//		out.println(count);
		%>

<%temp=rs.getString("data_");
	String[] tot=temp.split("\\s+");
//	out.println(tot.length);
	%>

	<td><%
	double d0=count;
	
	double d00=tot.length;
	double d1=(d0/d00);
	//out.println("d1="+d1);
	double d2=(Double)session.getAttribute("toturl");
	//	out.println("d2="+d2);
	double d3=(Integer)session.getAttribute("matched");
	//	out.println("d3="+d3);
	double d4=Math.log(d2/d3);
	//	out.println("d4="+d4);


	d4=d4*d1;
	out.println(d4);	
%>
<td><%

	double len=(rs.getDouble("seconds")/500);
	double d5=(len+d4)/2;
	out.println(d5);	
	
	st2.executeUpdate("insert into score values('"+rs.getString(1)+"','"+rs.getString(2)+"','"+d5+"','0.0','0.0')");
}


}catch(Exception e){
System.out.println("Sec update exception: "+e);
}

%>
</table>
<br><br>
<div class="opinion">

<form method="post" action="revisitation5.jsp">
<h3><input type="submit" Value="Context Keywords"></h2>
</form>
</div><br><br>
<%@ include file="footer.jsp"%>
