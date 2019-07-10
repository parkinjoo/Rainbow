<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="manager-managerPage"><!-- 전체 영역 감싸고 있음 -->
	<!-- 최상단 메뉴 [회원 관리(사용자 목록, 탈퇴 회원 관리), 상품 관리(??), 매출 관리(보류)]-->
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="#user-management">회원 관리</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#item-management" role="tab">상품 관리</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
<<<<<<< HEAD
			href="#sales-management" role="tab" id="clickTest">매출 관리(개발 보류)</a></li>
=======
			href="#contact" role="tab">매출 관리(개발 보류)</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#order-management" role="tab">주문 관리</a></li>
>>>>>>> refs/heads/master
	</ul>
	
	<div class="tab-content" id="myTabContent">
	
		<!-- userManagement.jsp Include Area -->
			<jsp:include page="${managerUserDisplay }"/>
		<!-- userManagement.jsp Include Area -->
		
		<!-- itemManagement.jsp Include Area -->
			<jsp:include page="${managerItemDisplay }"/>
<<<<<<< HEAD
		<!-- itemManagement.jsp Include Area -->	
		
		<!-- salesManagement.jsp Include Area -->
			<jsp:include page="${managerSalesDisplay }"/>
		<!-- salesManagement.jsp Include Area -->
=======
		<!-- itemManagement.jsp Include Area -->
		
		<!-- itemManagement.jsp Include Area -->
			<jsp:include page="${managerOrderDisplay }"/>
		<!-- itemManagement.jsp Include Area -->
>>>>>>> refs/heads/master
			
	</div>
				
</div>


		<!-- modalPage.jsp Include Area  -->
			<jsp:include page="${userModalPageDisplay }"/>
		<!-- modalPage.jsp Include Area  -->
		
		<!-- modalPage.jsp Include Area  -->
			<jsp:include page="${itemModalPageDisplay }"/>
		<!-- modalPage.jsp Include Area  -->

		
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>		
<script type="text/javascript" src="../js/jquery.jqplot.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.pointLabels.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.categoryAxisRenderer.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.barRenderer.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	var managerPageOk = '${managerPageOk}';
	if (managerPageOk=='') {
		location.href="/shoppingmall/manager/managerPageForm.do";
	}

}); 
</script>
