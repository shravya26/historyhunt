<%@ include file="uheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="Search.*" import="java.io.*" import="java.util.Vector"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Admin Login</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
	
  </head>
	    <body style='background-image:url("img4.jpg");background-repeat: no-repeat;background-position:right 0px bottom -200px;background-size:cover;'>

<h1>Time length. Len(w,d)</h1>

						<div class="" role="alert">
							<strong>Len(w,d)= {Time length / MaxTime length} </strong> 
						</div>
<br>

<%
String 	content=(String)session.getAttribute("content");
System.out.println(content);
try{
Connection con = databasecon.getconnection();
System.out.println(con);
Statement st=con.createStatement();
String Sql="select * from context where  seconds>30 and user_='"+session.getAttribute("email")+"'  ";
System.out.println(Sql);
String[] words=content.split("\\s+");
System.out.println(words);
for(String w: words){
Sql=Sql+" and data_ like  '%"+w+"%' ";
}
System.out.println(Sql);
System.out.println(st);
ResultSet rs=st.executeQuery(Sql);
System.out.println(rs);

%>
<font color="black">

<h4>

<table width="100%" cellpadding="10">						
<tr bgcolor="#ff6600"><th>URL ID<th>URL<th>Visitation time<th>Maximal time<th>Len(w,d)
<%
int count=0;
String temp="";
while(rs.next())
{%>
	<tr><td ><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString("seconds")%> Seconds<td> 500 Seconds<td><%=(rs.getDouble("seconds")/500)%>
<%
}


}catch(Exception e){
System.out.println("Sec update exception: "+e);
}

%>
</table>
<br><br>
<div class="opinion">

<form method="post" action="revisitation3.jsp">
<h3><input type="submit" Value="TF-IDF Caluculation"></h2>
</form>
</div><br><br>
<%@ include file="footer.jsp"%>
</body>