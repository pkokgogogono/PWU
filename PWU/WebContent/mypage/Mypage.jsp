<%@ page contentType = "text/html; charset=euc-kr" %>

<html>
<head>
<title>마이페이지</title>
<center><b>즐겨찾기</b>

</head>

<body>
<table width="800px" height="600px" border="1px" bordercolor="black">
<tr>
	<td> 1</td>
	<td> 2</td>
	<td> 3</td>
</tr>
<tr>
	<td> 4</td>
	<td> 5</td>
	<td> 6</td>
</tr>
</table>
<center>
<form name="search" method="POST" action="/mvc_Board/MVC/listSearch.do">
<SELECT name="combo">
    <OPTION value="writer">작성자</OPTION>
    <OPTION value="subject">제목</OPTION>
    <OPTION value="content">내용</OPTION>
</SELECT>
<input type="text" size="40" maxlength="50" name="search">
<input type="submit" size="40" value="검색">
</form>
</center>
</body>
</html>