<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${userCheck != ture}">
	<h4 class="h4-joinform">내 정보 수정</h4>
	<form name="modifyForm" id="modifyForm" method="post" action="/shoppingmall/user/modify.do">
		<div class="joinForm-joinform">
			<table class="tableForm-joinform">
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputName-joinform" 
						type="text" name="name" id="name" value="${userDTO.name }" placeholder="이름">
						<div class="checkMessageDiv-joinform nameCheck-joinform"></div>
					</td>
				</tr>
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputId-joinform" 
						type="text" name="id" id="id" value="${userDTO.id }" placeholder="아이디" readonly>
						<input type="hidden" id="idCheck-hidden-joinform" value="">
						<div class="checkMessageDiv-joinform idCheck-joinform"></div>
					</td>
				</tr>
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputPwd-joinform" 
						type="password" name="pwd" id="pwd" placeholder="새 비밀번호">
						<div class="checkMessageDiv-joinform pwdCheck-joinform"></div>
					</td>
				</tr>
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputPwd2-joinform" 
						type="password" name="email1" id="repwd" placeholder="새 비밀번호 확인">
						<div class="checkMessageDiv-joinform pwdDoublecheck-joinform"></div>
					</td>
				</tr>
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputTel-joinform inputTel-joinform" type="text" 
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${userDTO.tel }" id="tel" name="tel" placeholder="휴대폰">
						<div class="checkMessageDiv-joinform telCheck-joinform"></div>	
					</td>
				</tr>
							<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputId-joinform" 
						type="text" name="zipcode" id="zipcode" value="${userDTO.zipcode }" placeholder="우편번호">
						<input type="hidden" id="idCheck-hidden-joinform" value="">
						<div class="checkMessageDiv-joinform idCheck-joinform postBtnDiv">
							<button type="button" class="btn btn-danger postBtn" onclick="checkPost()">우편번호 검색</button>
						</div>
					</td>
				</tr>
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputId-joinform" 
						type="text" name="addr1" id="addr1" value="${userDTO.addr1 }" placeholder="주소">
						<input type="hidden" id="idCheck-hidden-joinform" value="">
						<div class="checkMessageDiv-joinform idCheck-joinform"></div>
					</td>
				</tr>
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputId-joinform" 
						type="text" name="addr2" id="addr2" value="${userDTO.addr2 }" placeholder="상세 주소">
						<input type="hidden" id="idCheck-hidden-joinform" value="">
						<div class="checkMessageDiv-joinform idCheck-joinform"></div>
					</td>
				</tr>
				<tr>
					<td class="checkMessage-joinform">
						<input class="input-joinform inputLast-joinform inputEmail-joinform" 
						value="${userDTO.email }" type="email" name="email" id="email" placeholder="이메일"><!-- email Type효과가 안먹음 -->
						<div class="checkMessageDiv-joinform emailCheck-joinform"></div></td>
				</tr>
				
			</table>
		</div>
	
		<div class="joinDiv-joinform">
			<input type="button" class="input-joinform joinBtn-joinform"
				name="modifyBtn" id="modifyBtn" value="정보 수정하기">
		</div>
	</form>
</c:if>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if(!'${userCheck}'){
		alert("비정상적인 접근입니다.");
		location.href='/shoppingmall/main/index.do';
	}
});

$('#modifyBtn').click(function(){
	$('.nameCheck-joinform').empty();
	$('.pwdCheck-joinform').empty();
	$('.pwdDoublecheck-joinform').empty();
	$('.telCheck-joinform').empty();
	$('.emailCheck-joinform').empty();
	
	if($('#name').val()==''){
		$('.nameCheck-joinform').text('이름을 입력하세요');
	}else if($('#pwd').val()==''){
		$('.pwdCheck-joinform').text('새 비밀번호를 입력하세요');
	}else if($('#repwd').val()!=$('#pwd').val()){
		$('.pwdDoublecheck-joinform').text('비밀번호가 일치하지 않습니다');
	}else if($('#tel').val()==''){
		$('.telCheck-joinform').text('휴대폰 번호를 입력하세요');
	}else if($('#email').val()==''){
		$('.emailCheck-joinform').text('이메일을 입력하세요');
	}else{
		$('#modifyForm').submit();
	}
}); 

function checkPost() {
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("zipcode").value = extraAddr;
            
            } else {
                document.getElementById("zipcode").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("zipcode").value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}
</script>
