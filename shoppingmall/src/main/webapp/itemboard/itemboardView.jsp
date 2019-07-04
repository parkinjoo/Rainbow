<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>아이템 페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/index-style.css">
    <link rel="stylesheet" href="../css/itemPage-style.css">



  </head>
  <body>
  <div id="item-box-itemPage">
    <div class="left-box-itemPage">
     <%-- <img src="../storage/${itemboardDTO.img1}"> --%>
    </div>
    <div class="right-box-itemPage">
      <div class="topDiv-itemPage">
        <h6 class="itemName-itemPage"><b></b></h6>
        <c:if test="${itemboardDTO.col1f eq 0}">
       	 <p class="sizeTop-itemPage">S~XL</p>
        </c:if>
        <c:if test="${itemboardDTO.col1f > 0}">
       	 <p class="sizeTop-itemPage">FREE</p>
        </c:if>
      </div>
      <div class="middleDiv1">
        <p class="itemText-itemPage"></p>
          <table class="table-itemPage">
            <tr class="tr-itemPage">
              <td class="title-itemPage td-itemPage">판매가</td>
              <td class="itemPrice-itemPage"><b></b></td>
            </tr>
            <tr class="tr-itemPage">
              <td class="title-itemPage td-itemPage">색상</td>
              <td class="td-itemPage">
               	<select id="color_option" style="width: 110px;">
									
				</select>
              </td>
            </tr>
            <tr class="tr-itemPage">
              <td class="title-itemPage td-itemPage">사이즈</td>
              <td class="td-itemPage">
               	<c:if test="${itemboardDTO.col1f eq 0}">
			      			<select id="size_option" style="width: 110px;" onchange="">
									
							</select>
						</c:if>
						<c:if test="${itemboardDTO.col1f > 0}">					
							Free
						</c:if>
              </td>
            </tr>
            <tr class="tr-itemPage">
              <td class="title-itemPage">배송정보</td>
              <td class="td-itemPage"><a href="#" class="showItem-itemPage">실시간 재고 보기</a></td>
            </tr>
          </table>
      </div>
      <hr>
      <div class="middleDiv2">
        <p class="colorAndSize-itemPage">챠콜, S(28)</p><br>
        <input type="text" class="itemAccount-itemPage" value="1">

        <button type="button" class="accountBtn-itemPage plus">+</button>
        <button type="button" class="accountBtn-itemPage minus">-</button>

        <p class="price-itemPage">34,900원</p>
      </div>
      <hr>
      <p class="totalPric-itemPage"><span class="totalPriceText-itemPage">총 상품 금액</span> &nbsp;&nbsp;&nbsp;34,900원</p>
      <hr>
      <div class="btnDiv-itemPage">
        <button type="button" class="purchaseBtn-itemPage">BUY NOW</button>
        <button type="button" class="btn-itemPage cartBtn-itemPage">
          <img src="" class="cartImg-itemPage" >
        </button>
        <button type="button" class="btn-itemPage likeBtn-itemPage">
          <img src="" class="likeImg-itemPage">
        </button>
      </div>
    </div>
  </div>
  <div class="withItemDiv-itemPage">
    <div id="carouselExampleFade" class="carousel slide carousel-fade withItemDiv1-itemPage" data-ride="carousel">
      <div class="carousel-inner withItemDiv2-itemPage">
        <h3 class="withItem-itemPage">추천 코디</h3>
        <div class="carousel-item active withItemDiv3-itemPag">

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,901</p>
            </div>
          </div>

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>

        </div>

        <div class="carousel-item withItemDiv3-itemPag">

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,902</p>
            </div>
          </div>



          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>


          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>


          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>
        </div>

        <div class="carousel-item withItemDiv3-itemPage">

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,900</p>
            </div>
          </div>

          <div class="card innerDivTest1-itemPage" style="width: 14rem;">
            <img src="" class="card-img-top cardImg-itemPage" alt="...">
            <div class="card-body card-body-itemPage">
              <h5 class="card-title card-title-itemPage">슬랙스 9부 팬츠</h5>
              <p class="card-text card-text-itemPage">15,903</p>
            </div>
          </div>

        </div>

      </div>
      <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
    <hr>


  </body>
  
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>


$('.nav-area-index').on('click', function(){
  $($('.nav-item').children('ul')).slideDown();
});
$('.nav-area-index').on('mouseleave', function(){
  $($('.nav-item').children('ul')).slideUp();
});


//---선택한 색상에 배경색 입히기---

$('.red').click(function(){
  $('.colorLink-itemPage').css('background-color','')
                 .css('color', 'black');
  $('.red').css('background-color', 'red')
           .css('color', 'white');
})

$('.black').click(function(){
  $('.colorLink-itemPage').css('background-color','')
                 .css('color', 'black');
  $('.black').css('background-color', 'black')
           .css('color', 'white');
})

$('.yellow').click(function(){
  $('.colorLink-itemPage').css('background-color','')
                 .css('color', 'black');
  $('.yellow').css('background-color', 'yellow')

})

$('.green').click(function(){
  $('.colorLink-itemPage').css('background-color','')
                 .css('color', 'black');
  $('.green').css('background-color', 'green')
           .css('color', 'white');
})
//--선택한 색상에 배경색 입히기

//--선택한 사이즈에 배경색 입히기

$('.s28').click(function(){
  $('.sizeLink-itemPage').css('background-color', '');
  $('.s28').css('background-color', '#bdc3c7');
});

$('.m30').click(function(){
  $('.sizeLink-itemPage').css('background-color', '');
  $('.m30').css('background-color', '#bdc3c7');
});

$('.l32').click(function(){
  $('.sizeLink-itemPage').css('background-color', '');
  $('.l32').css('background-color', '#bdc3c7');
});

$('.xl34').click(function(){
  $('.sizeLink-itemPage').css('background-color', '');
  $('.xl34').css('background-color', '#bdc3c7');
});

$('.xxl36').click(function(){
  $('.sizeLink-itemPage').css('background-color', '');
  $('.xxl36').css('background-color', '#bdc3c7');
});



</script>

<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/shoppingmall/itemboard/getItemboardView.do',
		data: 'itemCode=${itemCode}&pg=${pg}&categoryCode=${categoryCode}',
		dataType: 'json',
		success: function(data){
			alert(JSON.stringify(data));
			 $('.itemName-itemPage').text(data.itemboardDTO.itemName);
			 $('.itemText-itemPage').text(data.itemboardDTO.itemContent);
			 $('.itemPrice-itemPage').text(data.itemboardDTO.salePrice);
			/*$('#salePrice').text(data.itemboardDTO.salePrice);
			$('#costPrice').text(data.itemboardDTO.costPrice);
			$('.itemcontent').text(data.itemboardDTO.itemContent);
			$('.saleprice_right').text(data.itemboardDTO.salePrice);
			
			
			$('#totQty').text(data.itemboardDTO.totQty);

			$('#itemContent').text(data.itemboardDTO.itemContent);
			
			$('#img1').prop('src', '../storage/'+data.itemboardDTO.img1);
			$('#img2').prop('src', '../storage/'+data.itemboardDTO.img2);
			$('#img3').prop('src', '../storage/'+data.itemboardDTO.img3);
			$('#img4').prop('src', '../storage/'+data.itemboardDTO.img4);
			
			$('#itemKeyword').text(data.itemboardDTO.itemKeyword);
			*/
			
			//컬러 셀렉트박스 유동적 변경
			$('#color_option').empty();
			$('<option/>',{
				value : '0',
				text : '색상선택'
			}).appendTo($('#color_option'));
			$('<option/>',{
				value : 'col1',
				text : data.itemboardDTO.col1
			}).appendTo($('#color_option'));
			$('<option/>',{
				value : 'col2',
				text : data.itemboardDTO.col2
			}).appendTo($('#color_option'));
			$('<option/>',{
				value : 'col3',
				text : data.itemboardDTO.col3
			}).appendTo($('#color_option'));
			$('<option/>',{
				value : 'col4',
				text : data.itemboardDTO.col4
			}).appendTo($('#color_option')); 
		} 
	});
});



$('#color_option').change(function(){
	
	//var color = '${itemCode}';
	//var color = {'${itemCode}'+$('#color_option').val()};
	//alert(color);
	
	 $.ajax({
		type : 'post',
		url : '/shoppingmall/itemboard/getSize.do',
		data : {'itemCode': '${itemCode}',
				'color': $('#color_option').val()},
		dataType : 'json',
		success : function(data){
			
			var color= $('#color_option').val();
			
			$('#size_option').empty();
			$('<option/>',{
				value : '0',
				text : '사이즈선택'
			}).appendTo($('#size_option')); 
			
			 if(color=='col1'){
				$('<option/>',{
					value : '11',
					text : 'S 수량:'+data.itemboardDTO.col1s
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '12',
					text : 'M 수량:'+data.itemboardDTO.col1m
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '13',
					text : 'L 수량:'+data.itemboardDTO.col1l
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '14',
					text : 'XL 수량:'+data.itemboardDTO.col1x
				}).appendTo($('#size_option'));
			}else if(color=='col2'){
				$('<option/>',{
					value : '21',
					text : 'S 수량:'+data.itemboardDTO.col2s
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '22',
					text : 'M 수량:'+data.itemboardDTO.col2m
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '23',
					text : 'L 수량:'+data.itemboardDTO.col2l
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '24',
					text : 'XL 수량:'+data.itemboardDTO.col2x
				}).appendTo($('#size_option'));
				
			}else if(color=='col3'){
				
				$('<option/>',{
					value : '31',
					text :'S 수량:'+data.itemboardDTO.col3s
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '32',
					text : 'M 수량:'+data.itemboardDTO.col3m
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '33',
					text : 'L 수량:'+data.itemboardDTO.col3l
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '34',
					text : 'XL 수량:'+data.itemboardDTO.col3x
				}).appendTo($('#size_option'));
			}else if(color=='col4'){
				$('<option/>',{
					value : '41',
					text : 'S 수량:'+data.itemboardDTO.col4s
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '42',
					text : 'M 수량:'+data.itemboardDTO.col4m
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '43',
					text : 'L 수량:'+data.itemboardDTO.col4l
				}).appendTo($('#size_option'));
				$('<option/>',{
					value : '44',
					text : 'XL 수량:'+data.itemboardDTO.col4x
				}).appendTo($('#size_option'));
			}   
		}
			
	}); 
	
	
})
// 장바구니 회원
if(${userDTO != null}){
	$('.cartImg-itemPage').onclick(function(){
		//alert("uerDTO.id=${userDTO.id}");
		
		var itemCode = $('#itemCode').val();
		var itemName = $('#itemName').val();
	    var itemPrice = $('#salePrice').val(); 
		var itemCol = $('#col1').val();
		var itemQty = $('#col1s').val();
		var id = '${userDTO.id }';
		$.ajax({
			type: 'post',
			url: '/shoppingmall/itemboard/itemBasket.do',
			data: 'itemCode='+itemCode+'&itemName='+itemName+'&itemPrice='+itemPrice+'&itemCol='+itemCol+'&itemQty='+itemQty+'&id='+id+'&categoryCode=${categoryCode}&pg=${pg}',
			success: function(){
				if(confirm("상품이 저장되었습니다. 장바구니로 가시겠습니까?")){
					location.href="/shoppingmall/itemboard/itemBasketList.do";
				}
				
			} 
		});
	});
//장바구니 비회원
} else if(${userDTO == null}){
	$('.cartImg-itemPage').click(function(){
		alert("로그인해주세여ㅛ");
	});
}

</script>










