<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/modifyform-style.css">

<!-- 본인확인창 -->
<h4>본인 확인</h4>

<form name="modifyCheckForm" id="modifyForm">
  <div class="modifyCheckDiv">
  	<table class="modifyCheckTable">
  	  <tr>
  	    <td>
  	      <span>본인 확인을 위하여 비밀번호를 입력해주세요.<br><br><br></span>
  	    </td>
  	  </tr>
  	  <tr>
  	    <td>
	      <input type="text" name="id" id="id" value="${userDTO.id }" readonly />
	    </td>
  	  </tr>
  	  <tr>
	    <td>
	      <input type="password" name="pwd" id="pwd" onkeyup="enterkey();" placeholder="PASSWORD" />
  		</td>
  	  </tr>
  	  <tr>
	   	<td>
	   	  <input type="button" id="inputBtn" value="입력" class="inputBtn"/>
  		</td>
  	  </tr>
    </table>
  </div>
</form>

<script>
$(document).ready(function() {
	 document.modifyCheckForm.pwd.focus();
});
$('#inputBtn').click(function(){
	if($('#pwd').val()=='')
		alert("비밀번호를 입력해주세요")
	else
		$.ajax({
			type : 'POST',
			url : '/shoppingmall/user/loginCheck.do',
			data : {"id":$('#id').val(),
					"pwd":$('#pwd').val()},
			dataType : 'text',
			success : function(data){
				if(data=='loginFail'){
					alert("비밀번호가 틀렸습니다. 다시 확인해주세요.");
				}else if(data=='loginOk'){
					location.href='/shoppingmall/user/modifyForm.do';
				}
			}
		});	
});

function enterkey() {
    if (window.event.keyCode == 13) {
    
         // 엔터키가 눌렸을 때 실행할 내용
    	if($('#pwd').val()=='')
    		alert("비밀번호를 입력해주세요")
    	else
    		$.ajax({
    			type : 'POST',
    			url : '/shoppingmall/user/loginCheck.do',
    			data : {"id":$('#id').val(),
    					"pwd":$('#pwd').val()},
    			dataType : 'text',
    			success : function(data){
    				if(data=='loginFail'){
    					alert("비밀번호가 틀렸습니다. 다시 확인해주세요.");
    				}else if(data=='loginOk'){
    					location.href='/shoppingmall/user/modifyForm.do';
    				}
    			}
    		});	
    }
}
</script>