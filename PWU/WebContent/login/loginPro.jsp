<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:choose> 
  <c:when test="${check==0 }" > 
    <script>
       alert("��й�ȣ�� ���� �ʽ��ϴ�.");
       history.go(-1);
    </script>
  </c:when> 
  <c:otherwise> 
     <script>
       alert("���̵� ���� �ʽ��ϴ�.");
       history.go(-1);
    </script>
  </c:otherwise> 
</c:choose> 
<html>
<head>
<title>Insert title here</title>
</head>
<body>
</body>
</html>