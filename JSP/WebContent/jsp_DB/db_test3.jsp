<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<table border=2>
  <tr>
    <th>
      아이디
    </th>
    <th>
      이름
    </th>
    <th>
      전화
    </th>
    <th>
      입사일
    </th>
  </tr>
  <%
  Connection conn = null;
  String url = "jdbc:oracle:thin:@localhost:1521:xe";
  String user = "hr";
  String password = "hr";
  PreparedStatement ps1 = null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn = DriverManager.getConnection(url,user,password);
    int search = Integer.parseInt(request.getParameter("id"));
    ps1=conn.prepareStatement("select id from teltable5 where id=?");
    ps1.setInt(1,search);
    ResultSet rs1 = ps1.executeQuery();

  while(rs1.next())
  {
    %>
    <tr>
      <td><%=rs1.getInt("id")%></td>
      <td><%=rs1.getString("name")%></td>
      <td><%=rs1.getString("tel")%></td>
      <td><%=rs1.getDate("d")%></td>
    </tr>
  <%}%>
</table>
