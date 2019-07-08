<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="tab-pane fade" id="item-management">
	<!-- 구분선(상품관리 세부) -->
	<ul class="nav nav-pills mb-3 bottomNav-managerPage">
		<li class="nav-item"><a class="nav-link active"
			data-toggle="pill" href="#pills-home-insert-data" aria-selected="true">재고 관리</a></li>
		<li class="nav-item"><a class="nav-link"
			data-toggle="pill" href="#pills-profile-dataManage" aria-selected="false">물품등록</a></li>
		<li class="nav-item"><a class="nav-link"
			data-toggle="pill" href="#pills-profile-edit" aria-selected="false">재고 수정/삭제</a></li>
	</ul>
	
<div class="tab-content" id="pills-tabContent">
	<!-- 구분선 -->
	
			<div class="tab-pane fade show active listDiv-managerPage" id="pills-home-insert-data">
				<div class="searchDiv">
					<form class="form-inline my-2 my-lg-0 searchBtn-managerPage">
						<div class="input-group mb-3 searchDiv">
						  <div class="input-group-prepend">
						    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown">검색어</button>
						    <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">상품코드</a>
						      <a class="dropdown-item" href="#">상품명</a>
						    </div>
						  </div>
						  <input type="text" class="form-control keywordInput">
						  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
						</div>
					</form>
					<button type="button" id="newItemAdd" class="btn btn-secondary addItemBtn-managerPage">새 상품 등록</button>
				</div>
				<div class="deleteBtnDiv-managerPage">
					<input type="button" class="deleteBtn-managerPage" name="deleteBtn"
						value="선택 목록 삭제" id="selectedItemboardDeleteBtn">
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">상품코드</th>
							<th scope="col">상품명</th>
							<th scope="col">이미지</th>
							<th scope="col">상품원가</th>
							<th scope="col">판매단가</th>
							<th scope="col"></th>
							<th scope="col"><input type="checkbox" id="selectAll-itemboard">
							</th>
						</tr>
					</thead>
					<tbody id="itemList">
						<!-- ajax로 호출되는 부분 -->
					</tbody>
				</table>
			</div>
			
			<div class="tab-pane fade"	id="pills-profile-dataManage">
			<!--  
				<form id="itemboardWriteForm" method="post" enctype="multipart/form-data" action="/shoppingmall/manager/itemboardWrite.do">
					<table class="table table-hover" >
					      <tr>
					         <td width="300px" align="right">상품코드</td>
					         <td colspan="6">
					            <input type="text" name="itemCode" id="itemCode" value="M">
					            <div id="itemCodeDiv"></div>
					         </td>
					      <tr>
					      <tr>
					         <td align="right">상품명</td>
					         <td colspan="6">
					            <input type="text" name="itemName" id="itemName" size="100" placeholder="상품명 입력">
					            <div id="itemNameDiv"></div>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="right">판매 단가</td>
					         <td colspan="2">
					            <input type="number" min="0" step="1000" style="text-align:right;" name="salePrice" id="salePrice" value="000" placeholder="판매 단가 입력">
					            <div id="salePriceDiv"></div>
					         </td>
					         
					         <td align="right">상품 원가</td>
					         <td colspan="3">
					            <input type="number" min="0" step="1000" style="text-align:right;" name="costPrice" id="costPrice" value="000" placeholder="상품 원가 입력">
					            <div id="costPriceDiv"></div>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="right">색상/사이즈</td>
					         <td align="center">S (90)</td>
					         <td align="center">M (95)</td>
					         <td align="center">L (100)</td>
					         <td align="center">XL (105)</td>
					         <td align="center">Free</td>
					         <td align="center">Total</td>
					      </tr>
					
					      <tr>
					         <td align="right">
					            <input type="text" name="col1" id="col1" size="10" list="col1List" placeholder="색상1 입력">
					            <div id="col1Div"></div>
					            <datalist id="col1List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1s" id="col1s" value="0">
					            <div id="col1sDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1m" id="col1m" value="0">
					            <div id="col1mDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1l" id="col1l" value="0">
					            <div id="col1lDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1x" id="col1x" value="0">
					            <div id="col1xDiv"></div> 
					         </td>
					         <td align="center">
					         	<input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1f" id="col1f" value="0">
					            <div id="col1fDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="text" name="col1tot" id="col1tot" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="right">
					            <input type="text" name="col2" id="col2" size="10" list="col2List" placeholder="색상2 입력"> 
					            <datalist id="col2List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2s" id="col2s" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2m" id="col2m" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2l" id="col2l" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2x" id="col2x" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2f" id="col2f" value="0"> 
					         </td>
					         <td align="center">
					            <input type="text" name="col2tot" id="col2tot" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="right">
					            <input type="text" name="col3" id="col3" size="10"  list="col3List" placeholder="색상3 입력"> 
					            <datalist id="col3List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3s" id="col3s" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3m" id="col3m" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3l" id="col3l" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3x" id="col3x" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3f" id="col3f" value="0"> 
					         </td>
					         <td align="center">
					            <input type="text" name="col3tot" id="col3tot" value="0" size="5" style="text-align: right;"  readonly>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="right">
					            <input type="text" name="col4" id="col4" size="10" list="col4List" placeholder="색상4 입력"> 
					            <datalist id="col4List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4s" id="col4s" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4m" id="col4m" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4l" id="col4l" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4x" id="col4x" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4f" id="col4f" value="0"> 
					         </td>
					         <td align="center">
					            <input type="text" name="col4tot" id="col4tot" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					      
					      <tr>
					         <td></td>
					         <td align="center">
					            <input type="text" name="s" id="s" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="m" id="m" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="l" id="l" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="x" id="x" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="f" id="f" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="totQty" id="totQty" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="right">내용</td>
					         <td colspan="6"><textarea cols="80" rows="2" name="itemContent" id="itemContent" placeholder="내용 입력"></textarea>
					         <div id="itemContentDiv"></div>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="right">이미지1</td>
					         <td colspan="6"><input type="file" name="img" id="img1"></td>
					      </tr>
					
					      <tr>
					         <td align="right">이미지2</td>
					         <td colspan="6"><input type="file" name="img" id="img2"></td>
					      </tr>
					
					      <tr>
					         <td align="right">이미지3</td>
					         <td colspan="6"><input type="file" name="img" id="img3"></td>
					      </tr>
					
					      <tr>
					         <td align="right">이미지4</td>
					         <td colspan="6"><input type="file" name="img" id="img4"></td>
					      </tr>
					      
					      <tr>
					         <td align="right">키워드</td>
					         <td colspan="6">
					            <input type="text" name="itemKeyword" id="itemKeyword" size="100" placeholder="키워드 입력">
					            <div id="itemKeywordDiv"></div>
					         </td>
					      </tr>
					      <tr>
					         <td colspan="7" align="center">
					            <input type="button" id="itemboardWriteBtn" value="상품 등록" > 
					            <input type="reset" value="다시작성">
					         </td>
					      </tr>
					      
					 </table>
				</form>	
				-->
			</div>
			
			<div class="tab-pane fade" id="pills-profile-edit">
			수정/삭제 부분
			</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/manager/getItemboardList.do',
		dataType : 'json',
		success : function(data){		
			$.each(data.list, function(index,items){
				$('#itemList').append("<tr>"+
									  "<th scope='row'>"+(index+1)+
									  "</th>"+
									  "<td>"+items.itemCode+"</td>"+
									  "<td>"+items.itemName+"</td>"+
									  "<td><img src='../storage/"+items.img1+"' style='cursor: pointer; width:50px; height:50px;'></td>"+
									  "<td>"+items.costPrice+"</td>"+
									  "<td>"+items.salePrice+"</td>"+
									  "<td><button type='button'"+ 
						  			  "class='btn btn-secondary modifyBtn-itemList'"+
						  			  "'>수정</button></td>"+
									  "<td>"+
									  "<input type='checkbox' name='deleteCheck'"+
									  		 "class='deleteCheck-itemboard'"+
									  		 "value="+items.itemCode+">"+
									  "<input value='"+items.itemCode+
									  	   "' type='hidden' class='hiddenCode'>"+
									  "</td>"+
									  "</tr>");
				
				$('.modifyBtn-itemList').each(function(index, item){
					$(item).addClass('modifyArrr_'+index);
				});
				
				$('.hiddenCode').each(function(index, item){
					$(item).addClass('hiddenArrr_'+index);
				});
				
			});//each;
			
			$('.modifyBtn-itemList').each(function(index, item){
				$(item).click(function(){
					
					
 					$.ajax({
						type: 'post',
						url: '/shoppingmall/manager/getItemInfo.do',
						data : 'itemcode='+$('.hiddenArrr_'+index).val(),
						dataType: 'json',
						success : function(data) {
							
							//alert(data.itemboardDTO.itemCode);
							
 	  						$('#itemCode').val(data.itemboardDTO.itemCode);
 	  						
							$('#itemName').val(data.itemboardDTO.itemName);
							$('#salePrice').val(data.itemboardDTO.salePrice);
							$('#costPrice').val(data.itemboardDTO.costPrice);
							
							$('#col1').val(data.itemboardDTO.col1);
							/*
							$('#col1s').val(data.itemboardDTO.col1s);
							$('#col1m').val(data.itemboardDTO.col1m);
							$('#col1l').val(data.itemboardDTO.col1l);
							$('#col1x').val(data.itemboardDTO.col1x);
							$('#col1f').val(data.itemboardDTO.col1f);
							$('#col1tot').val(data.itemboardDTO.col1tot);
							
							$('#col2').val(data.itemboardDTO.col2);
							$('#col2s').val(data.itemboardDTO.col2s);
							$('#col2m').val(data.itemboardDTO.col2m);
							$('#col2l').val(data.itemboardDTO.col2l);
							$('#col2x').val(data.itemboardDTO.col2x);
							$('#col2f').val(data.itemboardDTO.col2f);
							$('#col2tot').val(data.itemboardDTO.col2tot);
							
							$('#col3').val(data.itemboardDTO.col3);
							$('#col3s').val(data.itemboardDTO.col3s);
							$('#col3m').val(data.itemboardDTO.col3m);
							$('#col3l').val(data.itemboardDTO.col3l);
							$('#col3x').val(data.itemboardDTO.col3x);
							$('#col3f').val(data.itemboardDTO.col3f);
							$('#col3tot').val(data.itemboardDTO.col3tot);
							
							$('#col4').val(data.itemboardDTO.col4);
							$('#col4s').val(data.itemboardDTO.col4s);
							$('#col4m').val(data.itemboardDTO.col4m);
							$('#col4l').val(data.itemboardDTO.col4l);
							$('#col4x').val(data.itemboardDTO.col4x);
							$('#col4f').val(data.itemboardDTO.col4f);
							$('#col4tot').val(data.itemboardDTO.col4tot);
							*/
							
							$('#itemContent').val(data.itemboardDTO.itemContent);
							
							$('#img1label').text(data.itemboardDTO.img1);
							$('#img2label').text(data.itemboardDTO.img2);
							$('#img3label').text(data.itemboardDTO.img3);
							$('#img4label').text(data.itemboardDTO.img4); 
							
							$('#itemKeyword').val(data.itemboardDTO.itemKeyword);   
							
							$('#itemModal').modal();
						}
					}) 
				});
			});
		}
	});
 });
 
 
 
//체크박스 전체선택 기능
$('#selectAll-itemboard').click(function(){
	if($('#selectAll-itemboard').prop("checked")) {
		$('.deleteCheck-itemboard').prop("checked", true);
	}else {
		$('.deleteCheck-itemboard').prop("checked", false);
	}
});

//선택된 목록 삭제하기
$('#selectedItemboardDeleteBtn').click(function(){
	var checkArr = [];
	
	$('.deleteCheck-itemboard:checked').each(function(i){
		checkArr.push($(this).val());
	});
	
	if(checkArr.length==0){
		alert("선택된 목록이 없습니다")
	}else {
		var deleteConfirm = confirm("삭제된 상품은 복구할 수 없습니다. 정말 삭제 하시겠습니까?");
		if(deleteConfirm) {
			$.ajax({
				type: 'POST',
				url: "/shoppingmall/manager/deleteItemboard.do",
				data : {
					chkbox : checkArr
				},
				success: function(){
					alert("삭제 되었습니다");
					location.href="/shoppingmall/manager/managerPage.do";
				}
			});
		}else {
			//없음
		}
	}
});

//새 상품 등록 버튼 누르면 모달창이 뙇
$('#newItemAdd').click(function(){
	$('#itemModal').modal();
});
   
</script>