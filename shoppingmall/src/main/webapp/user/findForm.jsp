<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../css/findform-style.css">
<meta charset="UTF-8">
<title>아이디-비밀번호찾기</title>
</head>
<div id="find-box">
	<div class="left-box">
	<h1 id="find-title">아이디 찾기</h1>
    <p id="find-text">회원가입 시, 입력하신 이름 + 이메일 로 아이디를 확인하실 수 있습니다.</p>
	    <div class="find-info">
	        <ul class="frm-list">
	            <li>
	                <label>NAME</label>
	                     <input type="text" id="name" name="name"> 
	            </li> 
	            <li id="find_id_email_wrap">
	                <label>E-MAIL</label>
	                       <input type="text" id="id_email" name="id_email" >
	            </li>
	            <li id="find_id_mobile_wrap" style="display:none;">
	           
	        </ul>
	        <div class="btn-area">
	            <input type="button" id="findIDcheck" value="아이디 찾기">
	            <input type="button" onClick="location.href='/shoppingmall/user/loginForm.do'" value="로그인">
	        </div>
   		</div>
   	</div>	
	<div class="right-box">
		<h1 id="find-title">비밀번호 찾기</h1>
	    <p id="find-text">회원가입 시, 입력하신 아이디 + 이메일 로 임시비밀번호를 발급합니다.</p>
		    <div class="find-info">
		        <ul class="frm-list">
		            <li>
		                <label>ID</label>
		                     <input type="text" id="id" name="id"> 
		            </li> 
		            <li id="fww">
		                <label>E-MAIL</label>
		                       <input type="text" id="pwd_email" name="pwd_email" >
		            </li>
		            <li id="fww" style="display:none;">
		           
		        </ul>
		        <div class="btn-area">
		            <input type="button" id="findPWDcheck" value="임시 비밀번호발급받기">
		            <input type="button" onClick="location.href='/shoppingmall/user/loginForm.do'" value="로그인">
		        </div>
	   		 </div>	
	</div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#findIDcheck').click(function(){
	if($('#name').val()==''|| $('#id_email').val()=='' )
		alert('이름 또는 이메일을 확인하세요')
		
	else
		$.ajax({
			type : 'post',
			url : '/shoppingmall/user/findId.do',
			data : {"name":$('#name').val(),"email":$('#id_email').val()},
			dataType : 'text',
			success : function(data){
				
				if(data!='findFail'){
					alert('찾으시는 아이디는 : '+data+ ' 입니다');
				}else if(data=='findFail'){
					alert('가입한적이 없는 회원입니다')
				}
			}
		});	

});


$('#findPWDcheck').click(function(){
	if($('#id').val()==''|| $('#pwd_email').val()=='' )
		alert('아이디 또는 이메일을 확인하세요')
		
	else
		$.ajax({
			type : 'post',
			url : '/shoppingmall/user/findPWD_mail.do',
			data : {"id":$('#id').val(),"email":$('#pwd_email').val()},
			dataType : 'text',
			success : function(data){
				
				if(data=='send'){
					alert("귀하의 이메일로 임시번호를 발급하였습니다")
				}else if(data=='fail'){
					alert("가입되지않은 아이디 혹은 이메일주소입니다 ")
				}
		
			}
		});
});

</script>
