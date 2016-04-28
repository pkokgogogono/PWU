<%@ page contentType="text/html; charset=euc-kr" import="java.sql.*" errorPage="" %>

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
          <td colspan="2"><div align="center">상품 등록</div></td>
        </tr>
        <tr> 
          <td width="31%"><div align="center">제목</div></td>
          <td width="69%"> <div align="left"> 
              <input type="text" name="title" size="60">
            </div></td>
        </tr>
        <tr> 
          <td width="31%"><div align="center">상품이름</div></td>
          <td width="69%"> <div align="left"> 
              <input type="text" name="p_name" size="20">
            </div></td>
        </tr>
        <tr> 
          <td height="21"><div align="center">상품가격</div></td>
          <td> <div align="left"> 
              <input type="text" name="p_price" size="20">
              원 </div></td>
        </tr>
        <tr> 
          <td><div align="center">상품 상세 내용</div></td>
          <td> <div align="left"> 
              <textarea rows="10" cols="45" name="content"></textarea>
            </div></td>
        </tr>
<!--         <tr> 
          <td><div align="center">상품이미지</div></td>
          <td> <div align="left"> 
              <input type="file" name="product_image">
            </div></td>
        </tr> -->
        <tr> 
          <td colspan="2"><div align="center"> 
              <input type="submit" value="제품등록">&nbsp;&nbsp;&nbsp;
              <input type="button" value="목록보기" onclick="window.open('productList.do')">&nbsp;&nbsp;&nbsp;
              <input type="reset" value="다시쓰기">
            </div></td>
        </tr>
      </table>

	</form>
	</td>
  </tr>
</table>
<%-- <% } } %> --%>
