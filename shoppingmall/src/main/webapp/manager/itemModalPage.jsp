<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="modal fade bd-example-modal-xl" id="itemModal" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
<form name="itemboardWriteForm" id="itemboardWriteForm" method="post" enctype="multipart/form-data" action="/shoppingmall/manager/itemboardWrite.do">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">새 상품 등록</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body modal-body-managerPage">
				<div class="input-group mb-3 addnewItemDiv1grid">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">상품 코드</span>
					</div>
					<input type="text" name="itemCode" id="itemCode" class="form-control" value="M">
				</div>
				<div class="input-group mb-3 addnewItemDiv1grid">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">상품명</span>
					</div>
					<input type="text" name="itemName" id="itemName" class="form-control">
				</div>
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">판매 단가</span>
								</div>
								<input type="number" min="0" step="1000" name="salePrice" id="salePrice" class="form-control">
							</div>
						</div>
						<div class="col">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">상품 원가</span>
								</div>
								<input type="number" min="0" step="1000" name="costPrice" id="costPrice" class="form-control">
							</div>
						</div>
					</div>
				</div>
				<div class="tableDivModal">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">색상/사이즈</th>
								<th scope="col">S(90)</th>
								<th scope="col">M(95)</th>
								<th scope="col">L(100)</th>
								<th scope="col">XL(105)</th>
								<th scope="col">FREE</th>
								<th scope="col">TOTAL</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">
									<input type="text" name="col1" id="col1" size="10" class="colInputModal" list="col1List" placeholder="색상1 입력">
									<datalist id="col1List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist>
								</th>

								<td>
									<input type="number" min="0" step="10" name="col1s" id="col1s" value="0" class="sizeInputModal">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col1m" id="col1m" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col1l" id="col1l" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col1x" id="col1x" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col1f" id="col1f" value="0">
								</td>
								<td>
									<input type="text" name="col1tot" id="col1tot" value="0" size="5" class="sizeInputModal" readonly>
								</td>
							</tr>

							<tr>
								<th scope="row"><input type="text" name="col2" id="col2" size="10" class="colInputModal" list="col2List" placeholder="색상2 입력">
									<datalist id="col2List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist>
								</th>

								<td>
									<input type="number" min="0" step="10" name="col2s" id="col2s" value="0" class="sizeInputModal">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col2m" id="col2m" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col2l" id="col2l" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col2x" id="col2x" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col2f" id="col2f" value="0">
								</td>
								<td>
									<input type="text" name="col2tot" id="col2tot" value="0" size="5" class="sizeInputModal" readonly>
								</td>
							</tr>

							<tr>
								<th scope="row">
									<input type="text" name="col3" id="col3" size="10" class="colInputModal" list="col3List" placeholder="색상3 입력">
									<datalist id="col3List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist>
								</th>

								<td>
									<input type="number" min="0" step="10" name="col3s" id="col3s" value="0" class="sizeInputModal">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col3m" id="col3m" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col3l" id="col3l" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col3x" id="col3x" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col3f" id="col3f" value="0">
								</td>
								<td>
									<input type="text" name="col3tot" id="col3tot" value="0" size="5" class="sizeInputModal" readonly>
								</td>
							</tr>

							<tr>
								<th scope="row">
									<input type="text" name="col4" id="col4" size="10" class="colInputModal" list="col4List" placeholder="색상4 입력">
									<datalist id="col4List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist>
								</th>

								<td>
									<input type="number" min="0" step="10" name="col4s" id="col4s" value="0" class="sizeInputModal">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col4m" id="col4m" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col4l" id="col4l" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col4x" id="col4x" value="0">
								</td>
								<td>
									<input type="number" min="0" step="10" class="sizeInputModal" name="col4f" id="col4f" value="0">
								</td>
								<td>
									<input type="text" name="col4tot" id="col4tot" value="0" size="5" class="sizeInputModal" readonly>
								</td>
							</tr>

							<tr>
								<th scope="row"></th>

								<td>
									<input type="text" name="s" id="s" value="0" class="sizeInputModal" readonly>
								</td>
								<td>
									<input type="text" class="sizeInputModal" name="m" id="m" value="0" readonly>
								</td>
								<td>
									<input type="text" class="sizeInputModal" name="l" id="l" value="0" readonly>
								</td>
								<td>
									<input type="text" class="sizeInputModal" name="x" id="x" value="0" readonly>
								</td>
								<td>
									<input type="text" class="sizeInputModal" name="f" id="f" value="0" readonly>
								</td>
								<td>
									<input type="text" name="totQty" id="totQty" value="0" class="sizeInputModal" readonly>
								</td>
							</tr>

						</tbody>
					</table>
				</div>

				<div class="input-group itemExplain">
					<div class="input-group-prepend">
						<span class="input-group-text">상품 설명</span>
					</div>
					<textarea name="itemContent" id="itemContent" class="form-control" aria-label="With textarea"></textarea>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지 1</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="img" id="img1" aria-describedby="inputGroupFileAddon01">
						<label class="custom-file-label" id="img1label" for="inputGroupFile01">Choose file</label>
					</div>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지 2</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="img" id="img2" aria-describedby="inputGroupFileAddon01">
						<label class="custom-file-label" id="img2label" for="inputGroupFile01">Choose file</label>
					</div>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지 3</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="img" id="img3" aria-describedby="inputGroupFileAddon01">
						<label class="custom-file-label" id="img3label" for="inputGroupFile01">Choose file</label>
					</div>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지 4</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="img" id="img4" aria-describedby="inputGroupFileAddon01">
						<label class="custom-file-label" id="img4label" for="inputGroupFile01">Choose file</label>
					</div>
				</div>

				<div class="input-group mb-3 addnewItemDiv1grid">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">키워드</span>
					</div>
					<input type="text" name="itemKeyword" id="itemKeyword" class="form-control">
				</div>


				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
						<button type="button" id="itemboardWriteBtn" class="btn btn-primary">등록하기</button>
						<button type="button" id="itemboardUpdateBtn" class="btn btn-primary">수정하기</button>
					<button type="reset" class="btn btn-primary">다시 쓰기</button>
				</div>
			</div>
  </div>
 </form>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#itemboardWriteBtn').click(function() {
    if ($('#itemCode').val() == 'M') {
		alert("상품 코드를 입력하세요.");
		document.itemboardWriteForm.itemCode.focus();
    } else if ($('#itemName').val() == '') {
    	alert("상품명을 입력하세요.");
    	document.itemboardWriteForm.itemName.focus();
    } else if ($('#salePrice').val() == '') {
    	alert("판매 단가를 입력하세요.");
    	document.itemboardWriteForm.salePrice.focus();
    } else if ($('#costPrice').val() == '') {
    	alert("상품 원가를 입력하세요.");
    	document.itemboardWriteForm.costPrice.focus();
    } else if ($('#col1').val() == '') {
    	alert("색상1을 입력하세요.");
    	document.itemboardWriteForm.col1.focus();
    } else if ($('#itemContent').val() == '') {
    	alert("상품 설명을 입력하세요.");
    	document.itemboardWriteForm.itemContent.focus();
    } else if ($('#itemKeyword').val() == '') {
    	alert("상품 키워드를 입력하세요.");
    	document.itemboardWriteForm.itemKeyword.focus();
    }else {
       $('#itemboardWriteForm').submit();
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
 
$(document).ready(function(){ 
	var fileTarget = $('#img1'); 
	fileTarget.on('change', function(){ // 값이 변경되면
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; 
		} else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
			} 
	
	// 추출한 파일명 삽입 
	//$("label[for = 'inputGroupFile01']").text(filename);
	$("label[id='img1']").text(filename);
	});
	
	var fileTarget = $('#img2'); 
	fileTarget.on('change', function(){ // 값이 변경되면
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; 
		} else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
			} 
	
	// 추출한 파일명 삽입 
	//$("label[for = 'inputGroupFile01']").text(filename);
	$("label[id='img2']").text(filename);
	});
	
	var fileTarget = $('#img3'); 
	fileTarget.on('change', function(){ // 값이 변경되면
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; 
		} else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
			} 
	
	// 추출한 파일명 삽입 
	//$("label[for = 'inputGroupFile01']").text(filename);
	$("label[id='img3']").text(filename);
	});
	
	var fileTarget = $('#img4'); 
	fileTarget.on('change', function(){ // 값이 변경되면
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; 
		} else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
			} 
	
	// 추출한 파일명 삽입 
	//$("label[for = 'inputGroupFile01']").text(filename);
	$("label[id='img4']").text(filename);
	});
}); 

</script>