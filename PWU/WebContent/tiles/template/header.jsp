<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	function menuShow(menuidx) {
		menuHide();
		document.all(menuidx).style.display = "inline";
	}
	function menuHide() {
		menu1.style.display = "none";
		menu2.style.display = "none";
		menu3.style.display = "none";
		menu4.style.display = "none";
		menu5.style.display = "none";
		menu6.style.display = "none";
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
	<div align="right">
		<img align="left" src="/PWU/tiles/template/logo.JPG"
			onClick="return checkIt2()"> <img
			src="/PWU/tiles/template/mypage.JPG" align="right"
			onClick="javascript:window.location='inputForm.do'"> <img
			src="/PWU/tiles/template/membership.JPG" align="right"
			onClick="javascript:window.location='inputForm.do'"> <img
			src="/PWU/tiles/template/logout.JPG" alt="로갓" align="right"
			onClick="javascript:window.location='logout.do'"> ${memId } 를
		환영합니다!
	</div>
</c:if>





<table cellpadding="0" cellspacing="0" border="1" width="100%" height="45">
	<tr>
		<td width="100%" align="center" valign="middle">
			<table cellpadding="0" cellspacing="0" width="791" >
			  <tr>
				<td onmouseout="javascript:menuHide();" onmouseover="javascript:menuShow('menu1');" width="120"
					align="center" valign="middle"><a
					href="/shop/main/html.php?htmid=service/introduce.htm"><img
						src="/PWU/tiles/template/logo2.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseout="javascript:menuHide();" onmouseover="javascript:menuShow('menu2');" width="120"
					align="center" valign="middle"><a
					href="/shop/board/list.php?id=gallary"><img
						src="/PWU/tiles/template/best20.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseout="javascript:menuHide();" onmouseover="javascript:menuShow('menu3');" width="120"
					align="center" valign="middle"><a
					href="/shop/goods/goods_list.php"><img
						src="/PWU/tiles/template/fashion.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseout="javascript:menuHide();" onmouseover="javascript:menuShow('menu4');" width="120"
					align="center" valign="middle"><a
					href="/shop/main/html.php?htmid=member/members.htm"><img
						src="/PWU/tiles/template/beauty.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseout="javascript:menuHide();" onmouseover="javascript:menuShow('menu5');" width="120"
					align="center" valign="middle"><a
					href="/shop/board/list.php?id=notice"><img
						src="/PWU/tiles/template/order.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseout="javascript:menuHide();" onmouseover="javascript:menuShow('menu6');" width="120"
					align="center" valign="middle"><a
					href="/shop/board/list.php?id=notice"><img
						src="/PWU/tiles/template/Q&A.JPG" width="100" height="45"
						border="0"></a></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		    <table border="0" ID="menu0" style="display: inline;"  width="100%" >
			  <td border="0" height="30"></td>
			</table>
			<table border="1" ID="menu1" style="display: none;" width="100%" >
				<tr>
					<td>메뉴1-하위메뉴1</td>
					<td>메뉴1-하위메뉴2</td>
					<td>메뉴1-하위메뉴3</td>
					<td>메뉴1-하위메뉴4</td>
				</tr>
			</table>
			<table border="0" ID="menu2" style="display: none;" width="100%">
				<tr>
					<td>메뉴2-하위메뉴1</td>
					<td>메뉴2-하위메뉴2</td>
					<td>메뉴2-하위메뉴3</td>
					<td>메뉴2-하위메뉴4</td>
				</tr>
			</table>
			<table border="1" ID="menu3" style="display: none;" width="100%">
				<tr>
					<td>메뉴3-하위메뉴1</td>
					<td>메뉴3-하위메뉴2</td>
					<td>메뉴3-하위메뉴3</td>
					<td>메뉴3-하위메뉴4</td>
				</tr>
			</table>
			<table border="1" ID="menu4" style="display: none;" width="100%">
				<tr>
					<td>메뉴4-하위메뉴1</td>
					<td>메뉴4-하위메뉴2</td>
					<td>메뉴4-하위메뉴3</td>
					<td>메뉴4-하위메뉴4</td>
				</tr>
			</table>
			<table border="1" ID="menu5" style="display: none;" width="100%">
				<tr>
					<td>메뉴5-하위메뉴1</td>
					<td>메뉴5-하위메뉴2</td>
					<td>메뉴5-하위메뉴3</td>
					<td>메뉴5-하위메뉴4</td>
				</tr>
			</table>
			<table border="1" ID="menu6" style="display: none;" width="100%">
				<tr>
					<td>메뉴6-하위메뉴1</td>
					<td>메뉴6-하위메뉴2</td>
					<td>메뉴6-하위메뉴3</td>
					<td>메뉴6-하위메뉴4</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>