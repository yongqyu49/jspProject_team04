<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("입력 완료 ^^");  
		location.href="manProductList.do?pageNum=${pageNum}";
	</script>
</c:if>
<%-- <c:if test="${result == 0}">
	<script type="text/javascript">
		alert("오류가 발생했습니다. 다시 작성해주세욥");
		location.href = "manProductRegister.do";
	</script>
</c:if> --%>
</body>
</html>