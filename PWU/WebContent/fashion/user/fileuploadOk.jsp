<%@ page import="java.util.Enumeration" %>
<%@ page import ="com.oreilly.servlet.MultipartRequest" %>
<%@ page import ="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<%
	String dir=application.getRealPath("c:/upload");
	MultipartRequest mr = new MultipartRequest(request,dir,1024*1024*5,"utf-8",new DefaultFileRenamePolicy());
	
	String writer= mr.getParameter("writer");
	String title=mr.getParameter("title");
	String content = mr.getParameter("content");
%>

累己磊:<%=writer %><br/>
力格:<%=title %><br>
郴侩:<%=content %><br>

<%
Enumeration<String> em = mr.getFileNames();
while(em.hasMoreElements()){
	String fileName = em.nextElement();
	String orgfilename = mr.getOriginalFileName(fileName);
	String savefileString = mr.getFilesystemName(fileName);
%>

	傈价等 颇老疙:<%=orgfilename %><br>
	历厘等 颇老疙:<%=savefileString %><br>
<% 
}
%>
</body>
</html>