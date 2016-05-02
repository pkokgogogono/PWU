<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
img, table td tr table tr td{
	cursor: pointer;
}
</style>

<script>
	function checkIt2() {
		return window.location='index.jsp';
	}
	function menuShow(menuidx) {
		for(i=0;i<7;i++){
			document.all('menu'+i).style.display = "none";
		}
		menu0.style.display = "none";
		document.all(menuidx).style.display = "inline";
	}
    function sub_menuShow(menuidx) {
    	for(i=1;i<7;i++){
    	document.all('sub_menu'+i).style.display = "none";
    	}
    	document.all('sub_menu'+menuidx).style.display = "inline";
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
    <c:if test="${admin=='f'}">
	<div align="right">
		<img align="left" src="/PWU/tiles/template/logo.JPG"
			onClick="return checkIt2()"> <img
			src="/PWU/tiles/template/mypage.JPG" align="right"
			onClick="javascript:window.location='inputForm.do'"> <img
			src="/PWU/tiles/template/membership.JPG" align="right"
			onClick="javascript:window.location='inputForm.do'"> <img
			src="/PWU/tiles/template/logout.JPG" alt="로갓" align="right"
			onClick="javascript:window.location='logout.do'"><h1> ${memId } 를
		환영합니다!</h1>
	</div>
	</c:if>
	<c:if test="${admin=='t'}">
	<div align="right">
		<img align="left" src="/PWU/tiles/template/logo.JPG"
			onClick="return checkIt2()"> <img
			src="/PWU/tiles/template/mypage.JPG" align="right"
			onClick="javascript:window.location='inputForm.do'"> <img
			src="/PWU/tiles/template/membership.JPG" align="right"
			onClick="javascript:window.location='inputForm.do'"> <img
			src="/PWU/tiles/template/logout.JPG" alt="로갓" align="right"
			onClick="javascript:window.location='logout.do'"> 관리자 모드입니다.
	</div>
	</c:if>
</c:if>





<table cellpadding="0" cellspacing="0" border="1" width="100%" height="45" >
	<tr>
		<td width="100%" align="center" valign="middle">
			<table cellpadding="0" cellspacing="0" width="791"  >
			  <tr>
				<td onmouseover="javascript:menuShow('menu0');" width="120"
					align="center" valign="middle" onClick="sub_menuShow(1)"><img
						src="/PWU/tiles/template/logo2.JPG" width="100" height="45"
						border="0"></td>
				<td onmouseover="javascript:menuShow('menu0');" width="120"
					align="center" valign="middle" onClick="sub_menuShow(2)"><img
						src="/PWU/tiles/template/best20.JPG" width="100" height="45"
						border="0"></td>
				<td onmouseover="javascript:menuShow('menu3');" width="120"
					align="center" valign="middle" onClick="sub_menuShow(3)"><a
					href="/shop/goods/goods_list.php"><img
						src="/PWU/tiles/template/fashion.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseover="javascript:menuShow('menu4');" width="120"
					align="center" valign="middle" onClick="sub_menuShow(4)"><a
					href="/shop/main/html.php?htmid=member/members.htm"><img
						src="/PWU/tiles/template/beauty.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseover="javascript:menuShow('menu5');" width="120"
					align="center" valign="middle" onClick="sub_menuShow(5)"><a
					href="/shop/board/list.php?id=notice"><img
						src="/PWU/tiles/template/order.JPG" width="100" height="45"
						border="0"></a></td>
				<td onmouseover="javascript:menuShow('menu6');" width="120"
					align="center" valign="middle" onClick="sub_menuShow(6)"><a
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
			  <tr height="24">
			      
			  <tr>
			</table>
			<table border="1" ID="menu1" style="display: none;" width="100%"  >
				<tr>
<!-- 				로고 사용 안함 -->
				</tr>
			</table>
			<table border="1" ID="menu2" style="display: none;" width="100%" >
				<tr>
<!-- 				   베스트20 사용 안함 -->
				</tr>
			</table>
			<table border="1" cellpadding="0" ID="menu3" style="display: none;" width="100%" >
				<tr>
					<td width="20%"  height="24" onClick="sub_menuShow(3)">fashion-drama</td>
					<td width="20%" onClick="sub_menuShow(3)">fashion-movie</td>
					<td width="20%" onClick="sub_menuShow(3)">fashion-street&air</td>
					<td></td>
				</tr>
			</table>
			<table border="1" ID="menu4" style="display: none;" width="100%" >
				<tr>
					<td width="20%" onClick="sub_menuShow(4)">beauty-drama</td>
					<td width="20%" onClick="sub_menuShow(4)">beauty-movie</td>
					<td width="20%" onClick="sub_menuShow(4)">beauty-street&air</td>
					<td></td>
				</tr>
			</table>
			<table border="1" ID="menu5" style="display: none;" width="100%" >
				<tr>
					<td width="20%" onClick="sub_menuShow(5)">order-product_inquiry</td>
					<td width="20%" onClick="sub_menuShow(5)">order-product_order</td>
					<td></td>
				</tr>
			</table>
			<table border="1" ID="menu6" style="display: none;" width="100%">
				<tr>
					<td width="20%" onClick="sub_menuShow(6)">customer_center-notice</td>
					<td width="20%" onClick="sub_menuShow(6)">customer_center-FAQ</td>
					<td width="20%" onClick="sub_menuShow(6)">customer_center-1:1_inquiry</td>
					<td></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>