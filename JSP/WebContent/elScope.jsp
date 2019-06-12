<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>ElScope</title>

  <head>

  </head>
  <body>
<%

  pageContext.setAttribute("page","pagelove");
  request.setAttribute("req","reqlove");
  session.setAttribute("ses","seslove");
  application.setAttribute("app","applove");

/*   out.println((String)pageContext.getAttribute("page"));
  out.println((String)request.getAttribute("req"));
  out.println((String)session.getAttribute("ses"));
  out.println((String)application.getAttribute("app"));  */

%>
<pre>

${pageScope.name}

${sessionScope.name}

${requestScope.name}

${applicationScope.name}
<%-- null이면 출력이 안되므로 pageContext, session, request, application의 존재 여부에 따라 출력이 될수도 안될수도 있음 --%>

</pre>

  </body>
</html>
