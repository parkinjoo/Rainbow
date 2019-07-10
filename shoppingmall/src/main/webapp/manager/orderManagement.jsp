<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 구분선(주문관리 세부) -->

<div class="tab-pane fade" id="order-management">
	<h4>출고 대기 목록</h4>
	<!-- 주문 관리 세부 메뉴 -->
	<div class="tab-content" id="pills-tabContent">

		<!--주문 목록 세부-->
		<div class="tab-pane fade show active listDiv-managerPage"
			id="pills-home">
			<div class="searchDiv">
				<form class="form-inline my-2 my-lg-0">
					<!-- <input class="form-control mr-sm-2" type="search" placeholder="Search"> -->
					<div class="input-group mb-3 searchDiv">
					  <div class="input-group-prepend">
					    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown">검색어</button>
					    <div class="dropdown-menu">
					      <a class="dropdown-item" href="#">상품코드</a>
					      <a class="dropdown-item" href="#">아이디</a>
					    </div>
					  </div>
					  <input type="text" class="form-control keywordInput">
					  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</div>
				</form>
			</div>
			
			<div class="deleteBtnDiv-managerPage">
				<input type="button" class="sendBtn-managerPage" name="sendBtn"
					value="선택 보내기" id="selectedItemSendBtn">
			</div>
			<form>
				<table class="table table-hover">
					<thead>
						<tr align='center'>
							<th scope="col">주문번호</th>
							<th scope="col">주문일자</th>
							<th scope="col">상품코드</th>
							<th scope="col">색상</th>
							<th scope="col">사이즈</th>
							<th scope="col">수량</th>
							<th scope="col">총가격</th>
							<th scope="col">주문자</th>
							<th scope="col">배송지</th>
							<th scope="col">
								<input type="checkbox" id="sendSelectAll">
							</th>
						</tr>
					</thead>
					<tbody id="orderList">
						<!-- ajax로 호출되는 부분 -->
					</tbody>
				</table>
			</form>
			<!-- 이 부분에 페이징 처리 -->
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="">1</a></li>
					<li class="page-item"><a class="page-link" href="">2</a></li>
					<li class="page-item"><a class="page-link" href="">3</a></li>
					<li class="page-item"><a class="page-link" href=""
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
			<!-- 페이징 -->
		</div>
		<!-- 사용자 목록 세부 -->
	</div>
	<!-- 구분선 -->
	
	<h4>배송중 목록</h4>
	<!-- 주문 관리 세부 메뉴 -->
	<div class="tab-content" id="pills-tabContent">

		<!--주문 목록 세부-->
		<div class="tab-pane fade show active listDiv-managerPage"
			id="pills-home">
			
			<div class="deleteBtnDiv-managerPage">
				<input type="button" class="arrivalBtn-managerPage" name="arrivalBtn"
					value="선택 도착완료" id="selectedItemArrivalBtn">
			</div>
			<form>
				<table class="table table-hover">
					<thead>
						<tr align='center'>
							<th scope="col">주문번호</th>
							<th scope="col">주문일자</th>
							<th scope="col">상품코드</th>
							<th scope="col">색상</th>
							<th scope="col">사이즈</th>
							<th scope="col">수량</th>
							<th scope="col">총가격</th>
							<th scope="col">주문자</th>
							<th scope="col">배송지</th>
							<th scope="col">
								<input type="checkbox" id="arrivalSelectAll">
							</th>
						</tr>
					</thead>
					<tbody id="sendList">
						<!-- ajax로 호출되는 부분 -->
					</tbody>
				</table>
			</form>
			<!-- 이 부분에 페이징 처리 -->
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="">1</a></li>
					<li class="page-item"><a class="page-link" href="">2</a></li>
					<li class="page-item"><a class="page-link" href="">3</a></li>
					<li class="page-item"><a class="page-link" href=""
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
			<!-- 페이징 -->
		</div>
		<!-- 사용자 목록 세부 -->
	</div>
	
	<h4>환불요청 목록</h4>
	<!-- 주문 관리 세부 메뉴 -->
	<div class="tab-content" id="pills-tabContent">

		<!--주문 목록 세부-->
		<div class="tab-pane fade show active listDiv-managerPage"
			id="pills-home">
			
			<div class="deleteBtnDiv-managerPage">
				<input type="button" class="refundBtn-managerPage" name="refundlBtn"
					value="선택 환불완료" id="selectedItemRefundBtn">
			</div>
			<form>
				<table class="table table-hover">
					<thead>
						<tr align='center'>
							<th scope="col">주문번호</th>
							<th scope="col">주문일자</th>
							<th scope="col">상품코드</th>
							<th scope="col">색상</th>
							<th scope="col">사이즈</th>
							<th scope="col">수량</th>
							<th scope="col">총가격</th>
							<th scope="col">주문자</th>
							<th scope="col">배송지</th>
							<th scope="col">
								<input type="checkbox" id="refundSelectAll">
							</th>
						</tr>
					</thead>
					<tbody id="refundList">
						<!-- ajax로 호출되는 부분 -->
					</tbody>
				</table>
			</form>
			<!-- 이 부분에 페이징 처리 -->
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="">1</a></li>
					<li class="page-item"><a class="page-link" href="">2</a></li>
					<li class="page-item"><a class="page-link" href="">3</a></li>
					<li class="page-item"><a class="page-link" href=""
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
			<!-- 페이징 -->
		</div>
		<!-- 사용자 목록 세부 -->
	</div>
</div>

<script>
$(document).ready(function(){
	//------------------------------- 전체 주문 목록 ------------------------------------
	$.ajax({
		type:'POST',
		url: '/shoppingmall/itemboard/orderList.do',
		data: 'stus=stay',
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$.each(data.list, function(index,items){
				$('#orderList').append("<tr align='center'>"+
										  "<td>"+items.seq+"</td>"+
										  "<td>"+items.registday+"</td>"+
										  "<td>"+items.itemCode+"</td>"+
										  "<td>"+items.itemCol+"</td>"+
										  "<td>"+items.itemSize+"</td>"+
										  "<td>"+items.itemQty+"</td>"+
										  "<td>"+(parseInt(items.itemQty)*items.salePrice).toLocaleString()+"원</td>"+
										  "<td>"+items.id+" (010-xxxx-xxxx)</td>"+
										  "<td>서울 영등포구 xxxx동 xxxx아파트 x동 xxxx호</td>"+
										  "<td>"+
											  "<input type='checkbox'"+
											  		 "class='sendCheck'"+
											  		 "value="+items.seq+">"+
										  "</td>"+
									  "</tr>");
			});
		}
	});
	
	$('#sendSelectAll').click(function(){
		if($('#sendSelectAll').prop('checked')){
			$('.sendCheck').prop('checked', true);
		}else{
			$('.sendCheck').prop('checked', false);
		}
	});
	
	//------------------------------- 전체 배송중 목록 ------------------------------------
	$.ajax({
		type:'POST',
		url: '/shoppingmall/itemboard/orderList.do',
		data: 'stus=ing',
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$.each(data.list, function(index,items){
				$('#sendList').append("<tr align='center'>"+
										  "<td>"+items.seq+"</td>"+
										  "<td>"+items.registday+"</td>"+
										  "<td>"+items.itemCode+"</td>"+
										  "<td>"+items.itemCol+"</td>"+
										  "<td>"+items.itemSize+"</td>"+
										  "<td>"+items.itemQty+"</td>"+
										  "<td>"+(parseInt(items.itemQty)*items.salePrice).toLocaleString()+"원</td>"+
										  "<td>"+items.id+" (010-xxxx-xxxx)</td>"+
										  "<td>서울 영등포구 xxxx동 xxxx아파트 x동 xxxx호</td>"+
										  "<td>"+
											  "<input type='checkbox'"+
											  		 "class='arrivalCheck'"+
											  		 "value="+items.seq+">"+
										  "</td>"+
									  "</tr>");
			});
		}
	});
	
	$('#arrivalSelectAll').click(function(){
		if($('#arrivalSelectAll').prop('checked')){
			$('.arrivalCheck').prop('checked', true);
		}else{
			$('.arrivalCheck').prop('checked', false);
		}
	});
	
	//------------------------------- 전체 환불요청 목록 ------------------------------------
	$.ajax({
		type:'POST',
		url: '/shoppingmall/itemboard/orderList.do',
		data: 'stus=re',
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$.each(data.list, function(index,items){
				$('#refundList').append("<tr align='center'>"+
										  "<td>"+items.seq+"</td>"+
										  "<td>"+items.registday+"</td>"+
										  "<td>"+items.itemCode+"</td>"+
										  "<td>"+items.itemCol+"</td>"+
										  "<td>"+items.itemSize+"</td>"+
										  "<td>"+items.itemQty+"</td>"+
										  "<td>"+(parseInt(items.itemQty)*items.salePrice).toLocaleString()+"원</td>"+
										  "<td>"+items.id+" (010-xxxx-xxxx)</td>"+
										  "<td>서울 영등포구 xxxx동 xxxx아파트 x동 xxxx호</td>"+
										  "<td>"+
											  "<input type='checkbox'"+
											  		 "class='refundCheck'"+
											  		 "value="+items.seq+">"+
										  "</td>"+
									  "</tr>");
			});
		}
	});
	
	$('#refundSelectAll').click(function(){
		if($('#refundSelectAll').prop('checked')){
			$('.refundCheck').prop('checked', true);
		}else{
			$('.refundCheck').prop('checked', false);
		}
	});
	
});

$('.sendBtn-managerPage').click(function(){
	var checkArr = [];
	
	$('.sendCheck:checked').each(function(i){
		checkArr.push($(this).val());
	});
	
	if(checkArr.length==0){
		alert("선택된 목록이 없습니다.");
	}else {
		if(confirm("선택된 상품을 보내시겠습니까?")){
			$.ajax({
				type: 'POST',
				url: '/shoppingmall/itemboard/sendItem.do',
				data : {'chkbox' : checkArr,'stus':'ing'},
				success: function(){
					alert("성공적으로 상품을 보냈습니다.");
					location.reload();
				}
			});
		} 
	}   
});

$('.arrivalBtn-managerPage').click(function(){
	var checkArr = [];
	
	$('.arrivalCheck:checked').each(function(i){
		checkArr.push($(this).val());
	});
	
	if(checkArr.length==0){
		alert("선택된 목록이 없습니다.");
	}else {
		if(confirm("선택된 상품이 도착했습니까?")){
			$.ajax({
				type: 'POST',
				url: '/shoppingmall/itemboard/sendItem.do',
				data : {'chkbox' : checkArr,'stus':'ed'},
				success: function(){
					alert("성공적으로 상품이 도착했습니다.");
					location.reload();
				}
			});
		} 
	}   
});

$('.refundBtn-managerPage').click(function(){
	var checkArr = [];
	
	$('.refundCheck:checked').each(function(i){
		checkArr.push($(this).val());
	});
	
	if(checkArr.length==0){
		alert("선택된 목록이 없습니다.");
	}else {
		if(confirm("선택된 상품을 환불해줄까?")){
			$.ajax({
				type: 'POST',
				url: '/shoppingmall/itemboard/refund.do',
				data : {'chkbox' : checkArr},
				success: function(){
					alert("성공적으로 상품을 환불했습니다.");
					location.reload();
				}
			});
		} 
	}   
});
</script>