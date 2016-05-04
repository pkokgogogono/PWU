<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="java.io.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
ArrayList saveFiles = new ArrayList();
ArrayList origFiles = new ArrayList();
 -->
<html>
<head>
<title>상품후기 보기</title>
  <b>글목록(전체 글:${pagingCount})</b>
<table width="700">
  <tr>
    <td align="right" bgcolor="${value_c}">
    	<!-- 요청하면 무조건 serv
    	let이 받는다  그래서 요청할때 [~.do] --> 
    	<!-- 글쓰기 클릭하면 servlet으로 이동 -->
     
    </td>
  </tr>
</table>

<c:if test="${pagingCount == 0}">
<table width="700" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      게시판에 저장된 글이 없습니다.
    </td>
  </tr>
</table>
</c:if>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="pink">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
    <tr height="10" bgcolor="pink">
  <!--   <td width="144">글번호</td> -->
   <td width="164">작성자</td>
   <td width="73">내용</td>
   <td width="73">비밀번호</td>
   <td width="379">이미지</td>
  </tr>
 
<c:if test="${pagingCount > 0}"> 
<c:forEach var="review" items="${review}" >
<%-- <c:if test="${reviewcount>0}">

</c:if> --%>
<tr height="10">
<%--     <td align="center"  width="150" height="20">${review.re_num}</td>	 --%>
    <td align="center"  width="150"><a href="pwdInput.do?${review.re_num}">${review.writer}</td></a>
    <td align="center"  width="150">${review.content}</td>
    <td align="center"  width="150">${review.passwd}</td>  
     <td align="center"  width="100" height="100"><img src="${review.path}" width="50" height="50"/></td>   
  </tr>
  <form>
  </form>  
</c:forEach> 

</c:if> 
  <tr>
   <td><input type = "button" value="상품보기" onclick="window.open('fashionList.do')"/></td>
  </tr>
</table>


<%-- <c:forEach var="review" items="${review}" > --%>
   <center>
<table width = "600">
<tr>
<td align = "center">
<c:if test="${pagingCount > 0}">
   <c:set var="pageCount" value="${pagingCount / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${5}"/> <!-- [1],[2],[3],[4],[5] -->
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
   <c:set var="startNum" value="${result * 10 + 1}" />
   <c:set var="endNum" value="${startNum + pageBlock-1}"/>
   <c:if test="${endNum > pageCount}">
        <c:set var="endNum" value="${pageCount}"/>
   </c:if>      

<c:if test="${startNum > 5}">
        <a href="/PWU/fashion/admin/reviewProAction.do?pageNum=${startNum - 5 }&num=${num}">[이전]</a>
   </c:if>
   <c:forEach var="i" begin="${startNum}" end="${endNum}">
       <a href="/PWU/fashion/admin/reviewProAction.do?pageNum=${i}&num=${num}">[${i}]</a>
   </c:forEach>
   <c:if test="${endNum < pageCount}">
        <a href="/PWU/fashion/admin/reviewProAction.do?pageNum=${startNum + 5}&num=${num}">[다음]</a>
   </c:if>
  </c:if>
  </td>
  </tr>
</table>
  </center>

</body>
</html>
