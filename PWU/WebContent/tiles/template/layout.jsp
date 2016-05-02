<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
<a id='test'>1111</a>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="2">
	<tiles:insertAttribute name="header" />
	</td>
</tr>
<tr>
	<td valign="top" width="20%"><tiles:insertAttribute name="menu" /></td>
	<td valign="top"><tiles:insertAttribute name="body" /></td>
</tr>
<tr>
<td colspan="2">
<script  type="text/javascript"   src="http://ko.exchange-rates.org/GetCustomContent.aspx?sid=RT000DK7D&amp;type=RatesTable&amp;stk=03SNLN99TS" charset="utf-8">
</script>
<div><a id='site' href="http://ko.exchange-rates.org/">.</a></div>
</td>
</tr>
<tr>
	<td colspan="2">
	<tiles:insertAttribute name="footer" />
	</td>
</tr>
</table>
</body>
</html>