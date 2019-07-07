<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>${title } / Rainbowmall</title>
    <link rel="stylesheet" type="text/css" href="../css/jquery.jqplot.css"/>
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
<!--  
<div class="cartBox">
	m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>
	m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>
	m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>m<br>
</div>
-->
<div class="btn_gotop">
	<img class="topBtn" src="../images/top.png">
</div>
<jsp:include page="../template/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.barRenderer.js"></script>
<script type="text/javascript" src="../js/jquery.jqplot.js"></script>
<script type="text/javascript" src="../plugins/jqplot.pointLabels.js"></script>
<script type="text/javascript" src="../plugins/jqplot.categoryAxisRenderer.js"></script>
<script type="text/javascript" src="../plugins/jqplot.barRenderer.js"></script>
<script type="text/javascript">
$('.nav-area-index').on('click', function(){
	$($('.nav-item').children('ul')).slideDown();
});
$('.nav-area-index').on('mouseleave', function(){
	$($('.nav-item').children('ul')).slideUp();
});

$(document).ready( function(){
	//따라다니는 TOP버튼
	$(window).on("scroll touchmove mousewheel DOMMouseScroll", function(e) {
		if($(window).scrollTop() >= 20) $(".btn_gotop").fadeIn();
		else $(".btn_gotop").fadeOut();
	});
		
	$(".btn_gotop").click(function(){
		$("html,body").animate({ scrollTop: 0 }, "slow");
	});
});
</script>
</html>