<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<form method="post" action="pwdCheck.do?re_num=${review.re_num}">
<table border ="1" bgcolor="pink">
<tr>
<td colspan="2">��й�ȣ�� �Է����ּ���!!</td>
</tr>
<tr>
<td colspan="2"><input type="text" name="pwd"/></td>
</tr>
<tr>
<td><input type="submit" value="Ȯ��"/></td>
<td><input type="button" value="���" onclick="window.open('reviewProAction.do?num=${review.num}')"/></td>
</tr>
</table>
</form>
</center>
</body>
</html>