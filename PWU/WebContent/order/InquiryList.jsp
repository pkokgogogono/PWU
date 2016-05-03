<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<title>상품문의 목록</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">
<center><b>상품문의 목록</b>
<table width="700">
  <tr>
    <td align="right" bgcolor="${value_c}">
       <a href="/PWU/order/InquiryForm.do">글쓰기</a>
    </td>
  </tr>
</table>

<%-- <c:if test="${count > 0}"> --%>
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="30" bgcolor="red">
      <td align="center"  width="50"  >NO</td>
      <td align="center"  width="250" >TITLE</td>
      <td align="center"  width="100" >WRITER</td>
      <td align="center"  width="150" >DATE</td>  
    </tr>

   <c:forEach var="select" items="${selectList}" >
<tr>
    <!-- <td align="center"  width="100"> -->
    <td align="center"  width="150">${select.num}</td>
    <td align="center"  width="150">${select.title}<a href="/PWU/order/Inquirycontent.do?num=${select.num}">${select.title} </a></td>
    <td align="center"  width="50">${select.writer}</td>
    <td align="center" width="100" >${select.reg_date}</td>
  </tr>
  
  	
  </c:forEach>
</table>
<%-- </c:if> --%>

<%-- <c:if test="${count > 0}">
   <c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${10}"/>
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
   <c:set var="startPage" value="${result * 10 + 1}" />
   <c:set var="endPage" value="${startPage + pageBlock-1}"/>
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if>
         
   <c:if test="${startPage > 10}">
        <a href="/PWU/order/InquiryList.do?pageNum=${startPage - 10 }">[이전]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/PWU/order/InquiryList.do?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/PWU/order/InquiryList.do?pageNum=${startPage + 10}">[다음]</a>
   </c:if>
</c:if> --%>

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