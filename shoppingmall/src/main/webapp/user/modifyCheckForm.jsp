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
	      <input type="password" name="password" id="pwd" placeholder="PASSWORD" />
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
$('#inputBtn').click(function(){
	if($('#pwd').val()=='')
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
					alert("비밀번호가 틀렸습니다. 다시 확인해주세요.");
				}else if(data=='loginOk'){
					location.href='/shoppingmall/user/modifyForm.do';
				}
			}
		});	
});
</script>