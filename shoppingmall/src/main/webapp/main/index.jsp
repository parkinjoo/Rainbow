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
<c:if test="${userDTO.userCode != 1 }">
	<div class="sideBar">
		<div class="cartBoxImage">
		   	<img src="../images/cart_image.png" class="cart_image">
		</div>
		<div class="cartBox">
			<!-- 장바구니 list -->
		</div>
	</div>
</c:if>
<div class="btn_gotop">
	<img class="topBtn" src="../images/top.png">
</div>
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

$(document).ready( function(){
	//따라다니는 TOP버튼
	$(window).on("scroll touchmove mousewheel DOMMouseScroll", function(e) {
		if($(window).scrollTop() >= 20) $(".btn_gotop").fadeIn();
		else $(".btn_gotop").fadeOut();
	});
		
	$(".btn_gotop").click(function(){
		$("html,body").animate({ scrollTop: 0 }, "slow");
	});

	//----------------------------------------------------------
	
	//sideBar상단 cart_image를 클릭시 cart페이지로 감
	$('.cart_image').click(function(){
		location.href="/shoppingmall/itemboard/itemBasketList.do";
	});
	
	//sideBar에 cart리스트 출력
	if('${userDTO}'!=''){
		$.ajax({
			type: 'POST',
			url: '/shoppingmall/itemboard/getSideBarList.do',
			data: 'id=${userDTO.id}',
			dataType : 'json',
			success : function(data){
				if(data.list != ''){
					$.each(data.list, function(index,items){
						$('.cartBox').append("<div class='cartBoxItem'>"+
											 	"<img src='../images/x.png' class='cartDelete item"+items.seq+"'>"+
											 	"<img src='../storage/"+items.img1+"' class='cartItem'>"+
											 "</div>");
						
						$('.item'+items.seq).click(function(){
							$.ajax({
								type: 'POST',
								url: '/shoppingmall/itemboard/SideBarDeleteItem.do',
								data: 'seq='+items.seq,
								dataType : 'text',
								success : function(data){
									alert('장바구니에서 삭제 되었습니다');
									location.reload();
								}
							});
						});
					});//each
					
					
				}else{
					$('.cartBox').append("<img src='../images/nothing.png' class='cartItem'>");
				}
			}
		});
	}else{
		$('.cartBox').append("<img src='../images/need_login.png' class='cartItem'>");
	}
});
</script>
</html>