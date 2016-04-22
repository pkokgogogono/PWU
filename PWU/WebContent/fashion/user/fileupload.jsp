<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String cnt= request.getParameter("cnt");
	int icnt=0;
	if(cnt != null){
		icnt = Integer.parseInt(cnt);
	}
	
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	if(writer == null) 
		writer = "";
	if(title == null)
		title = "";
	if(content == null)
		content="";
%>
<form method ="post" action ="fileupload.jsp">
<table border="1" widdth="500">
	<tr>
				<td width="15%" bgcolor="pink" align="center">작성자</td>
				<td>
					<input type="text" name="user" value="<%=writer%>">
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">제목</td>
				<td>
					<input type="text" name="title" value="<%=title%>">
				</td>
			</tr>
			<tr>
				<td width="15%" bgcolor="pink" align="center">내용</td>
				<td width="50%" colspan="3"><textarea name="abstract" cols="40"><%=content%></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" bgcolor="pink" align="center">업로드할 파일 수
					입력 <input type="Text" name="cnt" value="<%=cnt%>" />
					<input type="submit" value=" 확인 "/>
				</td>
			</tr>
</table>
</form>
<form method ="post" action="fileuploadOk.jsp" enctype="multipart/form-data">
	<input type ="hidden" name ="writer" value="<%=writer %>"/>
	<input type ="hidden" name ="title" value="<%=title%>"/>
	<input type ="hidden" name ="content" value="<%=content %>"/>
	
	<table border="1" width="500">
	<%
		for(int i = 0; i< icnt; i++){
			%>
			
		<tr>
			<td>첨부파일<%=i+1 %></td>
			<td><input type="file" name="file<%=i %>"></td>
		</tr>
	<% 
		}
	%>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="전송"/>
		</td>
	</tr>
	</table>
		
		
</form>

</body>
</html>