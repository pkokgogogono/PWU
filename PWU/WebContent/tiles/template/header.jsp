<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
img {
	cursor: pointer;
}
</style>

<script>
	function checkIt2() {
		alert("üŶ");
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
			src="/PWU/tiles/template/logout.JPG" alt="�ΰ�" align="right"
			onClick="javascript:window.location='logout.do'"> ${memId } ��
		ȯ���մϴ�!
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
					<td>�޴�1-�����޴�1</td>
					<td>�޴�1-�����޴�2</td>
					<td>�޴�1-�����޴�3</td>
					<td>�޴�1-�����޴�4</td>
				</tr>
			</table>
			<table border="0" ID="menu2" style="display: none;" width="100%">
				<tr>
					<td>�޴�2-�����޴�1</td>
					<td>�޴�2-�����޴�2</td>
					<td>�޴�2-�����޴�3</td>
					<td>�޴�2-�����޴�4</td>
				</tr>
			</table>
			<table border="1" ID="menu3" style="display: none;" width="100%">
				<tr>
					<td>�޴�3-�����޴�1</td>
					<td>�޴�3-�����޴�2</td>
					<td>�޴�3-�����޴�3</td>
					<td>�޴�3-�����޴�4</td>
				</tr>
			</table>
			<table border="1" ID="menu4" style="display: none;" width="100%">
				<tr>
					<td>�޴�4-�����޴�1</td>
					<td>�޴�4-�����޴�2</td>
					<td>�޴�4-�����޴�3</td>
					<td>�޴�4-�����޴�4</td>
				</tr>
			</table>
			<table border="1" ID="menu5" style="display: none;" width="100%">
				<tr>
					<td>�޴�5-�����޴�1</td>
					<td>�޴�5-�����޴�2</td>
					<td>�޴�5-�����޴�3</td>
					<td>�޴�5-�����޴�4</td>
				</tr>
			</table>
			<table border="1" ID="menu6" style="display: none;" width="100%">
				<tr>
					<td>�޴�6-�����޴�1</td>
					<td>�޴�6-�����޴�2</td>
					<td>�޴�6-�����޴�3</td>
					<td>�޴�6-�����޴�4</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>