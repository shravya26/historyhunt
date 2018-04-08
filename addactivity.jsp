
<!doctype html>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="GCTC.*"%>


<%@ include file="aheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
													   message=request.getParameter("id");
                                                       if(message!=null )
                                                       {
                                                               out.println("<script type=text/javascript> alert('Activity Added !!');</script>");
                                                       }
                                               %>
    <body style='background-image:url("yoyo.jpeg");background-repeat: no-repeat;background-position:center;background-size:cover;background-attachment: fixed;'>

</br></br></br>

<div>                                               
<CENTER><h1><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:45px;font-weight:bolder;font-family: Cooper Black'>Context <span style='color:#337ab7;'>Menu</span> </div></h1></CENTER>

<%
int count=0;
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from child_1");
%>	

<CENTER><h2><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:35px;font-weight:bolder;font-family: Cooper Black'>
	Status
</div></h2></CENTER>
       
<table align="center" cellpadding="5" >
<tr><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b><b>SNo  <td></div><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Status
<%while(rs.next())
	{
		%>
<tr><td><div  style='font-family: Apple Chancery, cursive;'><%=++count%></div>
<td><div  style='font-family: Apple Chancery, cursive'><%=rs.getString(1)%></div>
<%
	}
%>	
<style> 
input {
    border: 1px solid black;
}
</style>
<form method="post" action="addchild_1.jsp" >
<tr><td><td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><input required  type="text" name="level1" placeholder="Enter your status" size="40">  <input required  type="submit" value="   ADD  ">
</form>



</table>





<CENTER>
<h2><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:35px;font-weight:bolder;color:#337ab7;font-family: Cooper Black'>
Activity</div>
</h2>
</CENTER>
<%
count=0;
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_2");

%>	
<table align="center" cellpadding="5">
<tr><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Sno</font><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Status</font><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Activity</font>
</div>

<%
while(rs.next())
	{
		%>
	<tr><td><div  style='font-family: Apple Chancery, cursive'><%=++count%><td><div  style='font-family: Apple Chancery, cursive'><%=rs.getString(1)%><td><div  style='font-family: Apple Chancery, cursive'><%=rs.getString(2)%>

<%
	}
%>	
</table>
	



<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_1");

%>	
<form method="post" action="addchild_2.jsp">
           
<table align="center" cellpadding="5">
<tr><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Select Status</font>
<tr><td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><select name="level1">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>

<%
	}
%>	

</select><br>
	
<tr><td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><input required  type="text" name="level2"  placeholder="Enter activity" size="30">  <input type="submit" value="   ADD  ">

</form>
</table>

<!-- **********************************************************88 -->



<CENTER>
<h2><div  style='text-shadow:5px 5px 10px grey;padding:5px 10px;font-size:35px;font-weight:bolder;font-family: Cooper Black'>Application
</div></h2>
</CENTER>

<%
count=0;
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_3");

%>	
<h3>
<table align="center" cellpadding="5">
<tr><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Sno<td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Status
 </font><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Activity</font><td><h3><div  style='font-family: Apple Chancery, cursive'><font size="" color="#000"><b>Application</font>

<%
while(rs.next())
	{
		%>
	<tr><td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><%=++count%>
	<td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><%=rs.getString(1)%>
	<td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><%=rs.getString(2)%>
	<td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><%=rs.getString(3)%>

<%
	}
%>	
</table>

<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from child_2");

%>	
<form method="post" action="addchild_3.jsp">
           
<table align="center" cellpadding="5">
<tr><td><h3><div  style='font-family: Apple Chancery, cursive'><font size=	"" color="#000"><b>Select Activity</font>
<tr><td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><select name="level2">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>,<%=rs.getString(2)%>"><%=rs.getString(2)%>

<%
	}
%>	

</select><br>
	
<tr><td><div  style='font-family: Apple Chancery, cursive;font-size:14px'><input type="text" name="level3" size="25" placeholder="Enter Application">  <input type="submit" value="   ADD  ">
<td><td>
</form>
</table>

</div>





<%@ include file="footer.jsp"%>
</body>
</html>