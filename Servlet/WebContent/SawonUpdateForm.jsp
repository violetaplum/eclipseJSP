<%@page import="telinfodao.TelInfoDAO"%>
<%@page import="telinfovo.TelInfoVO" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

//TelInfoDAO tidao = new TelInfoDAO(); //패키지 이름부터 class까지 import 경로 잡아줘야함 //new 하는순간 메모리에 올라간다!!!><><><><
ArrayList<TelInfoVO> tiArray = new TelInfoDAO().getAllInfo(); //일단 전체 다나와
String name = request.getParameter("name");
session.setAttribute("name", name);
TelInfoVO tv = new TelInfoDAO().search_nametel(name);
%>
    <style>
*
{
  background: #c166a1;
}
    </style>

</head>
<body>
<h2>사원 전체 명단</h2>
<!-- DAO를 전달할때 객체를 new하여 값을 가져오는것으로 인자전달이 이루어질것!!! -->
<form action="sawonUpdateFinal.jsp" method="get">
<table border="2px">
  <tr>
    <td colspan=4 align="center">
      수정할 이름 선택
    </td>
  </tr>
  <tr>
    <td>사번</td><td>이름</td><td>전화번호</td><td>입사일</td>
  </tr>

      <tr>
        <td><%=tv.getId() %></td><td><%=tv.getName()%></td><td><input type="text" name="tel"></td><td><%=tv.getDate() %></td>
      </tr>
 <tr>
   <td colspan=4 align="center">
     <input type="submit" value="수정" />
   </td>
 </tr>

</table>
<%--     <script>
    function kaja()
    {
    	<%
    	new TelInfoDAO().update_nametel(tel,name);
    	out.print("kaja");
    	%>
    }
    </script> --%>
<table border=0>
  <tr>
    <td>
      <a href="SawonInsertForm.jsp">[입력]</a>
    </td>
    <td>
      <a href="SawonAllforDelete.jsp">[삭제]</a>
    </td>
    <td>
      <a href="sawonAllView.jsp">[모두보기]</a>
    </td>
  </tr>
</table>
</form>
</body>
</html>
