<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<style>
*
{
  background: #dbda52;
  color:#005470;
}
</style>
</html>
<%
String bang="C:/Users/KGITBANK/Desktop/오후반/up/";
//일단 입력후 빨간줄 나오는 곳에 놓고 ctrl+space하면 import 됨(eclipse에서)
MultipartRequest mr1 = new MultipartRequest(request,bang,10*1024*1024,"utf-8",new DefaultFileRenamePolicy());
//new MultipartRequest(요청 들어온것, 폴더위치,한파일 업로드 맥시멈크기,"인코딩타입",(써도되고 안써도되는부분)new DefaultFileRenamePolicy());
//new DefaultFileRenamePolicy() : 만약 file올리는데 이름이 중복되는경우 덮어쓰지않고 이름 다시정해주기
String virum1 = mr1.getParameter("irum1");
String vfilename1 = mr1.getFilesystemName("file1"); //file이름 얻기

if(vfilename1!=null) //file을 올렸다면
{
  out.println("사용자 이름은 : "+virum1+"이시구요");
  out.println("추카추카 "+vfilename1+" 라는 파일 올리기 성공 했네요"); //찍힌다면 file이 올라갔음을 알 수 있다
}
else
{
  out.println("에러..");
}
%>
