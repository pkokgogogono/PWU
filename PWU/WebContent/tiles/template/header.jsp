<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
img {
	cursor: pointer;
}
</style>

<script>
	function checkIt2() {
		alert("체킷");
		return false;
	}
</script>
<html>
<c:if test="${memId==null}">
<body>
	<img src="/PWU/tiles/template/logo.JPG" onClick="return checkIt2()">
	<img src="/PWU/tiles/template/mypage.JPG" align="right"
		onClick="javascript:window.location='inputForm.do'">
	<img src="/PWU/tiles/template/membership.JPG" align="right"
		onClick="javascript:window.location='inputForm.do'">
	<img src="/PWU/tiles/template/login.JPG" align="right"
		onClick="javascript:window.location='loginForm.do'">
</c:if>
<c:if test="${memId!=null }">
    <div align ="right">
    <img align = "left" src="/PWU/tiles/template/logo.JPG" onClick="return checkIt2()">
   	<img src="/PWU/tiles/template/mypage.JPG" align="right"
		onClick="javascript:window.location='inputForm.do'">
	<img src="/PWU/tiles/template/membership.JPG" align="right"
		onClick="javascript:window.location='inputForm.do'">
	<img src="/PWU/tiles/template/logout.JPG" alt="로갓" align="right"
		onClick="javascript:window.location='logout.do'">
    ${memId } 를 환영합니다!</div>
</c:if>
	
	<table width="100%" cellpadding="0" cellspacing="0"  height="70"
		bgcolor="black">
		<tr>
			<td width="100%" align="center" valign="middle">
				<table cellpadding="0" cellspacing="0" width="791">
					<tr>
						<td width="120" align="center" valign="middle"><a
							href="/shop/main/html.php?htmid=service/introduce.htm"><img
								src="/PWU/tiles/template/logo2.JPG" width="100"
								height="45" border="0"></a></td>
						<td width="120" align="center" valign="middle"><a
							href="/shop/board/list.php?id=gallary"><img
								src="/PWU/tiles/template/best20.JPG" width="100"
								height="45" border="0"></a></td>
						<td width="120" align="center" valign="middle"><a
							href="/shop/goods/goods_list.php"><img
								src="/PWU/tiles/template/fashion.JPG" width="100"
								height="45" border="0"></a></td>
						<td width="120" align="center" valign="middle"><a
							href="/shop/main/html.php?htmid=member/members.htm"><img
								src="/PWU/tiles/template/beauty.JPG" width="100"
								height="45" border="0"></a></td>
						<td width="120" align="center" valign="middle"><a
							href="/shop/board/list.php?id=notice"><img
								src="/PWU/tiles/template/order.JPG" width="100"
								height="45" border="0"></a></td>
						<td width="120" align="center" valign="middle"><a
							href="/shop/service/customer.php"><img
								src="/PWU/tiles/template/Q&A.JPG" width="100"
								height="45" border="0"></a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</body>
</html>