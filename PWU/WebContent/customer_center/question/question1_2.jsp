<%@ page contentType="text/html; charset=utf-8" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" />

<title>픽위업</title></head><body id="main"><div id="accNav">
</div>

        <div class="inner" style="display:none;">
            
            <div class="xans-element- xans-bannermanage2 xans-bannermanage2-display"><div>
</div>
            
        </div>
    </div>

  
</div>
</div>

        <hr class="layout"/><div id="contents">
            
<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
<div class="title">
            <h2><font color="#555555">NOTICE</font></h2>            
        </div>
</div>
<div class="boardList">
        <table border="1" summary="">
<caption>게시판 목록</caption>

        <thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
        <tr style=" ">
				<th scope="col" class="number"> NO</th>
                <th scope="col" class="subject">TITLE</th>
                <th scope="col" class="writer">NAME</th>
                <th scope="col" class="date ">DATE</th>
                <th scope="col" class="hit ">HIT</th>
            </tr></thead>
<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002"><!--  $count = 20 -->
                <tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
				<td class="number"> 13</td>
                <td class="subject"> <a href="/board/free/read.html?no=594989&board_no=1">쿠폰 사용시 필독해주세요</a> </td>
                <td class="writer">픽위업</td>
                <td class="date ">2016-01-29</td>
                <td class="hit ">1472</td>
            </tr>
<tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
				<td class="number"> 12</td>
                <td class="subject"> <a href="/board/free/read.html?no=594982&board_no=1">해외배송 안내</a> </td>
                <td class="writer">픽위업</td>
                <td class="date ">2016-01-29</td>
                <td class="hit ">697</td>
            </tr>

<tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
				<td class="number"> 5</td>
                <td class="subject"> <a href="/board/free/read.html?no=183802&board_no=1">[상품반송시 필독] 편의점 택배 이용 중단 알림</a> </td>
                <td class="writer"><img src="http://withyoon.com/web/bbs_member_icon/admin/admin.jpg"  />　　</td>
                <td class="date ">2014-01-16</td>
                <td class="hit ">14484</td>
            </tr>
<tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
</tbody>
</table>
</div>
</div>

<!-- 관리자 전용 메뉴 -->
<!-- //관리자 전용 메뉴 -->

<form id="boardSearchForm" name="" action="/board/free/list.html" method="get" enctype="multipart/form-data" >
<fieldset class="boardSearch">
</select> <select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="" >
<option value="subject">제목</option>
<option value="content">내용</option>
<option value="writer_name">글쓴이</option>
</select> <input id="search" name="search" fw-filter="" fw-label="" fw-msg="" class="inputTypeText" value="" type="text"  /> 
<input type="button" value="검색"/></p>
    </fieldset>
</div>
</form>





<div class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 "><a href="/board/free/write.html?board_no=1" class="displaynone"><img src="/web/upload/images/board_write.gif" alt="글쓰기"/></a>
</div>

<div class="clear"></div>

<div class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002">

<c:if test="${count > 0}">
   <c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${10}"/>
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
<!--    10보다는Block페이지 적는게 좋음 -->
   <c:set var="startPage" value="${result * 10 + 1}" />
   <c:set var="endPage" value="${startPage + pageBlock-1}"/>
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if>
         
 <c:if test="${startPage > 10}">
        <a href="/JSP/mvc_board/list.do?pageNum=${startPage - 10 }">[이전]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/JSP/mvc_board/list.do?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/JSP/mvc_board/list.do?pageNum=${startPage + 10}">[다음]</a>
   </c:if>
</div>
        </div>
    </div>

</body></html>
