<%@ page contentType = "text/html; charset=euc-kr" %>

<html>
<head>
<title>마이페이지</title>
<center><b>즐겨찾기</b>

</head>

<body>
<table width="800px" height="600px" border="1px" bordercolor="black">
<tr>
	<td>
	<a href="Mylist.jsp">
	<img border="0" src="images/man.jpg" title="t" alt="티"width="200"height="200"></a>
	</td>
	<td>
	<a href="Mylist.jsp">
	<img border="0" src="images/black.png" title="b" alt="검은티"width="200"height="200"></a>
	</td>
	<td>
	<a href="Mylist.jsp">
	<img border="0" src="images/one.jpg" title="o" alt="원"width="200"height="200"></a>
	</td>
</tr>
<tr>
	<td>
	<a href="MyorderList.jsp">
	<img border="0" src="images/pants.jpg" title="p" alt="바"width="200"height="200"></a>
	</td>
	<td>
	<a href="MyorderList.jsp">
	<img border="0" src="images/white.jpg" title="w" alt="흰"width="200"height="200"></a>
	</td>
	<td>
	<a href="MyorderList.jsp">
	<img border="0" src="images/jamba.jpg" title="j" alt="잠"width="200"height="200"></a>
	</td>
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