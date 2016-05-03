<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!doctype html>
<html lang="KO">
<%
	
%>
<head>
<title> </title> 
<style>
</style>
</head>
<body>
<center>
<table border="1">
<tr>
<td width="1200">
<form action ="mainProAction.do">
<div id="tit">제목:<input text="text" name="title"></div>
<div style="float:right;"><b>리뷰:256</b></div>
<div id="line01" style=""></div>
<table border = "1">
<tr>
<td width="600">
    <div class="aa" style="background-color:white;"> 
		</div>
</td>
</tr>
<tr>
<td width="600">

상품이름:<input text="text" name="p_name">
<br>
상품가격:<input text="text" name="p_price">
</td>
</tr>
<tr>
상품설명:
<textarea width="1200" height="1000" name="content"></textarea>
</tr>
</table>
<div id="box">
<div id="line02" style=""></div>
<div id="box02">
</div>
</div>
<input type="submit" value="완료"/>
</form>
</td>
</tr>
</table>
<br><br>
</center>
</body>
</html>