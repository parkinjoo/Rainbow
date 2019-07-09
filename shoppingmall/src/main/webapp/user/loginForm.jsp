<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="login-box-loginform">
  <div class="left-box-loginform">
    <div class="formDiv">
    <h1 class="login-title-loginform"><b>회원 로그인</b></h1>
    <p class="login-text-loginform">가입하신 아이디와 비밀번호를 입력해주세요.<br>
      비밀번호는 대소문자를 구분합니다.</p>
      <form name="joinForm" id="joinForm">
        <input class="inputText-loginform" type="text" name="id" id="id" onkeyup="enterkey();" placeholder="MEMBER ID" />
        <input class="inputText-loginform" type="password" name="pwd" id="pwd" onkeyup="enterkey();" placeholder="PASSWORD" />
        <input type="button" value="로그인" class="loginBtn-loginform"/>
      </form>
    </div>
  </div>
  <div class="right-box-loginform">
    <h1 class="login-title-loginform"><b>회원 가입</b></h1>
    <p class="login-text-loginform" class="right-text">아직 회원이 아니신가요?<br>
    회원가입을 하시면 다양한 혜택을 편리하게 이용하실 수 있습니다.</p>
    <input type="button" value="회원 가입" class="joinBtn-loginform btn-loginform"/>
    <p class="login-text-loginform" class="right-text">아이디 혹은 비밀번호를 잊으셨나요?<br>
    간단한 정보를 입력 후 잃어버린 정보를 찾을 수 있습니다.</p>
    <input type="button" value="ID/PASSWORD" class="searchBtn btn-loginform"/>
  </div>
</div>
<div class="social-login-loginform">
  <button type="button" class="social-loginBtn-loginform facebook-loginform">페이스북으로 시작하기</button>
  <button type="button" class="social-loginBtn-loginform kakao-loginform">카카오로 시작하기</button>
  <button type="button" class="social-loginBtn-loginform naver-loginform">네이버로 시작하기</button>
</div>
<hr>
<div class="nonMemberDiv-loginform">
  <h3 id="nonMember-title-loginform" style="font-weight : bold">비회원 구매 상품 조회</h3>
  <form name="nonMemberForm" id="nonMemberForm">
    <input class="inputText-loginform" type="text" name="name" id="nonMemberName-loginform" placeholder="이름을 입력해주세요" />
    <input class="inputText-loginform" type="password" name="code" id="nonMemberCode-loginform" placeholder="비회원 번호를 입력해 주세요" />
    <input type="button" value="상품 조회" class="searchingItemBtn-loginform"/>
  </form>
</div>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script>
 $(document).ready(function() {
	 document.joinForm.id.focus();
 });
 $('.loginBtn-loginform').click(function(){
		if($('#id').val()=='')
			alert("아이디를 입력해주세요")
		else if($('#pwd').val()=='')
			alert("비밀번호를 입력해주세요")
		else
			$.ajax({
				type : 'POST',
				url : '/shoppingmall/user/login.do',
				data : {"id":$('#id').val(),
						"pwd":$('#pwd').val()},
				dataType : 'text',
				success : function(data){
					if(data=='loginFail'){
						alert("아이디또는 비밀번호를 확인해주세요");
					}else if(data=='loginOk'){
						location.href='/shoppingmall/main/index.do';
					}
				}
			});	
});
 
$('.joinBtn-loginform').click(function(){
	location.href='/shoppingmall/user/joinForm.do';
})

$('.searchBtn').click(function(){
	location.href='/shoppingmall/user/findForm.do';
})

function enterkey() {
    if (window.event.keyCode == 13) {
    
         // 엔터키가 눌렸을 때 실행할 내용
    	if($('#id').val()=='')
    		alert("아이디를 입력해주세요")
    	else if($('#pwd').val()=='')
    		alert("비밀번호를 입력해주세요")
    	else
    		$.ajax({
    			type : 'POST',
    			url : '/shoppingmall/user/login.do',
    			data : {"id":$('#id').val(),
    					"pwd":$('#pwd').val()},
    			dataType : 'text',
    			success : function(data){
    				if(data=='loginFail'){
    					alert("아이디또는 비밀번호를 확인해주세요");
    				}else if(data=='loginOk'){
    					location.href='/shoppingmall/main/index.do';
    				}
    			}
    		});
    }
}
 </script>