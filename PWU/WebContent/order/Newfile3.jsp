<%@ page contentType="text/html; charset=UTF-8" %>
<script language = "javascript">  // 자바 스크립트 시작

function writeCheck()
{
 var form = document.writeform;
 
 if( !form.number.value )   // form 에 있는 name 값이 없을 때
 {
  alert( "문의번호을 적어주세요" ); // 경고창 띄움
  form.number.focus();   // form 에 있는 name 위치로 이동
  return;
 }
 
if( !form.title.value )
 {
  alert( "제목을 적어주세요" );
  form.title.focus();
  return;
 }

if( !form.memo.value )
 {
  alert( "내용을 적어주세요" );
  form.memo.focus();
  return;
 }
 
if( !form.E-mail.value )
{
 alert( "E-mail을 적어주세요" );
 form.E-mail.focus();
 return;
}

if( !form.phone.number.value )
{
 alert( "phone number를 적어주세요" );
 form.phone number.focus();
 return;
}

if( !form.password.value )
{
 alert( "우편번호를 적어주세요" );
 form.password.focus();
 return;
}
form.submit();
}
 </script>

 <html>
 <head>
 <title>상품 주문</title>
 </head>
 <body>
<table>
<form name=writeform method=post action="write_ok.jsp">
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td>상품 주문</td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
    <table>  <tr>
    <td  width="10"  bgcolor="${value_c}" align="center"><td  width="330">TO : pickweup</th></td>
       </tr>
       </table>
   <table width="430" border="1" cellspacing="0" cellpadding="0"  align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="${value_c}">
   </td>
   </tr>
  
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center" >제 목</td>
    <td  width="330">
<c:if test="${num == 0}">
       <input type="text" size="40" maxlength="50" name="subject"></td>
</c:if>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center">문의번호</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="number" ></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center">상품이름</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="name" ></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center">상품번호</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="productnumber" ></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center">E-mail</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="e-mail" ></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center">우편번호</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="number" ></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="${value_c}" align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd">
</td>
  </tr>
<tr>     
<td colspan=2 bgcolor="${value_c}" align="center">
  <input type="submit" value="글쓰기" > 
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="window.location='/mvc_Board/MVC/list.do'">
</td></tr></table>   
</form>     
</body>
</html> 