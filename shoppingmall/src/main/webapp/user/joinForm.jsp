<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<h4 class="h4-joinform">회원가입</h4>
<form name="joinForm" id="joinForm" method="post" action="/shoppingmall/user/join.do">
	<div class="joinForm-joinform">

		<table class="tableForm-joinform">
			<tr>
				<td class="checkMessage-joinform">
					<input class="input-joinform inputName-joinform" type="text" name="name" placeholder="이름">
					<div class="checkMessageDiv-joinform nameCheck-joinform"></div>
				</td>
			</tr>
			<tr>
				<td class="checkMessage-joinform">
					<input class="input-joinform inputId-joinform" type="text" name="id" placeholder="아이디">
					<input type="hidden" id="idCheck-hidden-joinform" value="">
					<div class="checkMessageDiv-joinform idCheck-joinform"></div>
				</td>
			</tr>
			<tr>
				<td class="checkMessage-joinform">
					<input class="input-joinform inputPwd-joinform" type="password" name="pwd" placeholder="비밀번호">
					<div class="checkMessageDiv-joinform pwdCheck-joinform"></div>
				</td>
			</tr>
			<tr>
				<td class="checkMessage-joinform">
					<input class="input-joinform inputPwd2-joinform" type="password" name="email1" placeholder="비밀번호 확인">
					<div class="checkMessageDiv-joinform pwdDoublecheck-joinform"></div>
				</td>
			</tr>
			<tr>
				<td class="checkMessage-joinform">
					<input class="input-joinform inputTel-joinform inputTel-joinform" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="tel" placeholder="헨드폰">
					<div class="checkMessageDiv-joinform telCheck-joinform"></div>	
				</td>
			</tr>
			<tr>
				<td class="checkMessage-joinform">
					<input class="input-joinform inputLast-joinform inputEmail-joinform" type="email" name="email" placeholder="이메일"><!-- email Type효과가 안먹음 -->
					<div class="checkMessageDiv-joinform emailCheck-joinform"></div></td>
			</tr>
		</table>
	</div>
	<div class="agreeDiv-joinform">
		<p>약관에 동의 하십니까?</p>
		<input class="input-joinform agree-joinform" type="checkbox"
			name="agree" value="agree"> 약관동의(약관서 추가 예정)<br>

	</div>
	<div class="joinDiv-joinform">
		<input type="button" class="input-joinform joinBtn-joinform"
			name="joinBtn" value="가입하기">
	</div>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//회원가입 유효성검사

$('.joinBtn-joinform').click(function(){
	$('.nameCheck-joinform').empty();
	$('.idCheck-joinform').empty();
	$('.pwdCheck-joinform').empty();
	$('.pwdDoublecheck-joinform').empty();
	$('.telCheck-joinform').empty();
	$('.emailCheck-joinform').empty();
	
	if($('.inputName-joinform').val()==''){
		$('.nameCheck-joinform').text('이름을 입력하세요');
	}else if($('.inputId-joinform').val()==''){
		$('.idCheck-joinform').text('아이디를 입력하세요');
	}else if($('#idCheck-hidden-joinform').val()==''){
		alert("아이디 중복체크가 완료되지 않았습니다");
	}else if($('.inputPwd-joinform').val()==''){
		$('.pwdCheck-joinform').text('비밀번호를 입력하세요');
	}else if($('.inputPwd-joinform').val()!=$('.inputPwd2-joinform').val()){
		$('.pwdDoublecheck-joinform').text('비밀번호가 일치하지 않습니다');
	}else if($('.inputTel-joinform').val()==''){//헨드폰번호입력
		$('.telCheck-joinform').text('헨드폰 번호를 입력하세요');
	}else if($('.inputEmail-joinform').val()==''){
		$('.emailCheck-joinform').text('이메일을 입력하세요');
	}else if(!$('.agree-joinform').prop('checked')) {
		alert('약관에 동의해주세요');
	}else {
		$('#joinForm').submit();
	}
});

//중복체크

$('.inputId-joinform').focusout(function(){
	if($('.inputId-joinform').val()=='')
		$('.idCheck-joinform').text("먼저 아이디를 입력하세요");
	else 
		$.ajax({
			type : 'post',
			url  : '/shoppingmall/user/checkId.do',
			data : "id="+$('.inputId-joinform').val(),
			dataType : 'text',
			success : function(data){
				if(data=='exist'){
					$('.idCheck-joinform').html('이미 사용 중인 아이디입니다').css('color', 'red');
					$('#idCheck-hidden-joinform').val("");
				}else if(data=='not_exist'){
					$('.idCheck-joinform').html('사용 가능한 아이디입니다').css('color', 'blue');
					$('#idCheck-hidden-joinform').val($('.inputId-joinform').val());
				}
			}
		});
});
</script>