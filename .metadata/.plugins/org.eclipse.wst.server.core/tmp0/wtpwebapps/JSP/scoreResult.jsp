<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>
    <style>
*
{
  background: #c166a1;
}
    </style>

<title>age</title>
  </head>
  <body>
    <form action="scoreResult.jsp" method="get">

<%
String name=request.getParameter("name");
int korean = Integer.parseInt(request.getParameter("korean"));
int english=Integer.parseInt(request.getParameter("english"));

%>
    <pre>
당신의 정보 및 총점

      이름 : ${param.name}
      <%-- 상단에서 getParameter로 가져온 값들을 param.~  의 형식으로 가져올 수 있다 --%>
      <%-- el방식은 자료형은 신경쓰지 않아도 된다 알아서 파싱됨!!! --%>
      국어점수 : ${paramkorean}
      영어점수 : ${param.english}
      총점 : ${param.korean+param.english}

      ${param.name=="kim"}
      <%-- el에서 if문은 이런 방식으로 작성한다 --%>

    </pre>
</form>
  </body>
</html>
