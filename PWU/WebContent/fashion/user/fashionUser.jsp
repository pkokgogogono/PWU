<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<style type="text/css">
div{border:solid 1px;}
div#wrapper{
width:10px;
height:10px;
border:1px;}
div.one{
width:250px;
height:250px;
margin-left:40px;
margin-top:40px;
float:left;
background-color:pink;
}

div.two{
width:200px;
height:200px;
margin-left:30px;
margin-top:30px;
float:left;
background-color:pink;
}
ul {
	list-style: none;
	text-align: center;
	border-top: 1px solid gray;
	border-right: 1px solid gray;
	border-left: 1px solid gray;
	border-bottom: 1px solid gray;
	padding: 10px 0;
	margin:10px 0;	
}
</style>
</head>
<body>
<table width="1200" height="1000" border="1">
<tr height="300">
<td><b>&nbsp;&nbsp;Best Item ♥</b>
<br>
<div class="two"></div><div class="two"></div><div class="two"></div>
<div class="two"></div><div class="two"></div>
</td>
</tr>
<tr height="700">
<td><b>&nbsp;&nbsp;Total 70</b>
<div id="wrapper"></div>
<div class="one">
<c:forEach var="select" items="${selectList}" >
${select.num}
${select.title}
${select.p_name}
${select.p_price} 
${select.content}

</c:forEach>
</div>
<div class="one"></div>
<div class="one"></div>
<div class="one"></div>
<br>
<div class="one">&nbsp</div>
<div class="one"></div>
<div class="one"></div>
<div class="one"></div>
<br>
<div class="one">&nbsp</div>
<div class="one"></div>
<div class="one"></div>
<div class="one"></div>
<br>
<div class="one">&nbsp</div>
<div class="one"></div>
<div class="one"></div>
<div class="one"></div>
<br><br>
<center>
<form>
<BR>
<select>
<option value="제목">제목</option>
<option value="내용">내용</option>
<input text="text"/>
<input type="button" value="검색"/> 
</select>
</form>
</center>
</td>
</tr>
<tr height="100">
<td></td>
<tr>
</table>
</body>
</html>