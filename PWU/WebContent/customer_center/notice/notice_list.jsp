
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	function boardViewCheck() {
		var form = document.BoardViewForm;
		return true;
	}
</script>
	
 <body>
 
 <center><b>글목록(전체 글:${count})</b>
<table width="700">
  <tr>
    <td align="right" bgcolor="${value_c}">
    	<!-- 요청하면 무조건 servlet이 받는다  그래서 요청할때 [~.do] --> 
    	<!-- 글쓰기 클릭하면 servlet으로 이동 -->
       <a href="/PWU/customer_center/notice/notice_write.do">글쓰기</a>
    </td>
  </tr>
</table>

<c:if test="${count == 0}">
<table width="700" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      게시판에 저장된 글이 없습니다.
    </td>
  </tr>
</table>
</c:if>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
   <td width="73">번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="58">조회수</td>
   <td width="7"><img src="img/notice.PNG" width="5" height="30" /></td>
  </tr>
<tr height="25" align="center">
</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>

 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 </table>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="right">
   <td><input type=button value="글쓰기" onclick="move('notice_write.jsp');"></td>  
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

        </td>      

    </tr>




  
</table>

<c:if test="${count > 0}">
   <c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${10}"/>
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
   <c:set var="startPage" value="${result * 10 + 1}" />
   <c:set var="endPage" value="${startPage + pageBlock-1}"/>
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if>
         
<c:if test="${startPage > 5}">
        <a href="/PWU/cutomer_center/notice_list.do?pageNum=${startPage - 5 }">[이전]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/PWU/cutomer_center/notice_list.do?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/PWU/cutomer_center/notice_list.do?pageNum=${startPage + 5}">[다음]</a>
   </c:if>
  </c:if>

</body> 

</html>
