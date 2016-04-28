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
올바른 아이디와 이메일을 입력해주세요.
</c:if>
<c:if test="${!empty passwd}">
비밀 번호 : ${passwd}
</c:if>
<br>
<input type="button" value="이전" onclick="history.go(-1)">
<input type="button" value="닫기" onclick="self.close()">
</form>
</body>
</html>