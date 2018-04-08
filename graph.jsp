<%@ include file="aheader.jsp"%>


<%@ page import="databaseconnection.*" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>

<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>
<html>
<body style='background-image:url("yoyo.jpeg");background-repeat: no-repeat;background-size:cover;background-attachment: fixed;'>
<br><br><br><br>

<%
String query="SELECT * from graph";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/revisitation", "com.mysql.jdbc.Driver","root","root");

dataset.executeQuery( query);

JFreeChart chart = ChartFactory .createBarChart3D("Evaluation Graph", "", "",dataset, PlotOrientation.VERTICAL, true, true, true);
//E:\                
ChartUtilities.saveChartAsJPEG(new File("D://Apache Software Foundation//Tomcat 8.0//webapps//WebSearch//images//graph.jpg"), chart, 800, 400);
%>

<center><img src="images/graph.jpg" width="800" height="450" border="0" alt=""></center>

<br><br><br>
</body></html>
<%@ include file="footer.jsp"%>
