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
<%
request.setCharacterEncoding("euc-kr");
response.setCharacterEncoding("euc-kr");

//TelInfoDAO tidao = new TelInfoDAO(); //패키지 이름부터 class까지 import 경로 잡아줘야함 //new 하는순간 메모리에 올라간다!!!><><><><
ArrayList<TelInfoVO> tiArray = new TelInfoDAO().getAllInfo(); //일단 전체 다나와

%>

<table border="2px">
  <tr>
    <td colspan=4 align="center">
      수정할 이름 선택
    </td>
  </tr>
  <tr>
    <td>사번</td><td>이름</td><td>전화번호</td><td>입사일</td>
  </tr>
  <%
  for(int i=0;i<tiArray.size();i++)
  {
  %>
  <tr>
    <td><%=tiArray.get(i).getId() %></td><td><%=tiArray.get(i).getName() %></td><td><%=tiArray.get(i).getTel() %></td><td><%=tiArray.get(i).getDate() %></td>
  </tr>
  <%
  }
  %>

</table>
<table border=0>
  <tr>
    <td>
      <a href="SawonInsertForm.jsp">[입력]</a>
    </td>
    <td>
      <a href="SawonAllforUpdate.jsp">[수정]</a>
    </td>
    <td>
      <a href="SawonAllforDelete.jsp">[삭제]</a>
    </td>
  </tr>
</table>
</body>
</html>
