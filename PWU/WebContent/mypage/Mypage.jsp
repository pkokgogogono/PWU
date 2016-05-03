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

<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="30" bgcolor="${value_c}">
      <td align="center"  width="100"  >주문번호</td>
      <td align="center"  width="250" >상품이름</td>
      <td align="center"  width="150" >날짜</td>
      <td align="center"  width="150" >상태</td>
       
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
        <a href="/PWU/mylistForm.do?pageNum=${startPage - 10 }">[이전]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/PWU/mylistForm.do?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/PWU/mylistForm.do?pageNum=${startPage + 10}">[다음]</a>
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
</body>
</html>