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
<c:if test="${empty id }">
검색된 아이디가 없습니다.
</c:if>
<c:if test="${!empty id }">
<c:forEach var="list" items="${id}">
아이디 : ${list}<br>
</c:forEach>
</c:if>
<input type="button" value="이전" onclick="history.go(-1)">
<input type="button" value="닫기" onclick="self.close()">
</form>
</body>
</html>