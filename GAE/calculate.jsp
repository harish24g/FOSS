<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.annotation.Resource" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.naming.*,java.sql.*,javax.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<title> Python quiz test scores</title>
</head>
<body>
<%
String message,no,Name,ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10;
int Total=0;
Connection connect;
Class.forName("org.apache.derby.jdbc.ClientDriver");
connect=DriverManager.getConnection("jdbc:derby://localhost:1527/abc","abc","abc");
message="Thank you for participating in online Exam";
  no=request.getParameter("reg");
Name=request.getParameter("name");
ans1=request.getParameter("group1");
ans2=request.getParameter("group2");
ans3=request.getParameter("group3");
ans4=request.getParameter("group4");
ans5=request.getParameter("group5");
ans6=request.getParameter("group6");
ans7=request.getParameter("group7");
ans8=request.getParameter("group8");
ans9=request.getParameter("group9");
ans10=request.getParameter("group10");
if(ans1.equals("True"))
Total+=1;
if(ans2.equals("True"))
Total+=1;
if(ans3.equals("True"))
Total+=1;
if(ans4.equals("True"))
Total+=1;
if(ans5.equals("False"))
Total+=1;
if(ans6.equals("False"))
Total+=1;
if(ans7.equals("False"))
Total+=1;
if(ans8.equals("False"))
Total+=1;
if(ans9.equals("False"))
Total+=1;
if(ans10.equals("True"))
Total+=1;
PreparedStatement st=connect.prepareStatement("INSERT INTO ABC.SUBMIT(REGNO,NAME,MARKS)VALUES("+no+",'"+Name+"',"+Total+")");
st.executeUpdate();
response.setContentType("text/html");
out.println("<html>");
out.println("<head>");
out.println("</head>");
out.println("<body bgcolor=gold>");
out.println("<center>");
out.println("<h1>"+message+"</h1>\n");
out.println("<h3>Yours results stored in our database</h3>");
out.print("<br><br>");
out.println("<b>"+"Participants and their Marks"+"</b>");
out.println("<table border=5>");
PreparedStatement st2=connect.prepareStatement("SELECT * FROM ABC.SUBMIT");
ResultSet rs=st2.executeQuery();
out.println("<th>"+"Register no"+"</th>");
out.println("<th>"+"Name"+"</th>");
out.println("<th>"+"Marks"+"</th>");
while(rs.next())
{
out.println("<tr>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.println("</tr>");
}
out.println("</table>");
if(rs!=null)
rs.close();
if(st!=null)
st.close();
if(connect!=null)
connect.close();
out.println("</center>");
out.println("</body></html>");
Total=0;
%>
</body>
</html>