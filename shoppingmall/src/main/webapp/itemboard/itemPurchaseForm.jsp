<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../css/purchaseForm-style.css">

<div class="purchaseDiv-purchase">
      <h5>주문 상품 내역</h5>
      <table class="table orderList-purchase">
        <thead class="thead-dark">
          <tr>
            <th scope="col">이미지</th>
            <th scope="col">제품</th>
            <th scope="col">컬러/사이즈</th>
            <th scope="col">수량</th>
            <th scope="col">가격</th>
            <th scope="col">적립금</th>
          </tr>
        </thead>
        <tbody id="superList">
          <!-- 구분 -->
         <!-- <tr>
             <td>
             <div class="purchaseImg"></div>
            </td>
            <td>
              <div class="purchaseText">
                <div class="purchaseText2">베이지색 슬랙스 9부 팬츠</div>
              </div>
            </td>
            <td>
              <div class="purchaseText size-pur">
                <div class="purchaseText2">챠콜,S(28)</div>
              </div>
            </td>
            <td>
              <div class="purchaseText account-pur">
                <div class="purchaseText2">1</div>
              </div>
            </td>
            <td>
              <div class="purchaseText price-pur">
                <div class="purchaseText2">19,800</div>
              </div>
            </td>
            <td>
              <div class="purchaseText mileage-pur">
                <div class="purchaseText2">200</div>
              </div>
            </td> 
          </tr>-->
       
        </tbody>
      </table>
    </div>


    <div class="clientInfo">
    <h5>주문자 정보</h5>
      <table class="table">
          <tr>
            <th class="infoTitle">이름</th>
            <td class="infoText">
            	<input type="text" class="infoInput orderName" name="name" value="${userDTO.name }">
            </td>
          </tr>
          <tr>
            <th class="infoTitle">이메일</th>
            <td class="infoText">
              <input type="text" class="infoInput orderEmail" name="email" value="${userDTO.email }">
            </td>
          </tr>
          <tr>
            <th class="infoTitle">연락처</th>
            <td class="infoText">
              <input type="text" class="infoInput orderTel" name="tel" value="${userDTO.tel }">
            </td>
          </tr>
      </table>
    </div>

    <div class="postInfo">
      <h5>배송 정보 &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="pasteBtn" value="주문자정보동일" onclick="paste()"/></h5>
        <table class="table">
            <tr>
              <th class="infoTitle">이름</th>
              <td class="infoText">
                <input type="text" class="infoInput name" name="name" value="">
              </td>
            </tr>
            <tr>
              <th class="infoTitle">연락처</th>
              <td class="infoText">
                <input type="text" class="infoInput tel" name="tel" value="">
              </td>
            </tr>
            <tr>
              <th class="infoTitle">배송지 선택</th>
              <td class="infoText">
                <select class="destinationInfo destination" name="destination">
                  <option value="house">자택</option>
                  <option value="company">회사</option>
                  <option value="newDestination">신규 배송지</option>
                </select>
              </td>
            </tr>
            <tr>
              <th class="infoTitle">주소</th>
              <td class="infoText">
                <div class="input-group mb-3 zipcodeInput-purchase">
                  <input type="text" class="form-control zipcode" placeholder="우편 번호">
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">우편 번호</button>
                  </div>
                </div>

                  <div class="addressInfo-pur">
                    <input type="text" class="form-control addr1" placeholder="주소">
                  </div>

                  <div class="addressInfo-pur">
                    <input type="text" class="form-control addr2" placeholder="상세 주소">
                  </div>
              </td>
            </tr>
            <tr>
              <th>배송 메세지<br>(100자 내외)</th>
              <td>
                <div class="mb-3">
                  <label for="validationTextarea">배송 메시지</label>
                  <textarea class="form-control postMessage" id="validationTextarea" placeholder="Required example textarea"></textarea>
                </div>
              </td>
            </tr>
            <tr>
            <td>
            	<input type="button" value="구매하기" onclick="buy()" />
            </td>
            </tr>
        </table>
    </div>
    
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){	
	//문자열을 다시 배열로 전환
	var itemName = '${itemName}';
	var colNameRe = '${colName}';
	var sizeNameRe ='${sizeName}';
	var initQtyRe = '${initQty}';
	var salePrice = ${salePrice};
	var sumPrice = ${sumPrice};
	var imgName = '${imgName}';
	var colName = new Array();
	var sizeName = new Array();
	var initQty = new Array();
	//문자열을 배열로 변환
	colName = colNameRe.split(',');
	sizeName = sizeNameRe.split(',');
	initQty = initQtyRe.split(',');
	
	var tmp='';
	var fund=0;
	for(i=0;i<colName.length;i++){
		tmp = tmp + 
		'<tr>'+
		'<td><div class="purchaseImg" style="background-image:url(../storage/'+imgName+'")"></div></td>'+
		'<td><div class="purchaseText"><div class="purchaseText2">'+itemName+'</div></div></td>'+
		'<td><div class="purchaseText size-pur"><div class="purchaseText2">'+colName[i]+'/'+sizeName[i]+'</div></div></td>'+
		'<td><div class="purchaseText account-pur"><div class="purchaseText2">'+initQty[i]+'</div></div></td>'+
		'<td><div class="purchaseText price-pur"><div class="purchaseText2">'+initQty[i]*salePrice+'</div></div></td>'+
		'<td><div class="purchaseText price-pur"><div class="purchaseText2">200</div></div></td>'+
		'</tr>'
		fund+=200;
	}
	tmp=tmp+
	'<tr><td></td><td></td><td></td><td></td><td>총가격 : '+sumPrice+'</td><td>총 마일리지 : '+fund+'</td><tr>'
	
	$('#superList').append(tmp);

});

function paste(){
	$('.name').val($('.orderName').val());
	$('.tel').val($('.orderTel').val());
	$('.zipcode').val('${userDTO.zipcode}');
	$('.addr1').val('${userDTO.addr1}');
	$('.addr2').val('${userDTO.addr2}');
}

function buy(){
	var itemName = '${itemName}';
	var colName = '${colName}';
	var sizeName ='${sizeName}';
	var initQty = '${initQty}';
	var salePrice = ${salePrice};
	var sumPrice = ${sumPrice};
	var imgName = '${imgName}';
	var itemCode = '${itemCode}';
	alert(initQty);
	//회원인지 아닌지 구분
	var id = '${userDTO.id}'; 
	if(id=='')
		id='non'+$('.orderName').val();
	else{
		$.ajax({
			type: 'post',
		    url: '/shoppingmall/itemboard/itemBasket.do',
		    data: 'itemCode='+itemCode+'&itemName='+itemName+
		      		'&itemCol='+colName+
		      		'&itemQty='+initQty+
		      		'&itemSize='+sizeName+
					'&Id='+id+
					'&stus=stay',
		    success: function(){
		    	location.href="/shoppingmall/itemboard/itemBasketList.do";
		    }
		});
	}
}
</script>























