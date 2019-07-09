<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<link type="text/css" rel="stylesheet" href="../css/basket.css" />
<c:if test="${userDTO != null }">
<div class="tab-pane fade show active listDiv-basketPage" id="pills-home-insert-data">
				<div class="deleteBtnDiv-managerPage">
					<input type="button" class="deleteBtn-managerPage" name="deleteBtn"
						value="선택 상품 삭제" id="selectedItemboardDeleteBtn">
				</div>
				<table class="table table-hover cartTable">
					<thead>
						<tr>
							<th scope="col" width='5%'>#</th>
							<th scope="col" width='15%'>상품명</th>
							<th scope="col" width='15%'>이미지</th>
							<th scope="col" width='15%'>금액</th>
							<th scope="col" width='15%'>색상</th>
							<th scope="col" width='15%'>수량</th>
							<th scope="col" width='15%'>사이즈</th>
							<th scope="col" width='5%'><input type="checkbox" id="selectAll-itemboard"></th>
						</tr>
					</thead>
					<tbody id="itemList">
						
					</tbody>
				</table>
			</div>
</c:if>
<c:if test="${userDTO == null }">
로그인 하세요
</c:if>
<div class="btn-order-ctrl">
<!-- 주문하기 버튼은 인주형꺼랑 합칠 예정 -->
	<a href="#" class="CSSbuttonBlack">주문하기</a>
	<a href="/shoppingmall/main/index.do" class="CSSbuttonWhite">계속 쇼핑하기</a>
	<a id="flushBtn" class="CSSbuttonWhite">장바구니 비우기</a>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	var id = '${userDTO.id }';
	$.ajax({
		type: 'post',
		url: '/shoppingmall/itemboard/getItembasketList.do',
		data: {'itemCode': '${itemCode}', 'pg': '${pg}', 'categoryCode': '${categoryCode}', 'id': id},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$.each(data.list, function(index,items){
				$('#itemList').append("<tr>"+
										  "<td>"+items.seq+"</td>"+
										  "<td>"+items.itemName+"</td>"+
										  "<td><img src='../storage/"+items.img1+"' style='cursor: pointer; width:100px; height:100px;'></td>"+
										  "<td>"+items.salePrice+"</td>"+
										  "<td>"+items.itemCol+"</td>"+
										  "<td>"+items.itemQty+"</td>"+
										  "<td>"+items.itemSize+"</td>"+
										  "<td>"+
											  "<input type='checkbox' id='deleteCheck'  name='deleteCheck'"+
											  		"class='deleteCheck-basket'"+
											  		"value="+items.seq+">"+
											  "<input value='"+items.itemCode+
										  	"'type='hidden' class='hiddenId' id='modifyHidden"+index+"'>"+
										  "</td>"+
									  "</tr>");
			
			});
		}
	});
});
$('#flushBtn').click(function(){
	var id = '${userDTO.id}';
	if(confirm("장바구니를 모두 비우시겠습니까?")){
		$.ajax({
			type: 'post',
			url: '/shoppingmall/itemboard/basketFlush.do',
			data: {'id': id},
			success: function(){
				if(confirm("장바구니가 모두 삭제되었습니다. 채우러 가시겠습니까?")){
					location.href="/shoppingmall/main/index.do";
				}
			}
		});
	}
});

$('#selectedItemboardDeleteBtn').click(function(){
	var checkArr = [];
	
	$('.deleteCheck-basket:checked').each(function(i){
		checkArr.push($(this).val());
	});
	
	if(checkArr.length==0){
		alert("선택된 목록이 없습니다.");
	}else {
		if(confirm("선택된 상품을 삭제하시겠습니까?")){
			$.ajax({
				type: 'POST',
				url: '/shoppingmall/itemboard/basketDelete.do',
				data : {'chkbox' : checkArr},
				success: function(){
					alert("삭제되었습니다.");
					location.reload();
				}
			});
		} 
	}   
});


</script>