<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="tab-pane fade show active listDiv-managerPage" id="pills-home-insert-data">
				<div class="deleteBtnDiv-managerPage">
					<input type="button" class="deleteBtn-managerPage" name="deleteBtn"
						value="선택 목록 삭제" id="selectedItemboardDeleteBtn">
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">상품명</th>
							<th scope="col">이미지</th>
							<th scope="col">판매단가</th>
							<th scope="col">색상</th>
							<th scope="col">수량</th>
							<th scope="col"><input type="checkbox" id="selectAll-itemboard">
							</th>
						</tr>
					</thead>
					<tbody id="itemList">
						
					</tbody>
				</table>
			</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/shoppingmall/itemboard/getItembasketList.do',
		data: {'itemCode': '${itemCode}', 'pg': '${pg}', 'categoryCode': '${categoryCode}'},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$.each(data.list, function(index,items){
				$('#itemList').append("<tr>"+
									  "<th scope='row'"+(index+1)+
									  "</th>"+
									  "<td>"+items.itemName+"</td>"+
									  "<td><img src='../storage/"+items.img1+"' style='cursor: pointer; width:100px; height:100px;'></td>"+
									  "<td>"+items.itemPrice+"</td>"+
									  "<td>"+items.itemCol+"</td>"+
									  "<td>"+items.itemQty+"</td>"+
									  "<input type='checkbox' name='deleteCheck'"+
									  		"class='deleteCheck-itemboard'"+
									  		"value="+items.itemcode+">"+
									  "<input value='"+items.itemcode+
									  	"'type='hidden' class='hiddenId' id='modifyHidden"+index+"'>"+
									  	"</td>"+
									  	"</tr>");
			
			});
		}
	});
});
</script>