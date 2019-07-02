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
			  	<input type="text" id="tel" name="tel" value="${userDTO.tel }" placeholder="헨드폰 번호" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
			  	<p id="telDiv"></p>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="email" id="email" name="email" value="${userDTO.email }" placeholder="이메일">
			  	<p id="emailDiv"></p>
			  </td>
			</tr>
			
			<tr>
				<td>
					<input type="text" id="zipcode" name="zipcode" value="${userDTO.zipcode }" >
					<input type="button" value="우편번호검색" onclick="checkPost()">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text"  id="addr1" name="addr1" value="${userDTO.addr1 }" placeholder="주소">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="addr2" name="addr2" value="${userDTO.addr2 }" placeholder="상세 주소">
				</td>
			</tr>
			
		</table>
	</div>
	<div class="modifyDiv">
		<input type="button" class="modifyBtn" name="modifyBtn" value="수정하기">
	</div>
</form>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$('.modifyBtn').click(function(){
	$('#nameDiv').empty();
	$('#pwdDiv').empty();
	$('#repwdDiv').empty();
	$('#telDiv').empty();
	$('#emailDiv').empty();
	
	if($('#name').val()==''){
		$('#nameDiv').text('이름을 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#pwd').val()==''){
		$('#pwdDiv').text('새비밀번호를 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#repwd').val()!=$('#pwd').val()){
		$('#repwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#tel').val()==''){
		$('#telDiv').text('헨드폰 번호를 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#email').val()==''){
		$('#emailDiv').text('이메일을 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
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
