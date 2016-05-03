<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
<style>
   #site{
  display:none;
  }
</style>

<html>
<head>
	<title><tiles:getAsString name="title" /></title>
</head>
<body>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="2">
	<tiles:insertAttribute name="header" />
	</td>
</tr>
<tr>
	<td valign="top" width="0"><tiles:insertAttribute name="menu" /></td>
	<td valign="top" width="80%"><tiles:insertAttribute name="body" />
	<%-- <iframe frameborder="0" scrolling="auto" height="220" width="560" allowtransparency="true" marginwidth="0" marginheight="0" src="http://fxrates.kr.forexprostools.com/index_exchange.php?params&inner-border-color=%23CBCBCB&border-color=%23cbcbcb&bg1=%23F6F6F6&bg2=%23ffffff&inner-text-color=%23000000&currency-name-color=%23000000&header-text-color=%23FFFFFF&header-bg=%23979797" align="center"></iframe><br /><div style="width:540px"><a href="http://kr.investing.com" target="_blank"><span style="font-size: 11px;color: #333333;text-decoration: none;"></span></span></div></td> --%>
</tr>
<tr>
<!-- <td colspan="2"> -->
<!-- <script  type="text/javascript"   src="http://ko.exchange-rates.org/GetCustomContent.aspx?sid=RT000DK7D&amp;type=RatesTable&amp;stk=03SNLN99TS" charset="utf-8"> -->
<!-- </script> -->
<!-- <div><a id='site' href="http://ko.exchange-rates.org/">.</a></div> -->
<!-- </td> -->

</tr>
<tr>
	<td colspan="2">
	<tiles:insertAttribute name="footer" />
	</td>
</tr>
</table>
</body>
</html>