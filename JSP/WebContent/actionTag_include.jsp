<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>
<%--
Action Tag

- 자바형식을 안보이게
- jsp를 실행하는 중간에 변화가 필요할경우 미리 준비한 내용을 처리하기 위한것


Standard Action Tag(표준액션)

* forward <jsp:forward>
* include <jsp:include>
* useBean <jsp:useBean>자바빈
    setProperty <jsp:setProperty>
    getProperty <jsp:getProperty>



Custom Tag(커스텀) : 개발자가 작성
   taglib를 사용하여 사용할 class를 미리 지시한다
   JSTL은 custom tag이나 표준으로 선정됨


action tag 문법

* 기본적으로 xml규칙을 따른다
  eXtensible Markup Language (html의 확장판)
    --여는태그, 닫는 태그가 있다

<book>
  <author>손자</author>
  <title>손자병법</title>
  <author>손자</author>
  <title>손자병법2</title>
</book>

-천송, 환경설정(구조화, 체계적)
* <jsp:로 시작 하여 />또는 </jsp:로 끝>

* 대소문자를 구분한다

 --%>

<style>
*
{
  background: #c166a1;
}
</style>

<title>Include</title>
  </head>
  <body>
<pre>
<h2>
include directive : 내용을 그대로 include
include action tag : html, jsp등의 처리결과를 include

<%-- <%@ include file="100_includesub.jsp" %> --%>
<%-- 지시어는 100_includesub.jsp의 내용을 그대로 그 자리에 포함시킨다 --%>
<%-- 하지만 하단의 action tag는 jsp파일이 처리된 결과를 넣어준다 --%>

</h2>
</pre>
<jsp:include page="100_includesub.jsp"/>
<%-- 저렇게 하면 getParameter를 사용할 수 잇게될까? --%>
  </body>
</html>
