<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
  ul{
    list-style:none;
    
  }
  ul li{
   padding:15px;
   margin:0px;
   cursor: pointer;
   background-color:red;
  }
  ul>li:first-child{
  font-size:20;
  font-weight:bold;
  }
  #sub_menu1{
  display:none;
  }
  #sub_menu2{
  display:none;
  }
  #sub_menu3{
  display:none;
  }
  #sub_menu4{
  display:none;
  }
  #sub_menu5{
  display:none;
  }
  #sub_menu6{
  display:none;
  }
  li{
  margin:10px
  }
</style>

<div id='sub_menu'>
</div>
<ul id='sub_menu1' >
 <li onClick="document.location.href='/PWU/index.do'">Home</li>
</ul>

<ul id='sub_menu2' >
 <li onClick="javascript:alert('快空')">Best20</li>
</ul>

<ul id='sub_menu3'>
 <li onClick="javascript:alert('快空')">fashion</li>
 <li>fashion-drama</li>
 <li>fashion-movie</li>
 <li>fashion-street&air</li>
</ul>

<ul id='sub_menu4'>
 <li onClick="javascript:alert('快空')">beauty</li>
 <li>beauty-drama</li>
 <li>beauty-movie</li>
 <li>beauty-street&air</li>
</ul>

<ul id='sub_menu5'>
 <li onClick="javascript:alert('快空')">order</li>
 <li>order-product_inquiry</li>
 <li>order-product_order</li>
</ul>


<ul id='sub_menu6'>
 <li onClick="javascript:alert('快空')">customer_center</li>
 <li>customer_center-notice</li>
 <li>customer_center-FAQ</li>
 <li>customer_center-1:1_inquiry</li>
</ul>

