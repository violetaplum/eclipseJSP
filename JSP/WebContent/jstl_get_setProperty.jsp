<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- Sawon sa1 = new Sawon(); --%>
<%-- Sawon sawon1 = new Sawon(); --%>
<%-- Sawon sawon2 = new Sawon(); --%>

<%-- <jsp:useBean ...    :  상단의 방법 대신 하단의 객체생성 tag로 대체할 수 있다 --%>

<jsp:useBean id="sawon1" class="sawonpkg.Sawon"></jsp:useBean>
<jsp:useBean id="sawon2" class="sawonpkg.Sawon"></jsp:useBean>
<%-- 객체명은 id="string" 으로 작성한다 --%>
<%-- class는 java 파일의 객체경로 --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
  body
  {
    background: #c166a1;

  }
  </style>

</head>
<body>
<h2>
  <pre>

자바스타일 출력
<%=request.getParameter("name")%>
<%=request.getParameter("age")%>

EL스타일 출력
${param.name}
${param.age}


    <jsp:setProperty name="sawon1" property="name" ></jsp:setProperty>
    <%-- value="${param.name}" 생략해도 된다--%>

    <%-- setName()역할--%>
    <%-- sawon1.getAge(); --%>
    <%-- 주의#####
    넘어오는 것이 null뿐일때
    sawon1.setName(request.getParameter("name"))이 자동으로 수행되는것 --%>
    <jsp:setProperty name="sawon1" property="age" ></jsp:setProperty>
    <%-- value="${param.age}" 생략해도 된다--%>

    <%-- setAge()역할 --%>

jsp:setProperty *로 지정,출력 Test
    <jsp:setProperty name="sawon1" property="*"></jsp:setProperty>
<%--     <jsp:getProperty name="sawon1" property="*"></jsp:getProperty> 은 안됨!!!--%>


jsp:getProperty 출력
    <jsp:getProperty name="sawon1" property="name"></jsp:getProperty>
결과 : set은 *가능하지만, get은 불가.. 하나하나 다 지정해줘야함
    <%-- 상단의 id를 getter에서는 name으로 가져와 사용한다 --%>
    <%-- property 는 필드명 --%>
    <%-- jsp:getProperty 는 출력도 됨!!!! --%>

    <%-- java 의 getter와 같음 --%>
    <%-- action tag, name 은 useBean의 id를 의미
    객체.메소드() sawon1.getName(); --%>
jsp:getProperty 출력
    <jsp:getProperty name="sawon1" property="age"></jsp:getProperty>






</pre>
</h2>
</body>
</html>
