<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html>
<html>
<head>
  <%
    int year = Integer.parseInt(request.getParameter("year"));
    int age=(int)(Calendar.getInstance().get(Calendar.YEAR))-year;
    String name=request.getParameter("name");

    //추가조건 : 이름은 필수항목, 생일음수면 "음수 안되.."출력 생일이 2자리면 "4자리로"
    //js로!

if(name.equals("")|| !String.valueOf(name.getClass()).contains("String") || request.getParameter("year").length()!=4)
{
  %>
  <script>

  alert("이름 혹은 생일을 다시 입력해 주세요..");
  setTimeout(function(){
	  window.location.href="./inputAge2.jsp"
  }
	  ,0)
</script>
  <%

}
      //
      // request.setCharacterEncoding("utf-8");
      // response.setCharacterEncoding("utf-8");
      // //인코딩 깨질까봐 넣어주는 부분

  %>
  <%-- <%
    public int getAge(int i)
    {
      GregorianCalendar today = new GregorianCalendar();
      int year = today.get(today.YEAR);
      int age=year-i;
      return age;
    }//그레고리안 달력 사용시

  %> --%>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<style>
body
{
  background: #a9b616;

}

</style>
  </head>
<body>

  이름 :<%=request.getParameter("name")%><br />
  생년 :<%=age%>세<br />


  </body>
</html>
