<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>        
<head>
<link rel="stylesheet" href="../css/Withdrawal-style.css"> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div id="mySecede">
	<div class="page-body">
		<div class="d-box-wrap">
			<h3>회원정보 탈퇴신청</h3>
		      <div class="d-box">
		        <ul>
		          <li class="t1">
		                저희 쇼핑몰의 부족했던 점과 아쉬웠던 점을 적어주십시오. 더 좋은 모습으로 발전하도록 최선을 다하겠습니다.<br />
		                앞으로 더 나은 모습으로 고객님을 다시 만날 수 있도록 노력하겠습니다. 그동안 이용해주신 것을 진심으로 감사드립니다.
		          </li>
		          <li class="t2">
		                탈퇴 사유를 적어주시면 쇼핑몰 운영에 적극 반영하겠습니다.
		          </li>
		        </ul>
		      </div>
		</div><!-- .dbox-wrap -->   
	
		<!-- 사유 입력 폼 -->	 
		<div class="scede-frm">
		    <fieldset>
		       <div class="tb-center">
		       <textarea id="reason"  class="MS_input_textarea txt-area1" name="reason" rows="10" cols="70"></textarea></div>       
		        <div class="btn-foot">
		            <a href="javascript:userexit('${userDTO.id}')" class="Withdrawal_CSSbuttonBlack">회원탈퇴</a>
		            <a href="/shoppingmall/user/myPageForm.do" class="Withdrawal_CSSbuttonWhite">취소하기</a>
		        
		        </div>
		    </fieldset>
		</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function userexit(id){
	
	var reason = $('#reason').val();
	
	$.ajax({
		type : 'post',
		url : '/shoppingmall/user/out.do',
		data : {"id":id,"reason":reason},
		dataType : "text",
		success : function(data){
			
			if(data=='out'){
				alert('회원탈퇴 성공')
				location.href="/shoppingmall/main/index.do";
			}	
		}
			
	})

}

</script>
