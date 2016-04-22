<%@ page contentType="text/html; charset=UTF-8" %>

<script language = "javascript">  // 자바 스크립트 시작

function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.name.value )   // form 에 있는 name 값이 없을 때
   {
    alert( "닉네임을 적어주세요" ); // 경고창 띄움
    form.name.focus();   // form 에 있는 name 위치로 이동
    return;
   }
   
   if( !form.password.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.password.focus();
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
  
  form.submit();
  }
 </script>

 <html>
 <head>
 <title>상품문의 답글</title>
 </head>
 <body>
 <center>
<table>
<form name=writeform method=post action="write_ok.jsp">
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td>상품 문의 답글</td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">닉네임</td>
      <td><input name="name" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">상품명</td>
      <td><input name="product name" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">상품가격</td>
      <td><input name="price" size="20" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">문의답글</td>
      <td><textarea name="memo" cols="50" rows="13"></textarea>
      <td>&nbsp;</td>
     </tr>
     
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">첨부파일</td>
      <td><div class="tb-left"><input type='file' name='userfile'  class="MS_input_file" onchange="document.getElementById('size_checker').src = this.value;"/></div></td>
      <td>&nbsp;</td>
     </tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>
      <td><input type="password" name="password" size="30" maxlength="50"></td>
       <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록" OnClick="javascript:writeCheck();">
       <input type=button value="취소" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
  </form>
 </table>
 </center>
</body>
 </html>