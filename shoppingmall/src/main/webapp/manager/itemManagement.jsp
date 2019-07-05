<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="tab-pane fade" id="item-management">
	<!-- Íµ¨Î∂ÑÏÑ†(ÏÉÅÌíàÍ¥ÄÎ¶¨ ÏÑ∏Î∂Ä) -->
	<ul class="nav nav-pills mb-3 bottomNav-managerPage">
		<li class="nav-item"><a class="nav-link active"
			data-toggle="pill" href="#pills-home-insert-data" aria-selected="true">Ïû¨Í≥† Í¥ÄÎ¶¨</a></li>
		<li class="nav-item"><a class="nav-link"
			data-toggle="pill" href="#pills-profile-dataManage" aria-selected="false">Î¨ºÌíàÎì±Î°ù</a></li>
		<li class="nav-item"><a class="nav-link"
			data-toggle="pill" href="#pills-profile-edit" aria-selected="false">Ïû¨Í≥† ÏàòÏ†ï/ÏÇ≠Ï†ú</a></li>
	</ul>
	
<div class="tab-content" id="pills-tabContent">
	<!-- Íµ¨Î∂ÑÏÑ† -->
	
			<div class="tab-pane fade show active listDiv-managerPage" id="pills-home-insert-data">
				<div class="deleteBtnDiv-managerPage">
					<input type="button" class="deleteBtn-managerPage" name="deleteBtn"
						value="ÏÑ†ÌÉù Î™©Î°ù ÏÇ≠Ï†ú" id="selectedItemboardDeleteBtn">
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">ÏÉÅÌíàÏΩîÎìú</th>
							<th scope="col">ÏÉÅÌíàÎ™Ö</th>
							<th scope="col">Ïù¥ÎØ∏ÏßÄ</th>
							<th scope="col">ÏÉÅÌíàÏõêÍ∞Ä</th>
							<th scope="col">ÌåêÎß§Îã®Í∞Ä</th>
							<th scope="col"><input type="checkbox" id="selectAll-itemboard">
							</th>
						</tr>
					</thead>
					<tbody id="itemList">
						<!-- ajaxÎ°ú Ìò∏Ï∂úÎêòÎäî Î∂ÄÎ∂Ñ -->
					</tbody>
				</table>
			</div>
			
			<div class="tab-pane fade"	id="pills-profile-dataManage">
				<form id="itemboardWriteForm" method="post" enctype="multipart/form-data" action="/shoppingmall/manager/itemboardWrite.do">
					<table class="table table-hover" >
					      <tr>
<<<<<<< HEAD
					         <td align="center">ÏÉÅÌíàÏΩîÎìú</td>
					         <td colspan="6">
=======
					         <td width="350px" align="center">ªÛ«∞ƒ⁄µÂ</td>
					         <td width="360px" colspan="6">
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <input type="text" name="itemCode" id="itemCode" value="M">
					            <div id="itemCodeDiv"></div>
					         </td>
					      <tr>
					      <tr>
					         <td align="center">ÏÉÅÌíàÎ™Ö</td>
					         <td colspan="6">
<<<<<<< HEAD
					            <input type="text" name="itemName" id="itemName" size="70" placeholder="ÏÉÅÌíàÎ™Ö ÏûÖÎ†•">
=======
					            <input type="text" name="itemName" id="itemName" size="100" placeholder="ªÛ«∞∏Ì ¿‘∑¬">
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <div id="itemNameDiv"></div>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="center">ÌåêÎß§ Îã®Í∞Ä</td>
					         <td colspan="2">
<<<<<<< HEAD
					            <input type="text" name="salePrice" id="salePrice" placeholder="ÌåêÎß§ Îã®Í∞Ä ÏûÖÎ†•">
=======
					            <input type="number" min="0" step="1000" style="text-align:right;" name="salePrice" id="salePrice" value="000" placeholder="∆«∏≈ ¥‹∞° ¿‘∑¬">
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <div id="salePriceDiv"></div>
					         </td>
					         
<<<<<<< HEAD
					         <td colspan="2" align="center">ÏÉÅÌíà ÏõêÍ∞Ä</td>
					         <td colspan="2">
					            <input type="text" name="costPrice" id="costPrice" placeholder="ÏÉÅÌíà ÏõêÍ∞Ä ÏûÖÎ†•">
=======
					         <td align="center">ªÛ«∞ ø¯∞°</td>
					         <td colspan="3">
					            <input type="number" min="0" step="1000" style="text-align:right;" name="costPrice" id="costPrice" value="000" placeholder="ªÛ«∞ ø¯∞° ¿‘∑¬">
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <div id="costPriceDiv"></div>
					         </td>
					      </tr>
					
					      <tr>
<<<<<<< HEAD
					         <td align="center">ÏÉâÏÉÅ/ÏÇ¨Ïù¥Ï¶à</td>
					         <td width="60" align="center">S (90)</td>
					         <td width="60" align="center">M (95)</td>
					         <td width="60" align="center">L (100)</td>
					         <td width="60" align="center">XL (105)</td>
					         <td width="60" align="center">Free</td>
					         <td width="60" align="center">Total</td>
=======
					         <td width="60px" align="center">ªˆªÛ/ªÁ¿Ã¡Ó</td>
					         <td width="60px" align="center">S (90)</td>
					         <td width="60px" align="center">M (95)</td>
					         <td width="60px" align="center">L (100)</td>
					         <td width="60px" align="center">XL (105)</td>
					         <td width="60px" align="center">Free</td>
					         <td width="60px" align="center">Total</td>
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					      </tr>
					
					      <tr>
					         <td align="center">
<<<<<<< HEAD
					            <input type="text" name="col1" id="col1" list="col1List" placeholder="ÏÉâÏÉÅ1 ÏûÖÎ†•">
=======
					            <input type="text" name="col1" id="col1" size="10" list="col1List" placeholder="ªˆªÛ1 ¿‘∑¬">
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <div id="col1Div"></div>
					            <datalist id="col1List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1s" id="col1s" value="0">
					            <div id="col1sDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1m" id="col1m" value="0">
					            <div id="col1mDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1l" id="col1l" value="0">
					            <div id="col1lDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1x" id="col1x" value="0">
					            <div id="col1xDiv"></div> 
					         </td>
					         <td align="center">
					         	<input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col1f" id="col1f" value="0">
					            <div id="col1fDiv"></div> 
					         </td>
					         <td align="center">
					            <input type="text" name="col1tot" id="col1tot" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="center">
<<<<<<< HEAD
					            <input type="text" name="col2" id="col2" list="col2List" placeholder="ÏÉâÏÉÅ2 ÏûÖÎ†•"> 
=======
					            <input type="text" name="col2" id="col2" size="10" list="col2List" placeholder="ªˆªÛ2 ¿‘∑¬"> 
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <datalist id="col2List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2s" id="col2s" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2m" id="col2m" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2l" id="col2l" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2x" id="col2x" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col2f" id="col2f" value="0"> 
					         </td>
					         <td align="center">
					            <input type="text" name="col2tot" id="col2tot" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="center">
<<<<<<< HEAD
					            <input type="text" name="col3" id="col3"  list="col3List" placeholder="ÏÉâÏÉÅ3 ÏûÖÎ†•"> 
=======
					            <input type="text" name="col3" id="col3" size="10"  list="col3List" placeholder="ªˆªÛ3 ¿‘∑¬"> 
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <datalist id="col3List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3s" id="col3s" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3m" id="col3m" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3l" id="col3l" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3x" id="col3x" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col3f" id="col3f" value="0"> 
					         </td>
					         <td align="center">
					            <input type="text" name="col3tot" id="col3tot" value="0" size="5" style="text-align: right;"  readonly>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="center">
<<<<<<< HEAD
					            <input type="text" name="col4" id="col4" list="col4List" placeholder="ÏÉâÏÉÅ4 ÏûÖÎ†•"> 
=======
					            <input type="text" name="col4" id="col4" size="10" list="col4List" placeholder="ªˆªÛ4 ¿‘∑¬"> 
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <datalist id="col4List">
					               <option value="black">
					               <option value="white">
					               <option value="navy">
					               <option value="beige">
					               <option value="charcoal">
					            </datalist>
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4s" id="col4s" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4m" id="col4m" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4l" id="col4l" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4x" id="col4x" value="0"> 
					         </td>
					         <td align="center">
					            <input type="number" min="0" step="10" style="text-align:right; width:70px;" name="col4f" id="col4f" value="0"> 
					         </td>
					         <td align="center">
					            <input type="text" name="col4tot" id="col4tot" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					      
					      <tr>
					         <td></td>
					         <td align="center">
					            <input type="text" name="s" id="s" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="m" id="m" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="l" id="l" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="x" id="x" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="f" id="f" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					         <td align="center">
					            <input type="text" name="totQty" id="totQty" value="0" size="5" style="text-align: right;" readonly>
					         </td>
					      </tr>
					
					      <tr>
<<<<<<< HEAD
					         <td align="center">ÎÇ¥Ïö©</td>
					         <td colspan="6"><textarea cols="70" rows="10" name="itemContent" id="itemContent" placeholder="ÎÇ¥Ïö© ÏûÖÎ†•"></textarea>
=======
					         <td align="center">≥ªøÎ</td>
					         <td colspan="6"><textarea cols="80" rows="2" name="itemContent" id="itemContent" placeholder="≥ªøÎ ¿‘∑¬"></textarea>
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					         <div id="itemContentDiv"></div>
					         </td>
					      </tr>
					
					      <tr>
					         <td align="center">Ïù¥ÎØ∏ÏßÄ1</td>
					         <td colspan="6"><input type="file" name="img" id="img1"></td>
					      </tr>
					
					      <tr>
					         <td align="center">Ïù¥ÎØ∏ÏßÄ2</td>
					         <td colspan="6"><input type="file" name="img" id="img2"></td>
					      </tr>
					
					      <tr>
					         <td align="center">Ïù¥ÎØ∏ÏßÄ3</td>
					         <td colspan="6"><input type="file" name="img" id="img3"></td>
					      </tr>
					
					      <tr>
					         <td align="center">Ïù¥ÎØ∏ÏßÄ4</td>
					         <td colspan="6"><input type="file" name="img" id="img4"></td>
					      </tr>
					      
					      <tr>
					         <td align="center">ÌÇ§ÏõåÎìú</td>
					         <td colspan="6">
<<<<<<< HEAD
					            <input type="text" name="itemKeyword" id="itemKeyword" size="70" placeholder="ÌÇ§ÏõåÎìú ÏûÖÎ†•">
=======
					            <input type="text" name="itemKeyword" id="itemKeyword" size="100" placeholder="≈∞øˆµÂ ¿‘∑¬">
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					            <div id="itemKeywordDiv"></div>
					         </td>
					      </tr>
					      <tr>
					         <td colspan="7" align="center">
<<<<<<< HEAD
					            <input type="submit" value="ÏÉÅÌíà Îì±Î°ù" > 
					            <input type="reset" value="Îã§ÏãúÏûëÏÑ±">
=======
					            <input type="button" id="itemboardWriteBtn" value="ªÛ«∞ µÓ∑œ" > 
					            <input type="reset" value="¥ŸΩ√¿€º∫">
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
					         </td>
					      </tr>
					      
					 </table>
				</form>	
			</div>
			
			<div class="tab-pane fade" id="pills-profile-edit">
			ÏàòÏ†ï/ÏÇ≠Ï†ú Î∂ÄÎ∂Ñ
			</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#itemboardWriteBtn').click(function() {
    $('#itemCodeDiv').empty();
    $('#itemNameDiv').empty();
    $('#salePriceDiv').empty();
    $('#costPriceDiv').empty();
    $('#itemContentDiv').empty();

    if ($('#itemCode').val() == 'M') {
<<<<<<< HEAD
       $('#itemCodeDiv').text("ÏÉÅÌíàÏΩîÎìúÎ•º ÏûÖÎ†•ÌïòÏÑ∏Ïöî.").css('color', 'red').css('font-size', '9pt');
=======
    	//$('#itemCodeDiv').text("ªÛ«∞ƒ⁄µÂ∏¶ ¿‘∑¬«œººø‰.").css('color', 'red').css('font-size', '9pt');
		alert("ªÛ«∞ ƒ⁄µÂ∏¶ ¿‘∑¬«œººø‰.");
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
    } else if ($('#itemName').val() == '') {
<<<<<<< HEAD
       $('#itemNameDiv').text("ÏÉÅÌíàÎ™ÖÏùÑ ÏûÖÎ†•ÌïòÏÑ∏Ïöî.").css('color', 'red').css('font-size', '9pt');
    } else if ($('#salePrice').val() == '') {
       $('#salePriceDiv').text("ÌåêÎß§Îã®Í∞ÄÎ•º ÏûÖÎ†•ÌïòÏÑ∏Ïöî.").css('color', 'red').css('font-size', '9pt');
    } else if ($('#costPrice').val() == '') {
       $('#costPriceDiv').text("ÏÉÅÌíàÏõêÍ∞ÄÎ•º ÏûÖÎ†•ÌïòÏÑ∏Ïöî.").css('color', 'red').css('font-size', '9pt');
    } else if ($('#col1').val() == 'ÏÉâÏÉÅ1 ÏûÖÎ†•') {
       $('#col1Div').text("ÏÉâÏÉÅÏùÑ ÏûÖÎ†•ÌïòÏÑ∏Ïöî.").css('color', 'red').css('font-size', '9pt');
=======
    	alert("ªÛ«∞ ¿Ã∏ß¿ª ¿‘∑¬«œººø‰.");
    } else if ($('#salePrice').val() == '000') {
    	alert("∆«∏≈ ¥‹∞°∏¶ ¿‘∑¬«œººø‰.");
    } else if ($('#costPrice').val() == '000') {
    	alert("ªÛ«∞ ø¯∞°∏¶ ¿‘∑¬«œººø‰.");
    } else if ($('#col1').val() == '') {
    	alert("ªˆªÛ1¿ª ¿‘∑¬«œººø‰.");
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
    } else if ($('#itemContent').val() == '') {
<<<<<<< HEAD
       $('#itemContentDiv').text("ÎÇ¥Ïö©ÏùÑ ÏûÖÎ†•ÌïòÏÑ∏Ïöî.").css('color', 'red').css('font-size', '9pt');
    } else {
=======
    	alert("ªÛ«∞ ≥ªøÎ¿ª ¿‘∑¬«œººø‰.");
    } else if ($('#itemKeyword').val() == '') {
    	alert("ªÛ«∞ ≈∞øˆµÂ∏¶ ¿‘∑¬«œººø‰.");
    }else {
>>>>>>> branch 'master' of https://github.com/parkinjoo/rainbow.git
       $('#itemboardWriteForm').submit();
    }
});

$(document).ready(function() {
	
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/manager/getItemboardList.do',
		dataType : 'json',
		success : function(data){		
			$.each(data.list, function(index,items){
				$('#itemList').append("<tr>"+
									  "<th scope='row'>"+(index+1)+
									  "</th>"+
									  "<td>"+items.itemCode+"</td>"+
									  "<td>"+items.itemName+"</td>"+
									  "<td><img src='../storage/"+items.img1+"' style='cursor: pointer; width:50px; height:50px;'></td>"+
									  "<td>"+items.costPrice+"</td>"+
									  "<td>"+items.salePrice+"</td>"+
									  "<td>"+
									  "<input type='checkbox' name='deleteCheck'"+
									  		 "class='deleteCheck-itemboard'"+
									  		 "value="+items.itemCode+">"+
									  "<input value='"+items.itemCode+
									  	   "' type='hidden' class='hiddenId' id='modifyHidden"+index+"'>"+
									  "</td>"+
									  "</tr>");		
				
			});//each;
		}
	});
	
    $('input').focusout(function() {
       var col1s = parseInt($("#col1s").val());
       var col1m = parseInt($("#col1m").val());
       var col1l = parseInt($("#col1l").val());
       var col1x = parseInt($("#col1x").val());
       var col1f = parseInt($("#col1f").val());
       $('#col1tot').val(col1s + col1m + col1l + col1x + col1f);
       
       var col2s = parseInt($("#col2s").val());
       var col2m = parseInt($("#col2m").val());
       var col2l = parseInt($("#col2l").val());
       var col2x = parseInt($("#col2x").val());
       var col2f = parseInt($("#col2f").val());
       $('#col2tot').val(col2s + col2m + col2l + col2x + col2f);
       
       var col3s = parseInt($("#col3s").val());
       var col3m = parseInt($("#col3m").val());
       var col3l = parseInt($("#col3l").val());
       var col3x = parseInt($("#col3x").val());
       var col3f = parseInt($("#col3f").val());
       $('#col3tot').val(col3s + col3m + col3l + col3x + col3f);
       
       var col4s = parseInt($("#col4s").val());
       var col4m = parseInt($("#col4m").val());
       var col4l = parseInt($("#col4l").val());
       var col4x = parseInt($("#col4x").val());
       var col4f = parseInt($("#col4f").val());
       $('#col4tot').val(col4s + col4m + col4l + col4x + col4f);
       
       var s = col1s + col2s + col3s + col4s;
       var m = col1m + col2m + col3m + col4m;
       var l = col1l+ col2l + col3l + col4l;
       var x = col1x + col2x + col3x + col4x;
       var f = col1f + col2f + col3f + col4f;
       $('#s').val(s);
       $('#m').val(m);
       $('#l').val(l);
       $('#x').val(x);
       $('#f').val(f);
       $('#totQty').val(s + m + l + x + f);
    });
   
 });
 
//Ï≤¥ÌÅ¨Î∞ïÏä§ Ï†ÑÏ≤¥ÏÑ†ÌÉù Í∏∞Îä•
$('#selectAll-itemboard').click(function(){
	if($('#selectAll-itemboard').prop("checked")) {
		$('.deleteCheck-itemboard').prop("checked", true);
	}else {
		$('.deleteCheck-itemboard').prop("checked", false);
	}
});

//ÏÑ†ÌÉùÎêú Î™©Î°ù ÏÇ≠Ï†úÌïòÍ∏∞
$('#selectedItemboardDeleteBtn').click(function(){
	
	var checkArr = [];
	
	$('.deleteCheck-itemboard:checked').each(function(i){
		checkArr.push($(this).val());
	});
	
	if(checkArr.length==0){
		alert("º±≈√µ» ∏Ò∑œ¿Ã æ¯Ω¿¥œ¥Ÿ");
	}else {
		var deleteConfirm = confirm("º±≈√«œΩ≈ ¡§∫∏¥¬ ªË¡¶ µÀ¥œ¥Ÿ.");
		if(deleteConfirm){
			
			$.ajax({
				type: 'POST',
				url : '/shoppingmall/manager/deleteItemboard.do' ,
				data : {
					chkbox : checkArr
				},
				success: function(){
					alert("ªË¡¶µ«æ˙Ω¿¥œ¥Ÿ");
					location.href = "/shoppingmall/manager/managerPage.do";
				}
			});	
		}
	}
});
</script>