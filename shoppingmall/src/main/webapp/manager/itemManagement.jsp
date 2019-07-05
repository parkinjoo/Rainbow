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
						<input class="form-control mr-sm-2" type="search" placeholder="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
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
			</div>
			
			<div class="tab-pane fade" id="pills-profile-edit">
			수정/삭제 부분
			</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#itemboardWriteBtn').click(function() {
    $('#itemCodeDiv').empty();
    $('#itemNameDiv').empty();
    $('#salePriceDiv').empty();
    $('#costPriceDiv').empty();
    $('#itemContentDiv').empty();

    if ($('#itemCode').val() == 'M') {
    	//$('#itemCodeDiv').text("상품코드를 입력하세요.").css('color', 'red').css('font-size', '9pt');
		alert("상품 코드를 입력하세요.");
    } else if ($('#itemName').val() == '') {
    	alert("상품 이름을 입력하세요.");
    } else if ($('#salePrice').val() == '000') {
    	alert("판매 단가를 입력하세요.");
    } else if ($('#costPrice').val() == '000') {
    	alert("상품 원가를 입력하세요.");
    } else if ($('#col1').val() == '') {
    	alert("색상1을 입력하세요.");
    } else if ($('#itemContent').val() == '') {
    	alert("상품 내용을 입력하세요.");
    } else if ($('#itemKeyword').val() == '') {
    	alert("상품 키워드를 입력하세요.");
    }else {
       $('#itemboardWriteForm').submit();
    }
});

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
						  			  "class='btn btn-secondary'"+
						  			  "'>수정</button></td>"+
									  "<td>"+
									  "<input type='checkbox' name='deleteCheck'"+
									  		 "class='deleteCheck-itemboard'"+
									  		 "value="+items.itemcode+">"+
									  "<input value='"+items.itemcode+
									  	   "' type='hidden' class='hiddenId' id='modifyHidden"+index+"'>"+
									  "</td>"+
									  "</tr>");		
				
			});//each;
		}
	});
	
    $('input').focusout(function() {
       var col1s = parseInt($("#col1s").val());
       var col1m = parseInt($("#col1m").val());
       var col1l = parseInt($("#col1l").val());
       var col1x = parseInt($("#col1x").val());
       var col1f = parseInt($("#col1f").val());
       $('#col1tot').val(col1s + col1m + col1l + col1x + col1f);
       
       var col2s = parseInt($("#col2s").val());
       var col2m = parseInt($("#col2m").val());
       var col2l = parseInt($("#col2l").val());
       var col2x = parseInt($("#col2x").val());
       var col2f = parseInt($("#col2f").val());
       $('#col2tot').val(col2s + col2m + col2l + col2x + col2f);
       
       var col3s = parseInt($("#col3s").val());
       var col3m = parseInt($("#col3m").val());
       var col3l = parseInt($("#col3l").val());
       var col3x = parseInt($("#col3x").val());
       var col3f = parseInt($("#col3f").val());
       $('#col3tot').val(col3s + col3m + col3l + col3x + col3f);
       
       var col4s = parseInt($("#col4s").val());
       var col4m = parseInt($("#col4m").val());
       var col4l = parseInt($("#col4l").val());
       var col4x = parseInt($("#col4x").val());
       var col4f = parseInt($("#col4f").val());
       $('#col4tot').val(col4s + col4m + col4l + col4x + col4f);
       
       var s = col1s + col2s + col3s + col4s;
       var m = col1m + col2m + col3m + col4m;
       var l = col1l+ col2l + col3l + col4l;
       var x = col1x + col2x + col3x + col4x;
       var f = col1f + col2f + col3f + col4f;
       $('#s').val(s);
       $('#m').val(m);
       $('#l').val(l);
       $('#x').val(x);
       $('#f').val(f);
       $('#totQty').val(s + m + l + x + f);
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
	
});

//새 상품 등록 버튼 누르면 모달창이 뙇
$('#newItemAdd').click(function(){
	$('#itemModal').modal();
});
   
</script>