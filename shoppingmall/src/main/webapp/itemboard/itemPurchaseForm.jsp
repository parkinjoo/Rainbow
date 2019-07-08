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
            <th class="infoTitle"></th>
            <td class="infoText"></td>
          </tr>
          <tr>
            <th class="infoTitle">이메일</th>
            <td class="infoText">
              <input type="text" class="infoInput" name="email" value="">
            </td>
          </tr>
          <tr>
            <th class="infoTitle">연락처</th>
            <td class="infoText">
              <input type="text" class="infoInput" name="email" value="">
            </td>
          </tr>
      </table>
    </div>

    <div class="postInfo">
      <h5>배송 정보</h5>
        <table class="table">
            <tr>
              <th class="infoTitle">이름</th>
              <td class="infoText">
                <input type="text" class="infoInput" name="name" value="">
              </td>
            </tr>
            <tr>
              <th class="infoTitle">연락처</th>
              <td class="infoText">
                <input type="text" class="infoInput" name="tel" value="">
              </td>
            </tr>
            <tr>
              <th class="infoTitle">배송지 선택</th>
              <td class="infoText">
                <select class="destinationInfo" name="destination">
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
                  <input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="우편 번호">
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="checkPost()">우편 번호</button>
                  </div>
                </div>

                  <div class="addressInfo-pur">
                    <input type="text" class="form-control" id="addr1" name="addr1" placeholder="주소">
                  </div>

                  <div class="addressInfo-pur">
                    <input type="text" class="form-control" id="addr2" name="addr2" placeholder="상세 주소">
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
        </table>
    </div>
    
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
$(document).ready(function(){	
	//문자열을 다시 배열로 전환
	var itemName = '${itemName}';
	var csNameRe = '${csName}';
	var csValRe ='${csVal}';
	var initQtyRe = '${initQty}';
	var salePrice = ${salePrice};
	var sumPrice = ${sumPrice};
	var imgName = '${imgName}';
	var csName = new Array();
	var csVal = new Array();
	var initQty = new Array();
	
	csName = csNameRe.split(',');
	csVal = csValRe.split(',');
	initQty = initQtyRe.split(',');
	
	var tmp='';
	var fund=0;
	for(i=0;i<csVal.length;i++){
		tmp = tmp + 
		'<tr>'+
		'<td><div class="purchaseImg" style="background-image:url(../storage/'+imgName+'")"></div></td>'+
		'<td><div class="purchaseText"><div class="purchaseText2">'+itemName+'</div></div></td>'+
		'<td><div class="purchaseText size-pur"><div class="purchaseText2">'+csName[i]+'</div></div></td>'+
		'<td><div class="purchaseText account-pur"><div class="purchaseText2">'+initQty[i]+'</div></div></td>'+
		'<td><div class="purchaseText price-pur"><div class="purchaseText2">'+initQty[i]*salePrice+'</div></div></td>'+
		'<td><div class="purchaseText price-pur"><div class="purchaseText2">200</div></div></td>'+
		'</tr>'
		fund+=200;
	}
	tmp=tmp+
	'<tr><td></td><td></td><td></td><td></td><td>총가격 : '+sumPrice+'</td><td>총 마일리지 : '+fund+'</td><tr>'
	
	$('#superList').append(tmp);
	/* $('.td'+count).append($('<div/>',{
		class : 'purchaseImg',
		//style : 'background-image:url("../storage/'+imgName+'")'		
		text : 1
	})); */
	/* $('#superList').append($('<td>').append($('<div/'),{
		class : 'purchaseImg',
		style : 'background-image:url("../storage/'+imgName+'")'		
	}));
	$('#superList').append($('<td>').append($('<div/'),{
		class : 'purchaseImg',
		style : 'background-image:url("../storage/'+imgName+'")'		
	}));
	$('#superList').append($('<td>').append($('<div/'),{
		class : 'purchaseImg',
		style : 'background-image:url("../storage/'+imgName+'")'		
	}));
	$('#superList').append($('<td>').append($('<div/'),{
		class : 'purchaseImg',
		style : 'background-image:url("../storage/'+imgName+'")'		
	}));
	$('#superList').append($('<td>').append($('<div/'),{
		class : 'purchaseImg',
		style : 'background-image:url("../storage/'+imgName+'")'		
	})); */
	
	
});

function checkPost() {
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("zipcode").value = extraAddr;
            
            } else {
                document.getElementById("zipcode").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("zipcode").value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}
</script>























