<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %>
<%!
public int getAge(int i){
	   Date today = new Date( );
	   int year = today.getYear();
	   int age = year+1900 - i;
 return age;
 }
 /*
 public int getAge(int i){
	   GregorianCalendar today = new GregorianCalendar ( );
	   int year = today.get ( today.YEAR );
	   int age = year - i;
    return age;
   }*/
%>
<%

    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    int birth_year = Integer.parseInt(request.getParameter("birth_year"));
    int age = getAge(birth_year);
%>
<html>
<head>
<title>���� ���</title>
<meta http-equiv='content-type' content='text/html; charset=utf-8'>
<script language='javascript'>
    function go_page(){
        document.myform.submit();
    }
</script>

</head>

<body>

    <form name='myform' method='post' action='./inputAge3.jsp'>
    	<table width='250' cellpadding='1' cellspacing='1' border='1'>
    		<tr>
        		<td width='100'>
        		    �̸�
    		    </td>

        		<td width='150'> <%=name%>
        		</td>
    		</tr>
    		<tr>
        		<td> ���� </td>
        		<td><%=age%> </td>
    		</tr>
<!--    		<tr>
        		<td>���ݱ��� ��ƿ� ��</td>
        		<td><%=age%> </td>
    		</tr>
    		<tr>
        		<td>DB ���</td>
        		<td><%=age%> </td>
    		</tr>
    		<tr>-->
        		<td colspan='2' align='center'>
        		    <input type='button' value='�Է�ȭ��'

        		         onclick='javascript:go_page()'>
    		    </td>
    		</tr>
    	</table>
    </form>
</body>
</html>
