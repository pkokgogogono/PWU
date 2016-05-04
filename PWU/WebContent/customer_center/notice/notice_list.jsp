<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List" %>
<%@page import="java.text.SimpleDateFormat" %>

<link rel="stylesheet" href="style.css"/>

<html>
 <head>
 <title>게시판</title>
 
 </head>
 <div class="title">
            <h2><font color="#555555">NOTICE</font></h2>            
 </div>
  
 <script type="text/javascript">
	function move(url) {
		location.href=url;
	}
	
</script>
	
 <body>
 <center><b>글목록(전체 글:${pagingCount})</b>
<table width="700">
  <tr>
    <td align="right" bgcolor="${value_c}">
    	<!-- 요청하면 무조건 serv
    	let이 받는다  그래서 요청할때 [~.do] --> 
    	<!-- 글쓰기 클릭하면 servlet으로 이동 -->
       <a href="/PWU/customer_center/notice/notice_writepro.do"></a>
    </td>
  </tr>
</table>

<c:if test="${pagingCount==0}">
<table width="699" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      게시판에 저장된 글이 없습니다.
    </td>
  </tr>
</table>
</c:if>

<c:if test="${pagingCount>0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
   <tr height="30" bgcolor="${white}">
   <td width="73">번호</td>
   <td width="73">작성자</td>
   <td width="379">제목</td>
   <td width="164">작성일</td>
   <td width="73">내용</td>
   <td width="58">조회수</td>
  </tr>
  
  <c:forEach var="select" items="${articleList}" >
<tr>
    <td align="center"  width="150">${select.num}</td>
    <td align="center"  width="150">${select.writer}</td>
    <td align="center"  width="150">
    <a href="/PWU/customer_center/notice/notice_content.do?num=${select.num}">${select.title}</a></td>  
    <td align="center"  width="150">${select.reg_date}</td>
    <td align="center"  width="150">${select.content}</td>
    <td align="center" width="150" >${select.read_count}</td>
    <td width="50">
    <input type="button" value="삭제" onclick="javascript:window.location='Notice_Delete.do?num=${select.num}'"/></td>
  </tr>
    </c:forEach>
</table>
</c:if>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="right">
   <td><input type=button value="글쓰기" onclick="javascript:window.location='notice_write.do'"/>
  </tr>

  
</form>
      <tr align="right">
        <td colspan="7"> <br/>
            <form name="serach" method ="post">
            <select name="keyField">
                <option value="0"> ----선택----</option>
                <option value="id">제목</option>
                <option value="name">내용</option>
            </select>
            <input type="text" name="keyWord" />
            <input type="button" value="검색" onclick="searchCheck(form)" />
            </form>
      </center>     
         </td>      
    </tr>
</table>
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
        <a href="/PWU/customer_center/notice/notice_list.do?pageNum=${startNum - 5 }">[이전]</a>
   </c:if>
   <c:forEach var="i" begin="${startNum}" end="${endNum}">
       <a href="/PWU/customer_center/notice/notice_list.do?pageNum=${i}">[${i}]</a>
   </c:forEach>
   <c:if test="${endNum < pageCount}">
        <a href="/PWU/customer_center/notice/notice_list.do?pageNum=${startNum + 5}">[다음]</a>
   </c:if>
  </c:if>
  </td>
  </tr>
</table>

</body> 

</html>
