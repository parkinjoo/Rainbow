<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>${title } / Rainbowmall</title>
    <link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/index-style.css">
    <link rel="stylesheet" href="../css/manager-style.css">
  </head>
<body>
<header>
	<c:if test="${manager != null }">
		<jsp:include page="${manager }"/>
	</c:if>
	<c:if test="${manager == null }">
		<jsp:include page="../template/top.jsp" />
	</c:if>
</header>
<hr>
<c:if test="${display != null }">
	<jsp:include page="${display }"/>
</c:if>
<c:if test="${display == null }">
	<jsp:include page="../template/body.jsp"/>
</c:if>
<hr>
<jsp:include page="../template/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script>
$('.nav-area-index').on('click', function(){
	$($('.nav-item').children('ul')).slideDown();
});
$('.nav-area-index').on('mouseleave', function(){
	$($('.nav-item').children('ul')).slideUp();
});
</script>
</html>