<%@ page contentType = "text/html; charset=euc-kr" %>

<html>
<head>
<title>����������</title>
<center><b>���ã��</b>

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