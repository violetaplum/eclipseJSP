<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
  body
  {
    background: #c166a1;
    align:center;
  }
  </style>
</head>
<body>
서버버전은 <%=application.getServerInfo()%>
서블릿 버전은 <br />
주버전은 <%=application.getMajorVersion()%>
부버전은 <%= application.getMinorVersion()%>
JSP버전은 <%=JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion()%>
</body>
</html>
