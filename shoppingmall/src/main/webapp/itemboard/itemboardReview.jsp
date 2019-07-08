<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="../css/review.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="0" cellpading="0" cellpacing="0" width="1200">
	<tr id="review_name">
		<td colspan="1" align="center">
			<font color="black" size="2" face="돋움">작성자</font>
		</td>
		<td align="left" colspan="1">
			<input type="text" id="re_input_name" value=${userDTO.name }>
		</td>
	</tr>
	<tr id="review_content">
		<td align="center" colspan="1" height="30">
			<font color="black" size="2" face="돋움">리뷰 내용</font>
		</td>
		<td height="10" colspan="2">
			<textarea class="review_txt" placeholder="로그인후 작성가능합니다"></textarea>
		</td>
	</tr>
	<tr>
		<td align="center" colspan="1" height="20">
			<font color="black" size="2" face="돋움">사진 등록</font>
		<td height="10" colspan="2">
			<input type="file" class="custom-file-input" name="img" id="img1">
	</tr>
	<tr>
		<td align="center" colspan="1" height="20">
			<font color="black" size="2" face="돋움">사진 등록</font>
		<td height="10" colspan="2">
			<input type="file" class="custom-file-input" name="img" id="img2">
	</tr>
	<tr>
		<td align="right" colspan="3">
			<input type="button" id="sb_review" value="리뷰 등록하기">
		</td>
	</tr>	
</table>

</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$('.review_txt').click(function(){
	if(${userDTO == null})
		alert('로그인후 작성가능합니다 ')
		
})

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
	
$('#sb_review').click(function(){
	if($('.review_txt').val()== null || $('.review_txt').val()=="로그인후 작성가능합니다"){
		alert('리뷰를 작성해주세요')
	}
	$.ajax({
		type: 'POST',
		url: '/shoppingmall/itemboard/review.do',
		data: {'name': ${'#re_input_name'},
				'itemCode': '${itemCode}',
				 'categoryCode': '${categoryCode}'},
		dataType : 'json',
		success : function(data){
			
		}
		})
	}
})

</script>
</html>