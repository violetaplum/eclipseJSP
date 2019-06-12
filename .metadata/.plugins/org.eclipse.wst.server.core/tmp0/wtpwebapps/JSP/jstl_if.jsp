<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
  <pre>
<form action="jstl_if2.jsp">
  <h2>
  <label for="hobby">취미는</label>

  <select name="chimi">

    <option value="tennis">
      tennis
    </option>
    <option value="soccer">
      soccer
    </option>
    <option value="golf">
      golf
    </option>
  </select>


  <input type="submit" value="GoGo!" />
  </h2>
</form>
</pre>
</body>
</html>
