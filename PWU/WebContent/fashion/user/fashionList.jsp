<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>즐거운 쇼핑하세요~!</title>
</head>
<body>
<b>BEST ITEM♥</b>
<table border="1">
 <tr>
  <c:forEach var="select" items="${selectList}" end="3">
<td width="300" height="300">
 <a href="userDetail.do?num=${select.num}"><img src="${select.path}" width="300" height="280"/></a>
 <br>  
 ${select.title} <a href="loveInsert.do?num=${select.num}"><img src="/PWU/fashion/user/love.jpg" width="20" height="20"/></a>

 </td>
    </c:forEach>
  </tr>
  </table>
  
<BR>

<b>FASHION ITEM♥</b>
<table border="1">
 <tr>
  <c:forEach var="select" items="${selectList}" end="3">
<td width="300" height="300">
 <a href="userDetail.do?num=${select.num}"><img src="${select.path}" width="300" height="280"/></a>
 <br>  
 ${select.title}
 <a href="loveInsert.do?num=${select.num}"><img src="/PWU/fashion/user/love.jpg" width="20" height="20"/></a>
 </td>
    </c:forEach>
    
  </tr>
  
   <tr>
  <c:forEach var="select" items="${selectList}" begin="3">
<td width="300" height="300">
 <a href="userDetail.do?num=${select.num}"><img src="${select.path}" width="300" height="280"/></a>
 <br>  
 ${select.title}
 <a href="loveInsert.do?num=${select.num}"><img src="/PWU/fashion/user/love.jpg" width="20" height="20"/></a>
 </td>
    </c:forEach>
  </tr>

<!-- 세번째줄 -->  
   <tr>
  <c:forEach var="select" items="${selectList}" begin="3">
<td width="300" height="300">
 <a href="userDetail.do?num=${select.num}"><img src="${select.path}" width="300" height="280"/></a>
 <br>  
 ${select.title}
 <a href="loveInsert.do?num=${select.num}"><img src="/PWU/fashion/user/love.jpg" width="20" height="20"/></a>
 </td>
    </c:forEach>
  </tr>
  </table>
  <br><Br>
</body>
</html>