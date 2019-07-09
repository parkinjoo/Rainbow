<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../css/mypage-style.css">

<c:if test="${userDTO != null}">
	<!-- 마이페이지창 -->
	<h4>마이페이지</h4>
	<div class="myPage">
		<div class="myPage2">
			<div class="card myPageCard" style="width: 40%; float : left;">
			  <div class="card-body myPageCard-body">
			    <h6 class="card-subtitle mb-2 text-muted">MY INFO</h6>
			    <h5 class="card-title">${userDTO.name} 님 (${userDTO.email})</h5>
			    <p class="card-text">회원등급 : ${userDTO.grade} 등급</p>
			    <a href="/shoppingmall/user/modifyCheckForm.do" class="card-link">내 정보 변경</a>
			  	 <a href=javascript:userOut(); class="card-link">회원 탈퇴</a>
			  </div>
			</div>
			
			<div class="card myPageCard" style="width: 20%; float : left;">
			  <div class="card-body myPageCard-body">
			    <h6 class="card-subtitle mb-2 text-muted">POINT</h6>
			    <h5 class="card-title">포인트</h5>
			    <p id="point" class="card-text"></p>
			    <a href="#" class="card-link">포인트 내역보기</a>
			  </div>
			</div>
			
			<div class="card myPageCard" style="width: 20%; float : left;">
			  <div class="card-body myPageCard-body">
			    <h6 class="card-subtitle mb-2 text-muted">CASH</h6>
			    <h5 class="card-title">캐쉬
			    	<input type="button" class="charge" value="충전">
			    </h5>
			    <p id="cash" class="card-text"></p>
			    <a href="#" class="card-link">캐쉬충전 내역보기</a>
			  </div>
			</div>
			
			<div class="card myPageCard" style="width: 20%; float : left;">
			  <div class="card-body myPageCard-body">
			    <h6 class="card-subtitle mb-2 text-muted">COUPON</h6>
			    <h5 class="card-title">쿠폰</h5>
			    <p class="card-text">${userDTO.point} 개</p>
			    <a href="#" class="card-link">쿠폰 목록보기</a>
			  </div>
			</div>
		</div>
	</div>
	
	<div class="myItemDiv">
	    <ul class="nav nav-tabs">
		  	<li class="nav-item">
		    	<a class="nav-link active">출고 대기중인 상품</a>
		  	</li>
		</ul>
		
		<table class="table table-hover">
		  <tbody id="itemList1">
		    <!-- ajax로 호출되는 부분 -->
		  </tbody>
		</table>
	</div>
	<div class="myItemDiv">
	    <ul class="nav nav-tabs">
		  	<li class="nav-item">
		    	<a class="nav-link active">배송중인 상품</a>
		  	</li>
		</ul>
		<div class="myItemTableDiv">
			<table class="table table-hover">
				<tbody id="itemList2">
					<!-- ajax로 호출되는 부분 -->
				</tbody>
			</table>
		</div>
	</div>
	<div class="myItemDiv">
	    <ul class="nav nav-tabs">
		  	<li class="nav-item">
		    	<a class="nav-link active">환불요청 중인 상품</a>
		  	</li>
		</ul>
		
		<div class="myItemTableDiv">
			<table class="table table-hover">
				<tbody id="itemList3">
					<!-- ajax로 호출되는 부분 -->
				</tbody>
			</table>
		</div>
	</div>
	<div class="myItemDiv">
	    <ul class="nav nav-tabs">
		  	<li class="nav-item">
		    	<a class="nav-link active">배송완료 상품</a>
		  	</li>
		</ul>
		<div class="myItemTableDiv">
			<table class="table table-hover">
				<tbody id="itemList4">
					<!-- ajax로 호출되는 부분 -->
				</tbody>
			</table>
		</div>
	</div>
</c:if>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	if('${userDTO}'==''){
		alert("비정상적인 접근입니다.");
		location.href='/shoppingmall/main/index.do';
	}else{
		var point = parseInt('${userDTO.point}');
		var cash = parseInt('${userDTO.cash}');
		$('#point').text(point.toLocaleString()+' 점');
		$('#cash').text(cash.toLocaleString()+' 원');	//.toLocaleString() 3자리수마다 쉼표
	}

	//--------------------------------------- 출고 대기중 리스트 -----------------------------------
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/itemboard/getStayItemList.do',
		data : 'id=${userDTO.id}',
		dataType : 'json',
		success : function(data){
			//alert(JSON.stringify(data));
			if(data.list != ''){
				$.each(data.list, function(index,items){
					$('#itemList1').append("<tr>"+
											  "<td align='center' width='20%' class='itemList'>"+
										      	"<img src='../storage/"+items.img1+"' style='width:80px; height:100px;'>"+
										      "</td>"+
										      "<td align='center' width='40%' class='itemList'>"+
										      	"<div class='test'>"+
										      		"<span style='color:red; font-size: 13pt;'>-상품명 : "+items.itemName+"<br></span>"+
										      		"<span style='color:gray; font-size: 10pt;'>[옵션]색상 : "+items.itemCol+", 사이즈 : "+items.itemSize+", 구매수량 : "+items.itemQty+"개</span>"+
										      	"</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+(items.itemQty*items.salePrice).toLocaleString()+"원</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+
										      		"<input type='button' value='주문취소' class='input-myPage orderCancle"+items.seq+"'>"+
										      	"</div>"+
										      "</td>"+
										   "</tr>");
					
					$('.orderCancle'+items.seq).click(function(){
						if(confirm('주문을 취소하시겠습니까?')){
							$.ajax({
								type : 'POST' ,
								url : '/shoppingmall/itemboard/StayItemDelete.do',
								data : {'id' : '${userDTO.id}',
										'seq' : items.seq,
										'reCash' : ${userDTO.cash}+(items.itemQty*items.salePrice)},
								dataType : 'text',
								success : function(data){
									alert('정상적으로 취소처리되었습니다.');
									location.reload();
								}
							});
						}
					});
				});//each;
			}else{
				$('#itemList1').append("<tr>"+
										  "<td align='center' class='itemList'>출고 대기중인 상품이 없습니다.</td>"+
									   "</tr>");
			}
		}
	});
	//----------------------------------------- 배송중인 상품 리스트 --------------------------------
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/itemboard/getIngItemList.do',
		data : 'id=${userDTO.id}',
		dataType : 'json',
		success : function(data){
			if(data.list != ''){
				$.each(data.list, function(index,items){
					$('#itemList2').append("<tr>"+
											  "<td align='center' width='20%' class='itemList'>"+
										      	"<img src='../storage/"+items.img1+"' style='width:80px; height:100px;'>"+
										      "</td>"+
										      "<td align='center' width='40%' class='itemList'>"+
										      	"<div class='test'>"+
										      		"<span style='color:red; font-size: 13pt;'>-상품명 : "+items.itemName+"<br></span>"+
										      		"<span style='color:gray; font-size: 10pt;'>[옵션]색상 : "+items.itemCol+", 사이즈 : "+items.itemSize+", 구매수량 : "+items.itemQty+"개</span>"+
										      	"</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+(items.itemQty*items.salePrice).toLocaleString()+"원</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+
										      		"<span style='color:blue;'>배송중</span>"+
										      	"</div>"+
										      "</td>"+
										   "</tr>");
				});//each;
			}else{
				$('#itemList2').append("<tr>"+
										  "<td align='center' class='itemList'>배송중인 상품이 없습니다.</td>"+
									   "</tr>");
			}
		}
	});
	//-------------------------------------- 환불 요청중인 상품 리스트 --------------------------------
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/itemboard/getReItemList.do',
		data : 'id=${userDTO.id}',
		dataType : 'json',
		success : function(data){
			if(data.list != ''){
				$.each(data.list, function(index,items){
					$('#itemList3').append("<tr>"+
											  "<td align='center' width='20%' class='itemList'>"+
										      	"<img src='../storage/"+items.img1+"' style='width:80px; height:100px;'>"+
										      "</td>"+
										      "<td align='center' width='40%' class='itemList'>"+
										      	"<div class='test'>"+
										      		"<span style='color:red; font-size: 13pt;'>-상품명 : "+items.itemName+"<br></span>"+
										      		"<span style='color:gray; font-size: 10pt;'>[옵션]색상 : "+items.itemCol+", 사이즈 : "+items.itemSize+", 구매수량 : "+items.itemQty+"개</span>"+
										      	"</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+(items.itemQty*items.salePrice).toLocaleString()+"원</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+
										      		"<span style='color:red;'>환불요청중</span>"+
										      	"</div>"+
										      "</td>"+
										   "</tr>");
				});//each;
			}else{
				$('#itemList3').append("<tr>"+
										  "<td align='center' class='itemList'>환불요청 중인 상품이 없습니다.</td>"+
									  "</tr>");
			}
		}
	});
	//----------------------------------------- 배송완료 상품 리스트 --------------------------------
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/itemboard/getEdItemList.do',
		data : 'id=${userDTO.id}',
		dataType : 'json',
		success : function(data){
			if(data.list != ''){
				$.each(data.list, function(index,items){
					$('#itemList4').append("<tr>"+
											  "<td align='center' width='20%' class='itemList'>"+
										      	"<img src='../storage/"+items.img1+"' style='width:80px; height:100px;'>"+
										      "</td>"+
										      "<td align='center' width='40%' class='itemList'>"+
										      	"<div class='test'>"+
										      		"<span style='color:red; font-size: 13pt;'>-상품명 : "+items.itemName+"<br></span>"+
										      		"<span style='color:gray; font-size: 10pt;'>[옵션]색상 : "+items.itemCol+", 사이즈 : "+items.itemSize+", 구매수량 : "+items.itemQty+"개</span>"+
										      	"</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+(items.itemQty*items.salePrice).toLocaleString()+"원</div>"+
										      "</td>"+
										      "<td align='center' width='20%' class='itemList'>"+
										      	"<div class='test'>"+
									      			"<input type='button' value='리뷰쓰기' class='input-myPage review"+items.seq+"'><br>"+
									      			"<input type='button' value='환불요청' class='input-myPage refund"+items.seq+"'>"+
										      	"</div>"+
										      "</td>"+
										   "</tr>");
					
					$('.refund'+items.seq).click(function(){
						if(confirm('환불을 신청하시겠습니까?')){
							$.ajax({
								type : 'POST' ,
								url : '/shoppingmall/itemboard/refundItem.do',
								data : {'seq' : items.seq},
								dataType : 'text',
								success : function(data){
									alert('정상적으로 환불요청 처리되었습니다.');
									location.reload();
									location.href='/shoppingmall/itemboard/itemboardView.do?itemCode='+items.itemCode+'&categoryCode=${categoryCode}&pg=${pg}'; 
								}
							});
						}
					});
					$('.review'+items.seq).click(function(){
						location.href='/shoppingmall/itemboard/itemboardView.do?itemCode='+items.itemCode+'&categoryCode=${categoryCode}'; 
					});
				});//each;
			}else{
				$('#itemList4').append("<tr>"+
										  "<td align='center' class='itemList'>배송완료 상품이 없습니다.</td>"+
									  "</tr>");
			}
		}
	});
});

function userOut(){
	if(confirm('회원탈퇴를 하시겠습니까?'))
		location.href="/shoppingmall/user/withdrawalCheckForm.do";
}

//캐쉬 충전버튼
$('.charge').click(function(){
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/user/charge.do',
		data : 'id=${userDTO.id}',
		dataType : 'text',
		success : function(data){
			location.reload();
		}
	});
});
</script>