<%@ page contentType = "text/html; charset=euc-kr" %>

<html>
<head>
<title>����������</title>
<center><b>���ã��</b>

</head>

<body>
<table width="800px" height="600px" border="1px" bordercolor="black">
<tr>
	<td>
	<a href="Mylist.jsp">
	<img border="0" src="images/man.jpg" title="t" alt="Ƽ"width="200"height="200"></a>
	</td>
	<td>
	<a href="Mylist.jsp">
	<img border="0" src="images/black.png" title="b" alt="����Ƽ"width="200"height="200"></a>
	</td>
	<td>
	<a href="Mylist.jsp">
	<img border="0" src="images/one.jpg" title="o" alt="��"width="200"height="200"></a>
	</td>
</tr>
<tr>
	<td>
	<a href="MyorderList.jsp">
	<img border="0" src="images/pants.jpg" title="p" alt="��"width="200"height="200"></a>
	</td>
	<td>
	<a href="MyorderList.jsp">
	<img border="0" src="images/white.jpg" title="w" alt="��"width="200"height="200"></a>
	</td>
	<td>
	<a href="MyorderList.jsp">
	<img border="0" src="images/jamba.jpg" title="j" alt="��"width="200"height="200"></a>
	</td>
</tr>
</table>
<center>
<form name="search" method="POST" action="/mvc_Board/MVC/listSearch.do">
<SELECT name="combo">
    <OPTION value="writer">�ۼ���</OPTION>
    <OPTION value="subject">����</OPTION>
    <OPTION value="content">����</OPTION>
</SELECT>
<input type="text" size="40" maxlength="50" name="search">
<input type="submit" size="40" value="�˻�">
</form>
</center>
</body>
</html>