<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
background:#c166a1;
    align:center;
}
</style>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String email = request.getParameter("email");

%>

<%
Connection conn = null;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String password = "hr";
PreparedStatement ps1 = null;
ArrayList<String> array = new ArrayList<>();


  Class.forName("oracle.jdbc.driver.OracleDriver");
  conn = DriverManager.getConnection(url,user,password);
  ps1=conn.prepareStatement("select distinct department_name from departments natural join employees");
  
  
  ResultSet rss = ps1.executeQuery();
	while(rss.next())
	{
		array.add(rss.getString("department_name"));
	}
	
	for(int i=0;i<array.size();i++)
	{
		out.println((String)array.get(i));
	}
  

%>


</head>
<body>

</body>
</html>