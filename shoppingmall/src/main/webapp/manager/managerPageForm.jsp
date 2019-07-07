<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자 페이지 접근중</title>
<link rel="stylesheet" href="../css/modifyform-style.css">
</head>
<body>
<form name="modifyCheckForm" id="modifyForm">
  <div class="modifyCheckDiv">
  	<table class="modifyCheckTable">
  	  <tr>
  	    <td>
  	      <span><strong>관리자 아이디와 비밀번호를 입력해주세요.</strong><br><br><br></span>
  	    </td>
  	  </tr>
  	  <tr>
  	    <td>
	      <input type="text" name="id" id="id" onkeyup="enterkey();" placeholder="ID" />
	    </td>
  	  </tr>
  	  <tr>
	    <td>
	      <input type="password" name="password" id="pwd" onkeyup="enterkey();" placeholder="PASSWORD" />
  		</td>
  	  </tr>
  	  <tr>
	   	<td>
	   	  <input type="button" id="inputBtn" value="입력" class="inputBtn" />
  		</td>
  	  </tr>
    </table>
  </div>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function() {
	 document.modifyCheckForm.id.focus();
});

$('#inputBtn').click(function(){
	var id=$('#id').val();
	var pwd=$('#pwd').val();

	if(id=='') {
		alert('아이디를 입력해 주세요.');
	}else if(pwd=='') {
		alert("비밀번호를 입력해주세요")
	}else {	
		$.ajax({
			type : 'POST',
			url : '/shoppingmall/user/managerLogin.do',
			data : {"id":id,
					"pwd":pwd},
			dataType : 'text',
			success : function(data){
				if(data=='loginFail'){
					alert("올바르지 않은 정보입니다. 다시 확인해주세요.");
				}else if(data=='loginOk'){
					location.href='/shoppingmall/manager/managerPage.do';
				}
			}
		});	
	}
});

function enterkey() {
    if (window.event.keyCode == 13) {
    
         // 엔터키가 눌렸을 때 실행할 내용
         var id=$('#id').val();
		var pwd=$('#pwd').val();
	
		if(id=='') {
			alert('아이디를 입력해 주세요.');
		}else if(pwd=='') {
			alert("비밀번호를 입력해주세요")
		}else {	
			$.ajax({
				type : 'POST',
				url : '/shoppingmall/user/managerLogin.do',
				data : {"id":id,
						"pwd":pwd},
				dataType : 'text',
				success : function(data){
					if(data=='loginFail'){
						alert("올바르지 않은 정보입니다. 다시 확인해주세요.");
					}else if(data=='loginOk'){
						location.href='/shoppingmall/manager/managerPage.do';
					}
				}
			});	
		}
    }
}
</script>

</html>