<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="java.io.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<style>
body
{
background: #6762fc;
}
</style>
<%
    request.setCharacterEncoding("UTF-8");
    int maxSize = 10*1024*1024;
    String savePath = "./filebox/";
    String format = "UTF-8";
    String uploadFile="";
    int read = 0;
    byte[] buf = new byte[1024];

        MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format, new DefaultFileRenamePolicy());
        out.print("hello?");
        String title = multi.getParameter("title");
        uploadFile = multi.getFilesystemName("uploadFile");
        File file = new File(savePath + uploadFile);


%>
<script>
    alert("제출 완료");
</script>
