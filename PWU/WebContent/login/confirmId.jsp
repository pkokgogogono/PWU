<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>ID 중복확인</title>
<link href="style.css" rel="stylesheet" type="text/css">

</head>
<body bgcolor="${bodyback_c}">
<c:choose> 
  <c:when test="${check==1 }" > 
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="${title_c }">
    <td height="39">${param.id }은 이미 사용중인 아이디입니다.</td>
    </tr>
</table>
<form name="checkForm" method="post" action="confirmId.jsp">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td bgcolor="${value_c}" align="center">
       다른 아이디를 선택하세요.<p>
       <input type="text" size="10" maxlength="12" name="id">
       <input type="submit" value="ID중복확인">
    </td>
  </tr>
</table>
</form>
   </c:when>
   <c:otherwise> 
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="${title_c}">
    <td align="center">
      <p>입력하신 ${param.id } 는 사용하실 수 있는 ID입니다. </p>
      <input type="button" value="닫기" onclick="setid()">
    </td>
  </tr>
</table>
  </c:otherwise> 
</c:choose> 
</body>
</html>
<script language="javascript">

  function setid()
    {
    opener.document.userinput.id.value="${param.id }";//opener:새로운 창을 연다. 열어준창에 값을준다
self.close();
}

</script>

