<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form>
<c:if test="${empty passwd}">
�ùٸ� ���̵�� �̸����� �Է����ּ���.
</c:if>
<c:if test="${!empty passwd}">
��� ��ȣ : ${passwd}
</c:if>
<br>
<input type="button" value="����" onclick="history.go(-1)">
<input type="button" value="�ݱ�" onclick="self.close()">
</form>
</body>
</html>