<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

  <body>
    <h1>당신의 키와 몸무게 BMI는</h1>
    <%
    request.setCharacterEncoding("utf-8"); //post의 한글처리방식
    response.setCharacterEncoding("utf-8");
    //내장객체.메소드()
    //request : 요청을 처리하는 객체

    String irum = request.getParameter("irum"); //홍길동
    String ki = request.getParameter("ki"); //"180"
    String mom = request.getParameter("mom"); //"78"

    double dKi = Double.parseDouble(ki); //"180"  --> 180
    double dMom = Double.parseDouble(mom); //"78" --> 78
    double mKi = dKi/100.0; //100cm
    double bmi=dMom/Math.pow(mKi,2);  //75kg

    String result=null;

    if(bmi>=30.0)
    {
      result="비만";
    }
    else if(bmi>=25.0)
    {
      result="과체중";
    }
    else if(bmi>=20.0)
    {
      result="보통";
    }
    else
    {
      result="저체중";
    }

    //스크립트 기반 태그 : 5개
    //스크립트릿(scriptlet)

    %>
    <p>
    이름 : <%=irum%><br />
    키 : <%=dKi%><br />
    몸무게 : <%=dMom%><br /><!--(expression)-->
    BMI : bmi결과 <%=" 당신은 "+result+" 입니다!!!"%>
  </p>

  </body>
</html>
