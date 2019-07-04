<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/mypage-style.css">

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
		    <h5 class="card-title">캐쉬</h5>
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
	    	<a id="item-ed" class="nav-link active">출고 대기중인 상품</a>
	  	</li>
	</ul>
	<div class="myItemTableDiv">
		<table class="table table-hover">
			<tbody id="itemList1">
				<!-- ajax로 호출되는 부분 -->
			</tbody>
		</table>
	</div>
</div>
<div class="myItemDiv">
    <ul class="nav nav-tabs">
	  	<li class="nav-item">
	    	<a id="item-ed" class="nav-link active">배송중인 상품</a>
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
	    	<a id="item-ing" class="nav-link active">환불요청 중인 상품</a>
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
	    	<a id="item-re" class="nav-link active" href="#">배송완료 상품</a>
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

<script>
function userOut(){
	if(confirm('회원탈퇴를 하시겠습니까?'))
		location.href="/shoppingmall/user/withdrawalCheckForm.do";
}
$(document).ready(function(){
	var point = ${userDTO.point};
	var cash = ${userDTO.cash};
	$('#point').text(point.toLocaleString()+' 점');
	$('#cash').text(cash.toLocaleString()+' 원');	//.toLocaleString() 3자리수마다 쉼표
/*
	$('ul.nav li a').click(function(){
		$('ul.nav li a').removeClass('active');
		$(this).attr('class', 'nav-link active');
	});
*/
	var id = ${userDTO.id};
	//-------------아이템 목록을 뿌려주는 함수-------------------
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/user/getItemList.do',
		data : 'id='+id,
		dataType : 'text',
		success : function(data){
			if(data!='null'){
				$.each(data.list, function(index,items){
					$('#itemList1').append("<tr>"+
							  "<th scope='row'>"+(index+1)+
							  "</th>"+
							  "<td>"+items.name+"</td>"+
							  "<td>"+items.id+"</td>"+
							  "<td>"+items.email+"</td>"+
							  "<td><button type='button'"+ 
							  			  "class='btn btn-secondary modifyBtn-managerPage'"+
							  			  "name=id"+
							  			  "value='jinsol'"+
							  			  "id='modifyBtn"+index+
							  			  "'>수정</button></td>"+
							  "<td>"+
							  "<input type='checkbox' name='deleteCheck'"+
							  		 "class='deleteCheck-managerPage'"+
							  		 "value="+items.id+">"+
							  "<input value='"+items.id+
							  	   "' type='hidden' class='hiddenId' id='modifyHidden"+index+"'>"+
							  "</td>"+
							  "</tr>");
					
					$('#itemList2').append();
					
					$('#itemList3').append();
					
					$('#itemList4').append();
				});//each;
			}else{
				$('#itemList1').append("<tr>"+
										  "<td align='center'>출고 대기중인 상품이 없습니다.</td>"+
									  "</tr>");
				
				$('#itemList2').append("<tr>"+
										  "<td align='center'>배송중인 상품이 없습니다.</td>"+
									  "</tr>");
				
				$('#itemList3').append("<tr>"+
										  "<td align='center'>환불요청 중인 상품이 없습니다."+
										  "</th>"+
									  "</tr>");
				
				$('#itemList4').append("<tr>"+
										  "<td align='center'>배송완료 상품이 없습니다."+
										  "</th>"+
									  "</tr>");
			}
		}
	});
	//---------------------------------------------------	
});
</script>