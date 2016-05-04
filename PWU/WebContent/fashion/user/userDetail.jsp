<%@ page contentType="text/html; charset=euc-kr" import="java.sql.*" errorPage="" %>
<title>
사용자페이지
</title>
<%-- <%
    String cust_id = (String)session.getAttribute("cust_id");
	if(cust_id == null){
	%>
		<script>
		alert("로그인하세요");
		location.href="/pro/login.jsp?refresh="+<%=System.currentTimeMillis()%>;
	    </script>
	<%
	}else{
	if(!cust_id.equals("admin")){
		%>
		<script>
			alert("당신은 관리자가 아닙니다");
		    location.href="/pro/index.jsp?refresh="+<%=System.currentTimeMillis()%>;
		</script>
		<%
	}else{
%> --%>
<table width="75%" border="1" cellspacing="1" cellpadding="1">
  <tr> 
    <td width="17%">
	<div align="center">
<%-- 	<%
		 if(cust_id == null || cust_id.equals("")){
		    out.println("<a href=\"login.jsp\">로그인</a>");
		 }else{
		    out.println(cust_id+"님 <a href=\"/pro/logout.jsp\">로그아웃</a>");
		}
	%> --%>
	</div>
	</td>
    <%-- <td width="16%"><div align="center"><a href="../index.jsp">홈</a></div></td>
    <td width="16%"><div align="center"><a href="customer_list.jsp">회원관리</a></div></td>
    <td width="18%"><div align="center"><a href="product_list.jsp">상품관리</a></div></td>
    <td width="19%"><div align="center"><a href="order_list.jsp">주문관리</a></div></td>
    <td width="14%"><div align="center"><a href="index.jsp?refresh=<%=System.currentTimeMillis()%>">관리자</a></div></td> --%>
  </tr>
  <tr> 
    <td height="190" colspan="6">
	<form method="post" action="mainProAction.do"	>
	<table align="center" width="75%" border="1" cellspacing="1" cellpadding="1">
        <tr> 
          <td width="31%"><div align="center">제목</div></td>
          <td width="69%"> <div align="left"> 
              ${fashiondetail.title}
            </div></td>
        </tr>
        <tr> 
          <td width="31%"><div align="center">상품이름</div></td>
          <td width="69%"> <div align="left"> 
              ${fashiondetail.p_name}
            </div></td>
        </tr>
        <tr> 
          <td height="21"><div align="center">상품가격</div></td>
          <td> <div align="left"> 
              ${fashiondetail.p_price}
              원 </div></td>
        </tr>
        <tr> 
          <td><div align="center">상품 상세 내용</div></td>
          <td> <div align="left"> 
              ${fashiondetail.content}
            </div></td>
        </tr>
         <tr> 
          <td><div align="center">조회수</div></td>
          <td> <div align="left"> 
              ${fashiondetail.read_count}
            </div></td>
        </tr>
        <tr> 
          <td><div align="center">상품이미지</div></td>
          <td> <div align="left"> 
		<img src ="${fashiondetail.path}"/>
            </div></td>
        </tr>
<!--         <tr> 
          <td><div align="center">상품이미지</div></td>
          <td> <div align="left"> 
              <input type="file" name="product_image">
            </div></td>
        </tr> -->
      </table>
<br><br><br>
 <center>
  <table border ="1" width="1200" height="10">
	<tr width="1200" height="10">
	<td width="300">
  <a href="/PWU/fashion/admin/reviewSelect.do?num=${fashiondetail.num}"><center>글쓰기</center></a></td>
  <td width="300">
  <a href="/PWU/fashion/admin/fashionList.do?num=${fashiondetail.num}"><center>상품목록 가기</center></a></td>
  <td width="300">
   <a href="/PWU/fashion/admin/reviewProAction.do?num=${fashiondetail.num}"><center>상품후기 보러가기</center></a>
   </td>
  </td>
  </tr>

  </table>
  </center>
	</form>
	</td>
  </tr>
</table>
<%-- <% } } %> --%>
