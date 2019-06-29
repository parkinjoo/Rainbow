<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/modifyform-style.css">

<!-- 내 정보 수정창 -->
<h4>내 정보 수정</h4>
<form id="modifyForm" method="post" action="/shoppingmall/user/modify.do">
	<div class="modifyFormDiv">
		<table class="modifyTable">
			<tr>
			  <td>
			  	<input type="text" id="name" name="name" value="${userDTO.name }" placeholder="이름">
			  	<p id="nameDiv"></p>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="text" id="id" name="id" value="${userDTO.id }" readonly>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="password" id="pwd" name="pwd" placeholder="새비밀번호">
			  	<p id="pwdDiv"></p>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="password" id="repwd" name="repwd" placeholder="새비밀번호 확인">
			  	<p id="repwdDiv"></p>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="text" id="email" name="email" value="${userDTO.email }" placeholder="이메일">
			  	<p id="emailDiv"></p>
			  </td>
			</tr>
		</table>
	</div>
	<div class="modifyDiv">
		<input type="button" class="modifyBtn" name="modifyBtn" value="수정하기">
	</div>
</form>

<script type="text/javascript">
$('.modifyBtn').click(function(){
	$('#nameDiv').empty();
	$('#pwdDiv').empty();
	$('#repwdDiv').empty();
	if($('#name').val()==''){
		$('#nameDiv').text('이름을 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#pwd').val()==''){
		$('#pwdDiv').text('새비밀번호를 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#repwd').val()!=$('#pwd').val()){
		$('#repwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#email').val()==''){
		$('#emailDiv').text('이메일을 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else{
		$('#modifyForm').submit();
	}
});
</script>