<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 상단 디자인 출력 부분 -->
 <table width="960" height=80 border="1" align=center>
   <tr>
     <td align=center width=200>
      <a href="/shop_main/main_body.htm">웹디모 초간단 홈페이지</a>
     </td>
     <td align=center>
      {GROUP_navi}
     </td>
   </tr>
 </table>
  
 <!-- BODY 본문 디자인 출력 부분 -->
 <table width="960" border="1" align=center>
 <tr>
 <td width=200 valign=top>
  <table width="200" border="1">
    <tr>
   <td>
    <br>
    <br>
     {GROUP_login_box}<br>
    <br> <br>

  <b>5.마이페이지</b><br>
   <br>
   {GROUP_left5}<br>
   <br>
   </td>
    </tr>
  </table>
 </td>
 <Td  valign=top>
   {BODY_CONTENT}
 </td>
 </tr>
 </table>

 <!-- 하단 디자인 출력 부분 -->
 <table width="960" border="1" align=center>
   <tr>
     <td width="200">
       <p><br>
        <a href='/shop_main/main_body.htm'> 하단 로고</a><br>
       </p>
       </td>
     <td> <br>
       홈페이지명 : 초급미션홈피<br>
       운영자:웹돌이<br>
       이메일주소 : aaaa@naver.com<br>
       <br>
총 누적 접속수 {COUNT_TOTAL} /
이달 접속수 {COUNT_MONTH} /
오늘 접속수 {COUNT_TODAY} <br>
총 게시물 수 {BBS_TOTAL_CNT}, 새글 수 {BBS_NEW_CNT}<br>
총 회원 수 {MEM_TOTAL_CNT}, 신규 회원 수 {MEM_NEW_CNT}<br>
  


</td>
   </tr>
 </table>

</body>
</html>

