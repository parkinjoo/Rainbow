<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/purchaseForm-style.css">

<div class="purchaseDiv-purchase">
      <h5>주문 상품 내역</h5>
      <table class="table orderList-purchase">
        <thead class="thead-dark">
          <tr>
            <th scope="col"></th>
            <th scope="col">제품</th>
            <th scope="col">사이즈/컬러</th>
            <th scope="col">수량</th>
            <th scope="col">가격</th>
            <th scope="col">적립금</th>
          </tr>
        </thead>
        <tbody>
          <!-- 구분 -->
          <tr>
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
          </tr>
          <!-- 구분 -->
          <tr>
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
          </tr>
          <tr>
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
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>합계</td>
            <td>합계</td>
          </tr>
        </tbody>
      </table>
    </div>


    <div class="clientInfo">
    <h5>주문자 정보</h5>
      <table class="table">
          <tr>
            <th class="infoTitle">이름</th>
            <td class="infoText">김진솔</td>
          </tr>
          <tr>
            <th class="infoTitle">이메일</th>
            <td class="infoText">
              <input type="text" class="infoInput" name="email" value="kmtap@naver.com">
            </td>
          </tr>
          <tr>
            <th class="infoTitle">연락처</th>
            <td class="infoText">
              <input type="text" class="infoInput" name="email" value="010-9507-0488">
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
                  <input type="text" class="form-control" placeholder="우편 번호">
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">우편 번호</button>
                  </div>
                </div>

                  <div class="addressInfo-pur">
                    <input type="text" class="form-control" placeholder="주소">
                  </div>

                  <div class="addressInfo-pur">
                    <input type="text" class="form-control" placeholder="상세 주소">
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