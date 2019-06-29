<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="join-complete-join">
	<img src="../images/success.png" id="join-complete-img-join">
	<h4 class="title">내 정보 수정 완료</h4>
	<p>
		회원님의 정보 수정이 성공적으로 이루어졌습니다!<br>즐거운 쇼핑 되세요!
	</p>
	<input type="button" id="goMainBtn-join" value="메인으로">
</div>
<script>
$('#goMainBtn-join').click(function(){
	location.href="/shoppingmall/main/index.do";
});
</script>

