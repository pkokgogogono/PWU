<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import = "java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>�����ȣ �˻�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function dongCheck(){
		if (document.zipForm.area4.value == ""){
			alert("���̸��� �Է��ϼ���");
			document.zipForm.area4.focus();
			return;
		}
		document.zipForm.submit();
	}
	function sendAddress(zipcode,area1,area2,area3,area4){
		var address =area1+ " "+area2+ " " +area3+ " " +area4;
		opener.document.userinput.zipcode.value=zipcode;
		opener.document.userinput.address.value=address;
		self.close();
			}
	
</script>
</head>
<body bgcolor="#FFFFCC">
<center>
<b>�����ȣ ã��</b>
<table>
<form name="zipForm" method="post" action="ZipCheck2.do">
      <tr>
        <td><br>
          ���θ� �ּ� �Է� : <input name="area4" type="text">
          <input type="button" value="�˻�" onclick= "dongCheck();">
        </td>
      </tr>
     <input type="hidden" name="check" value="n">
    </form>

  <c:if test="${zipcodeList==null }">

   <tr><td align="center"><br>�˻��� ����� �����ϴ�.</td></tr>
  </c:if>   

<tr><td align="center"><br>
    �ذ˻� ��, �Ʒ� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.</td></tr>
<c:forEach var="item" items="${zipcodeList}">
<c:set var="tempZipcode" value = "${item.zipcode}"/>
<c:set var="temptArea1" value = "${item.area1}"/>
<c:set var="temptArea2" value = "${item.area2}"/>
<c:set var="temptArea3" value = "${item.area3}"/>
<c:set var="temptArea4" value = "${item.area4}"/>

<%-- <c:if test="${item.area1==null}">  el�� �ΰ��Ͻ� �ڵ� ����--%>
<%-- <c:set var="temptArea1" value = ""/> --%>
<%-- </c:if> --%>


<tr><td>
<a href="javascript:sendAddress(
'${tempZipcode }','${temptArea1}','${temptArea2}',
'${temptArea3}','${temptArea4}')">
         ${tempZipcode}&nbsp;${temptArea1}&nbsp;${temptArea2}&nbsp;
${temptArea3}&nbsp;${temptArea4}</a><br>
</c:forEach>

</td></tr>
<tr><td align="center"><br><a href="javascript:this.close();">�ݱ�</a><tr></td

>
</table>
</center>
</body>
</html>
