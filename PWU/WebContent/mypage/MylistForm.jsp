<%@ page contentType = "text/html; charset=euc-kr" %>
<html>
<head>
<title>마이페이지(주문하고싶은목록)</title>
<center><b>주문하고싶은목록(전체:${count})</b>
</head>






<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="30" bgcolor="${value_c}">
      <td align="center"  width="100"  >주문번호</td>
      <td align="center"  width="100" >주문회원</td>
      <td align="center"  width="250" >상품이름</td>
      <td align="center"  width="150" >날짜</td>
      <td align="center"  width="100" >상태</td>
       
    </tr>

<c:if test="${count == 0}">
<table width="700" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      마이페이지에 저장된 상품이 없습니다.
    </td>
  </tr>
</table>
</c:if>

   <c:forEach var="article" items="${articleList}">
   <tr height="30">
    <td align="center"  width="50" >
  <c:out value="${number}"/>
  <c:set var="number" value="${number - 1}"/>
</td>
 
    <td align="center"  width="100">
       <a href="mailto:${article.email}">${article.writer}</a>
</td>
    <td align="center"  width="150">${article.reg_date}
</td>
    <td align="center"  width="50">${article.readcount}</td>
    <td align="center" width="100" >${article.ip}</td>
  </tr>
  </c:forEach>
</table>
</c:if>



<c:if test="${count > 0}">
   <c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${10}"/>
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
   <c:set var="startPage" value="${result * 10 + 1}" />
   <c:set var="endPage" value="${startPage + pageBlock-1}"/>
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if>
         
   <c:if test="${startPage > 10}">
        <a href="/PWU/mylist.do?pageNum=${startPage - 10 }">[이전]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/PWU/mylist.do?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/PWU/mylist.do?pageNum=${startPage + 10}">[다음]</a>
   </c:if>
</c:if>

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
</html>