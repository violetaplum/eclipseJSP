<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<head>

<style>
body
{
  background: #8140df;
  color:#eede4d;
}
</style></head>
<%
String food = request.getParameter("food");
String topping = request.getParameter("topping");
//radio button은 name값이 같으면 하나씩만 선택 가능하다
int sum=0;
pageContext.setAttribute("sum",sum);

if(food!=null)
{
  if(food.equals("clear"))
  {
    sum=0;
    pageContext.setAttribute("sum",sum);

  }
  else
  {
    sum+=Integer.parseInt(food);
    pageContext.setAttribute("sum",sum);
  }
}

if(topping!=null)
{
  if(topping.equals("clear"))
  {
    sum=0;
    pageContext.setAttribute("sum",sum);
  }
  else
  {
    sum+=Integer.parseInt(topping);
    pageContext.setAttribute("sum",sum);
  }

}

%>

<form action="./orderFood.jsp" method="get">
  <body>
    <h1>
    <pre>
주문하세요
총 주문금액 : <%=pageContext.getAttribute("sum")%>원

<input type="radio" name="food" value="3000"/>맛있는 카레(3000원)<br />
<input type="radio" name="food" value="4000"/>푸짐한 카레(4000원)<br />
<input type="radio" name="food" value="clear"/>처음으로

토핑선택
<input type="radio" name="topping" value="700"/>새우(700원)<br />
<input type="radio" name="topping" value="500"/>왕감자(500원)<br />
<input type="radio" name="topping" value="clear"/>처음으로<br />
<input type="submit" value="submit" />
</pre>
</h1>
  </body>
  </form>
</html>
