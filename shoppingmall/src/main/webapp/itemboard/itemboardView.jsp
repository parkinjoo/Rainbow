<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form id="itemboardView" name="itemboardView" method="POST" action="/shoppingmall/itemboard/itemBasket.do">
<table id="itemboardViewTable" border="1" cellpadding="5" cellspacing="0" frame="hsides" rules="rows" align="center">
	<tr>
	   <td align="center">상품코드</td>
	   <td colspan="6">
	   	  <input type="text" name="itemCode" id="itemCode" value="" readonly>
	   </td>
	</tr>
	
	<tr>
	   <td align="center">상품명</td>
	   <td colspan="6">
	      <input type="text" value="" readonly name="itemName" id="itemName"> 
	   </td>
	</tr>
	
	<tr>
	   <td align="center">판매 단가</td>
	   <td colspan="2">
	      <input type="text" value="" readonly name="itemPrice" id="salePrice"> 
	   </td>
	   
	   <td colspan="2" align="center">상품 원가</td>
	   <td colspan="2">
	      <input type="text" value="" readonly id="costPrice"> 
	   </td>
	</tr>
	
	<tr>
	   <td align="center">색상/사이즈</td>
	   <td width="60" align="center">S (90)</td>
	   <td width="60" align="center">M (95)</td>
	   <td width="60" align="center">L (100)</td>
	   <td width="60" align="center">XL (105)</td>
	   <td width="60" align="center">Free</td>
	   <td width="60" align="center">Total</td>
	</tr>
	
	<tr>
	   <td>
	      <input type="text" value="" readonly name="itemCol" id="col1"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly name="itemQty" id="col1s"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col1m"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col1l"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col1x"> 
	   </td>
	   <td>
	   	<input type="text" value="" readonly id="col1f"> 
	   </td>
	   <td>
	   	<!-- <input type="text" value="" readonly id="col1tot">  -->
	   </td>
	</tr>
	
	<tr>
	   <td>
	      <input type="text" value="" readonly id="col2"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col2s"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col2m"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col2l"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col2x"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col2f"> 
	   </td>
	   <td>
	   	<!-- <input type="text" value="" readonly id="col2tot">  -->
	   </td>
	</tr>
	
	<tr>
	   <td>
	      <input type="text" value="" readonly id="col3"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col3s"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col3m"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col3l"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col3x"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col3f"> 
	   </td>
	   <td>
	   	<!-- <input type="text" value="" readonly id="col3tot">  -->
	   </td>
	</tr>
	
	<tr>
	   <td>
	      <input type="text" value="" readonly id="col4"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col4s"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col4m"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col4l"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col4x"> 
	   </td>
	   <td>
	      <input type="text" value="" readonly id="col4f"> 
	   </td>
	   <td>
	   	<!-- <input type="text" value="" readonly id="col4tot">  -->
	   </td>
	</tr>
	
	<tr>
	   <td></td>
	   <td>
	      <!-- <input type="text" value="" readonly id="s">  -->
	  </td>
	  <td>
	  	<!-- <input type="text" value="" readonly id="m">  -->
	  </td>
	  <td>
	  	<!-- <input type="text" value="" readonly id="l">  -->
	  </td>
	  <td>
	  	<!-- <input type="text" value="" readonly id="x">  -->
	  </td>
	  <td>
	  	<!-- <input type="text" value="" readonly id="f">  -->
	   </td>
	   <td>
	   	<input type="text" value="" readonly id="totQty"> 
	   </td>
	</tr>
	
	<tr>
	   <td align="center">내용</td>
	   <td style="white-space: pre-wrap;" colspan="2" height="100" valign="top"><input type="text" value="" readonly id="itemContent"> </td>
	</tr>
	
	<tr>
	   <td align="center">이미지1</td>
	   <td colspan="6"><img name="img" id="img1" width="360" height="500"></td>
	</tr>
	
	<tr>
	   <td align="center">이미지2</td>
	   <td colspan="6"><img id="img2" width="360" height="500"></td>
	</tr>
	
	<tr>
	   <td align="center">이미지3</td>
	   <td colspan="6"><img id="img3" width="360" height="500"></td>
	</tr>
	
	<tr>
	   <td align="center">이미지4</td>
	   <td colspan="6"><img id="img4" width="360" height="500"></td>
	</tr>
	
	<tr>
	   <td align="center">키워드</td>
	   <td colspan="6">
	      <input type="text" value="" readonly id="itemKeyword"> 
	   </td>
	</tr>
	<!-- 장바구니 -->
	<input type="button" value="장바구니" id="itemBasket">
	
	<tr>
	   <td colspan="7" align="center">
	      <input type="button" value="목록" onclick="location.href='itemboardList.do?categoryCode=${categoryCode }&pg=${pg}'">
	   </td>
	</tr>
</table>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/shoppingmall/itemboard/getItemboardView.do',
		data: 'itemCode=${itemCode}&categoryCode=${categoryCode}&pg=${pg}',
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			
			$('#itemCode').val(data.itemboardDTO.itemCode);
			$('#itemName').val(data.itemboardDTO.itemName);
			$('#salePrice').val(data.itemboardDTO.salePrice);
			$('#costPrice').val(data.itemboardDTO.costPrice);
			
			$('#col1').val(data.itemboardDTO.col1);
			$('#col1s').val(data.itemboardDTO.col1s);
			$('#col1m').val(data.itemboardDTO.col1m);
			$('#col1l').val(data.itemboardDTO.col1l);
			$('#col1x').val(data.itemboardDTO.col1x);
			$('#col1f').val(data.itemboardDTO.col1f);
			
			$('#col2').val(data.itemboardDTO.col2);
			$('#col2s').val(data.itemboardDTO.col2s);
			$('#col2m').val(data.itemboardDTO.col2m);
			$('#col2l').val(data.itemboardDTO.col2l);
			$('#col2x').val(data.itemboardDTO.col2x);
			$('#col2f').val(data.itemboardDTO.col2f);
			
			$('#col3').val(data.itemboardDTO.col3);
			$('#col3s').val(data.itemboardDTO.col3s);
			$('#col3m').val(data.itemboardDTO.col3m);
			$('#col3l').val(data.itemboardDTO.col3l);
			$('#col3x').val(data.itemboardDTO.col3x);
			$('#col3f').val(data.itemboardDTO.col3f);
			
			$('#col4').val(data.itemboardDTO.col4);
			$('#col4s').val(data.itemboardDTO.col4s);
			$('#col4m').val(data.itemboardDTO.col4m);
			$('#col4l').val(data.itemboardDTO.col4l);
			$('#col4x').val(data.itemboardDTO.col4x);
			$('#col4f').val(data.itemboardDTO.col4f);
			
			$('#totQty').val(data.itemboardDTO.totQty);

			$('#itemContent').val(data.itemboardDTO.itemContent);
			
			$('#img1').prop('src', '../storage/'+data.itemboardDTO.img1);
			$('#img2').prop('src', '../storage/'+data.itemboardDTO.img2);
			$('#img3').prop('src', '../storage/'+data.itemboardDTO.img3);
			$('#img4').prop('src', '../storage/'+data.itemboardDTO.img4);
			
			
			$('#itemKeyword').val(data.itemboardDTO.itemKeyword);
		} 
	});
});
$('#itemBasket').click(function(){
	$('#itemboardView').submit();
});
</script>
