<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 60px;
	padding: 0px
}

ul {
	list-style: none;
	text-align: center;
	border-top: 1px solid gray;

	border-bottom: 1px solid gray;
	padding: 10px 0;
	margin:10px 0;	
}

hr{
	margin-top:0px;
}

div.one{
width:1150px;
height:200px;
margin-top:0px;
background-color:pink;
}
</style>
</head>
<body>
<div class="one">
<br><br><br>logo<br><br><br><br><br>
<table width="1150" height="20">
<tr>
<td "textAlign=center" width="230">MENU</td>
<td "textAlign=center" width="230">BEST20</td>
<td "textAlign=center" width="230">FASHION</td>
<td "textAlign=center" width="230">BEAUTY</td>
<td "textAlign=center" width="230">ORDER</td>
</tr>
</table>
</div>
<hr>
<BR><BR><BR>
<div style="float:right;"> <a href="fashion1_admin.jsp">글쓰기</a></div>
<BR><BR><BR>
<form method="post" action="../user/fashionmain.jsp" enctype="multipart/form-data">
<div class = "banner">
<b>DRAMA</b>
<div style="float:right;"> <a href="fashion_admin.jsp">MORE+</a></div>
<ul>
<li><input type="file" name="file"/>
<input type="file" name="file" />
<input type="file" name="file" />
</li>
</ul><bR>
<b>FASHION</b>
<div style="float:right;"> <a href="fashion_admin.jsp">MORE+</a></div>
<ul>
<li><input type="file" name="file"/>
<input type="file" name="file" />
<input type="file" name="file" />
</li>
</ul><BR>
<b>AIRPORT/STREET</b>
<div style="float:right;"> <a href="fashion_admin.jsp">MORE+</a></div>
<ul>
<li><input type="file" name="file"/>
<input type="file" name="file" />
<input type="file" name="file" />
</li>
</ul>
<center>
<input type="submit" value="파일올리기">&nbsp;<input type="reset" value="취소">
</form>
<br><hr>
<em>COPYRIGHT�� PICKWEUP. ALL RIGHTS RESERVED. TEL:010-1234-1567</em>
</center>
<div>
</body>
</html>
