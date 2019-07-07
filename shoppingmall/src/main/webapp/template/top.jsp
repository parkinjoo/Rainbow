<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<header>
  <div class="header1-index">
    <div class="headerDiv-index">
      <ul class="nav justify-content-end justify-content-end-index">
       <c:if test="${userDTO != null }">
       	<li class="nav-item">
          <a class="nav-link nav-link2-index" id="userId-index">${userDTO.id }님 환영합니다</a>
        </li>
      	<li class="nav-item">
          <a class="nav-link nav-link2-index" id="logout" href="/shoppingmall/user/logout.do">LOGOUT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link nav-link2-index" href="/shoppingmall/user/myPageForm.do">MY PAGE</a>
        </li>
      </c:if>
      <c:if test="${userDTO == null }">
      	<li class="nav-item">
          <a class="nav-link nav-link2-index active " href="/shoppingmall/user/loginForm.do">LOGIN</a>
        </li>      
        <li class="nav-item">
          <a class="nav-link nav-link2-index" href="/shoppingmall/user/joinForm.do">JOIN</a>
        </li>
      </c:if>

        <li class="nav-item">
          <a class="nav-link nav-link2-index"  tabindex="-1" aria-disabled="true" href="/shoppingmall/itemboard/itemBasketList.do">CART</a>
        </li>
        
      	<c:if test="${userDTO.userCode == 1 }">
	        <li class="nav-item">
	          <a class="nav-link nav-link2-inde nav-link3" id="managerPage" href="/shoppingmall/manager/managerPage.do" >관리자 페이지</a>
	        </li>
        </c:if>        
      </ul>
    </div>
  </div>
  <br/><br/>
  <div class="logoArea-index header2">
    <img src="../images/logo_img.png" id="logoImg-index" style="cursor: pointer;">
  </div>

  <!-- navigation -->
	 <nav class="nav nav-pills nav-justified">
    <ul class="nav nav-pills nav-justified nav-area-index">
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1-index" id="top" href="#">TOP</a>

          <ul class="dropMenu-index">
            <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MT00">반팔 티셔츠</a></li>
            <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MT01">긴팔 티셔츠</a></li>
            <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MT02">나시</a></li>
          </ul>

      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MP">PANTS</a>
        <ul class="dropMenu-index">
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MP00">청바지</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MP01">반바지</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MP02">슬렉스</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MP03">정장바지</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MS">SHIRTS</a>
        <ul class="dropMenu-index">
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MS00">와이 셔츠</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MS01">캐주얼 셔츠</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MS02">반팔 셔츠</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MS03">린넨 셔츠</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MF">SHOES</a>
        <ul class="dropMenu-index">
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MF00">운동화</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MF01">구두</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MF02">슬리퍼</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MF03">샌들</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=FF04">하이힐</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MO">OUTER</a>
        <ul class="dropMenu-index">
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MO00">자켓</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MO01">야상</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=MO02">오리털 잠바</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=ME">ETC</a>
        <ul class="dropMenu-index">
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=ME00">시계</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=ME01">팔찌</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=ME02">반지</a></li>
          <li class="drop-item-index"><a class="drop-link-index" href="/shoppingmall/itemboard/itemboardList.do?categoryCode=ME03">목걸이</a></li>
        </ul>
      </li>
    </ul>
  </nav>
</header>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script> 
 
 //중앙 상단 로고 이미지 버튼을 누르면 메인페이로 회귀
 $('#logoImg-index').click(function(){	
	  location.href="/shoppingmall/main/index.do";
 });
 
 //로그아웃
 $('#logout').click(function(){
	 if(confirm("로그아웃 하시겠습니까?")) {
		 location.href="/shoppingmall/user/logout.do";
	  }else {
		  return false;
	  }
 });
 
$(document).ready(function(){
	var jboffset = $('.header1-index').offset();	
	$(window).scroll(function(){
		if($(document).scrollTop() > jboffset.top)
			$('.header1-index').addClass('jbFixed');
		else
			$('.header1-index').removeClass('jbFixed');
	});	
});
 </script>
