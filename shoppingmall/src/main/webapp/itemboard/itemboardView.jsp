<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<<<<<<< HEAD
 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/itemPage-style.css">
=======
  <link rel="stylesheet" href="../css/itemPage-style.css">
  <body>
  
  <form name="viewForm" method="post" action="/shoppingmall/itemboard/itemPurchaseForm.do">
	<input type="hidden" name="imgName" value="${itemboardDTO.img1}" >
	<input type="hidden" name="itemCode" value="" >
	<input type="hidden" name="itemName" value="">
	<input type="hidden" name="colName" value="" >
	<input type="hidden" name="sizeName" value="" >
	<input type="hidden" name="initQty" value="" >
	<input type="hidden" name="salePrice" value="" >
	<input type="hidden" name="sumPrice" value="" >	
	<input type="hidden" name="colVal" value="" >	
</form>
>>>>>>> refs/heads/master
 
  <div id="item-box-itemPage">
    <div class="left-box-itemPage" style="background-image:url('../storage/${itemboardDTO.img1}')">
     
    </div>
    <div class="right-box-itemPage">
      <div class="topDiv-itemPage">
     <div id="itemCodeDiv"></div>
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
      <hr class ="itemList">
       <div class="middleDiv2">
        <!-- <p class="colorAndSize-itemPage"></p><br>
        <input type="text" class="itemAccount-itemPage" value="1">

        <button type="button" class="accountBtn-itemPage plus">+</button>
        <button type="button" class="accountBtn-itemPage minus">-</button>

        <p class="price-itemPage"></p>  -->
      </div>
      <hr>
      <p class="totalPric-itemPage"><span class="totalPriceText-itemPage"></span> &nbsp;&nbsp;&nbsp;</p>
      <hr>
      <div class="btnDiv-itemPage">
        <button type="button" class="purchaseBtn-itemPage">BUY NOW</button>
        <button type="button" class="btn-itemPage cartBtn-itemPage">
          <img src="../images/basket.gif" class="cartImg-itemPage">
        </button>
        <button class="btn-itemPage likeBtn-itemPage">
          <img src="" class="likeImg-itemPage">
        </button>
      </div>
    </div>
  </div>
  <div class="withItemDiv-itemPage ">
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
  <div class="itemPictureDiv">
     <img src="../storage/${itemboardDTO.img2 }">
     <img src="../storage/${itemboardDTO.img3 }">
     <img src="../storage/${itemboardDTO.img4 }">
  
  </div>
  
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
   $('#itemCodeDiv').hide();
   $.ajax({
      type: 'post',
      url: '/shoppingmall/itemboard/getItemboardView.do',
      data: 'itemCode=${itemCode}&pg=${pg}&categoryCode=${categoryCode}',
      dataType: 'json',
      success: function(data){
    	  $('#itemCodeDiv').text(data.itemboardDTO.itemCode);
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
            id : data.itemboardDTO.col1,
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
               value : 'col1s',
               text : 'S 수량:'+data.itemboardDTO.col1s
            }).appendTo($('#size_option'));
            $('<option/>',{
               value : 'col1m',
               text : 'M 수량:'+data.itemboardDTO.col1m
            }).appendTo($('#size_option'));
            $('<option/>',{
               value : '13',
               text : 'L 수량:'+data.itemboardDTO.col1l
            }).appendTo($('#size_option'));
            $('<option/>',{
               value : '14',
<<<<<<< HEAD
               text : 'XL 수량:'+data.itemboardDTO.col1x
=======
               text : 'X'
>>>>>>> refs/heads/master
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
<<<<<<< HEAD
               text : 'XL 수량:'+data.itemboardDTO.col2x
=======
               text : 'X'
>>>>>>> refs/heads/master
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
<<<<<<< HEAD
               text : 'XL 수량:'+data.itemboardDTO.col3x
=======
               text : 'X'
>>>>>>> refs/heads/master
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
<<<<<<< HEAD
               text : 'XL 수량:'+data.itemboardDTO.col4x
=======
               text : 'X'
>>>>>>> refs/heads/master
            }).appendTo($('#size_option'));
         }   
      }
         
   });    
});

<<<<<<< HEAD
var optionCnt = 1;//각 태그의 고유값을 주기위한 값 1씩 증가함
=======
var itemCode = new Array(); // 아이템 코드를 순서대로 넣을 배열

var colName = new Array();//선택된 컬러를 담을 배열

var sizeName = new Array(); //선택된 사이즈를 담을 배열

var colVal = new Array(); //컬러의 밸류값을 담을 배열

var optionCnt = 0;//각 태그의 고유값을 주기위한 값 1씩 증가함
>>>>>>> refs/heads/master

var salePrice = ${itemboardDTO.salePrice }; 

var sumPrice = 0; //선택한 물품의 수량의 총 가격을 담을 변수 

$('#size_option').change(function(){
   var itemCount = 1;
   
   var color= $('#color_option').val();
   var size = $('#size_option').val();
   var colorText = $('#color_option option:selected').text();
   var sizeText = $('#size_option option:selected').text();
   if(color==0){
      alert('색상을 선택하세요!');
   }
   else if(size==0){
      alert('사이즈를 선택하세요!');
   }
   else{
      //수량 선택을 할 태그 생성
       $('<p/>',{
          class : 'colorAndSize-itemPage '+optionCnt,
          text : colorText+sizeText,    
          style : 'border : 1px solid blue;'
       }).appendTo($('.middleDiv2'));
       
       $('<input/>',{
          type : 'text',
          class : 'itemAccount-itemPage',
          id : 'itemAccount-itemPage'+optionCnt,
          step : '1',
          min: '1',
          max: '0',
          size: '2',
          value : '1'
       }).appendTo($('.middleDiv2'));
       
       $('<button/>',{
          type : 'button',
          id : 'plus'+optionCnt,
          class : 'accountBtn-itemPage plus',
          text : '+'
       }).appendTo($('.middleDiv2'));
       
       $('<button/>',{
          type : 'button',
          id : 'minus'+optionCnt,
          class : 'accountBtn-itemPage minus',
          text : '-'
       }).appendTo($('.middleDiv2'));
       
       $('<p/>',{
          id : 'price-itemPage'+optionCnt,
          class : 'price-itemPage',
          text : salePrice
       }).appendTo($('.middleDiv2'));
       optionCnt++;
      
   }
});

<<<<<<< HEAD
=======
function listTagAdd(){
	var colorText = $('#color_option option:selected').text();
 	var sizeText = $('#size_option option:selected').text();
    var color= $('#color_option').val();
    var size = $('#size_option').val();
	//수량 선택을 할 태그 생성
    colName.push(colorText);
	sizeName.push(sizeText);
	itemName.push(getItemName);
	itemCode.push(getItemCode);
	colVal.push(color);
     $('<p/>',{
        class : 'colorAndSize-itemPage'+optionCnt,
        text : colorText+','+sizeText,    
        style : 'font-weight: bold; margin-bottom: 4px;'
     }).appendTo($('.middleDiv2'));
     
     $('<input/>',{
        type : 'text',
        class : 'itemAccount-itemPage',
        style : 'width: 50px; height: 35px; text-align: center;',
        id : 'itemAccount-itemPage'+optionCnt,
        step : '1',
        min: '1',
        max: '0',
        size: '2',
        value : '1'
     }).appendTo($('.middleDiv2'));
     
     $('<button/>',{
        type : 'button',
        id : 'plus'+optionCnt,
        class : 'accountBtn-itemPage plus',
        text : '+'
     }).appendTo($('.middleDiv2'));
     
     $('<button/>',{
        type : 'button',
        id : 'minus'+optionCnt,
        class : 'accountBtn-itemPage minus',
        text : '-'
     }).appendTo($('.middleDiv2'));
     
     $('<p/>',{
        id : 'price-itemPage'+optionCnt,
        class : 'price-itemPage',
        text : salePrice
     }).appendTo($('.middleDiv2'));
     
     $('<hr>', {
    	 
     }).appendTo($('.middleDiv2'));
     
     optionCnt++; //고유번호 증가
     sumPrice = sumPrice + salePrice; //새로운 항목 추가될때마다 최종합계 추가
     $('.totalPriceText-itemPage').text(sumPrice);
};

>>>>>>> refs/heads/master
//증가
$(document).on('click','.plus',function(){
   var id = $(this).attr('id');
   var num = id.charAt(id.length-1);
   var qty = $('#itemAccount-itemPage'+num).val();
   qty++;          
   $('#itemAccount-itemPage'+num).val(qty);
   $('#price-itemPage'+num).text(qty * salePrice);
   sumPrice = sumPrice+(qty * salePrice);
});

//감소
$(document).on('click','.minus',function(){
   var id = $(this).attr('id');
   var num = id.charAt(id.length-1);
   var qty = $('#itemAccount-itemPage'+num).val();
   if(qty > 1){
      qty--;   
      $('#itemAccount-itemPage'+num).val(qty);
      $('#price-itemPage'+num).text(qty * salePrice);
   }             
   $('#itemAccount-itemPage'+num).val(qty);
   
});


// 장바구니 회원

$('.cartImg-itemPage').click(function(){
   if(${userDTO != null}){
      
      var itemCode = $('#itemCodeDiv').text();
      var itemName = $('.itemName-itemPage').text();
      var itemCol = $('#color_option option:selected').text();
      var itemQty = 1;
      var itemSize = $('#size_option option:selected').text();
      var id = '${userDTO.id }';
      //건들지마세요
      var stus = 'cart';
      $.ajax({
         type: 'post',
         url: '/shoppingmall/itemboard/itemBasket.do',
         data: 'itemCode='+itemCode+'&itemName='+itemName+'&itemCol='+itemCol+'&itemQty='+itemQty+'&itemSize='+itemSize+'&id='+id+'&stus='+stus+'&categoryCode=${categoryCode}&pg=${pg}',
         success: function(){
            if(confirm("상품이 저장되었습니다. 장바구니로 가시겠습니까?")){
               location.href="/shoppingmall/itemboard/itemBasketList.do";
            }
            
         } 
      });
   
   }else if(${userDTO == null}){
         if(confirm('비회원으로 구매를 진행하시겠습니까?')){
            location.href = "/shoppingmall/itemboard/itemBasketList.do";
         }else
            location.href = "/shoppingmall/user/loginForm.do";
   }
});
<<<<<<< HEAD
=======

//buy now 버튼
$('.purchaseBtn-itemPage').click(function(){
	if('${userDTO.id}'!=''){
		var initQty = new Array(); //추가해준 옵션들의 수량을 담을 배열
		
		for(i=0; i<colName.length;i++)
			initQty.push($('#itemAccount-itemPage'+i).val());
		
		//히든 버튼에 값을 넣어 보내주기 
		var colNameRe = colName.join(',');
		var sizeNameRe = sizeName.join(',');
		var initQtyRe = initQty.join(',');
		var itemCodeNameRe = itemCode.join(',');
		var itemNameRe = itemName.join(',');
		var colValRe = colVal.join(',');
		
		document.viewForm.colVal.value=colValRe;
		document.viewForm.itemCode.value=itemCodeNameRe;
		document.viewForm.itemName.value=itemNameRe;
		document.viewForm.colName.value=colNameRe;
		document.viewForm.sizeName.value=sizeNameRe;
		document.viewForm.initQty.value=initQtyRe;
		document.viewForm.salePrice.value=salePrice;
		document.viewForm.sumPrice.value=sumPrice;
		document.viewForm.submit();
	}
	else{
		alert('로그인해주세요');
	}
});

>>>>>>> refs/heads/master
</script>

