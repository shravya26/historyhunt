<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="Search.*" import="java.io.*" import="java.util.Vector"%>
		<html>  <head><body style='background-image:url("img4.jpg");background-repeat: no-repeat;background-position:right 0px bottom -200px;background-size:cover;'>

<style>
table, th, td {

}
th, td {
    padding: 15px;
    text-align: left;

}
h1{margin-top:80px;}
</style>
</head>

	    
<h1>Content Extraction and Management Module.</h2>

						<div class="" role="alert">
							<strong>URL's minimum 30 sec access time.</strong> 
						</div>
<br>
<h4><font color="black">
<%
String 	content=request.getParameter("content");
String 	context=request.getParameter("context");

String 	freq=request.getParameter("freq");

session.setAttribute("content",content);
session.setAttribute("context",context);

session.setAttribute("freq",freq);


try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String Sql="select * from context where  seconds>30 and user_='"+session.getAttribute("email")+"'  ";
String[] words=content.split("\\s+");
for(String w: words){
Sql=Sql+" and data_ like  '%"+w+"%' ";
}
System.out.println(Sql);
ResultSet rs=st.executeQuery(Sql);
%>
					<div class="">
<table>						
<%
int count=0;
String temp="";
while(rs.next())
{%>

<tr><td>
<!--span class="label-primary"-->
<%=++count%></span>

</span>&nbsp;
<td>
<!--span class=" label-primary"-->
<%temp=rs.getString("uri");	
								try{out.println(temp.substring(0,50)+"..");
								}catch(Exception e){
								out.println(temp);
								}
								%></span>&nbsp;
								<td>
<!--span class=" label-success"-->
<%=rs.getString("date_")%></span>
<td>
<!--span class=" label-info"-->
<%=rs.getString("seconds")%> Seconds</span>
<%
}
rs=st.executeQuery("select count(*) from context where  seconds>30 and user_='"+session.getAttribute("email")+"'  ");
rs.next();
session.setAttribute("toturl",rs.getDouble(1));

session.setAttribute("matched",count);
}catch(Exception e){
System.out.println("Sec update exception: "+e);
}

%>
</table>
<div class="opinion">

<form method="post" action="revisitation2.jsp">
<input type="submit" Value="Time Ratio"></h2>
</form>
</div>


<br><br>
<CENTER><button class="btn btn-lg btn-primary btn-block" onclick="window.location='revisitation_2.jsp'" style="width: 40%">SKIP TO FINAL</button></CENTER>

<br><br>
<%@ include file="footer.jsp"%>
</body></html>