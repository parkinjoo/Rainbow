<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form name="itemBasket" method="" action="">
<table border="1" id="itemBasketTable" frame="hsides" rules="rows" align="cener">
</table>

<div style="width: 650px; float: left; text-align: center;">${itemboardPaging.pagingHTML }</div>
<div id="itemboardPagingDiv" style="width: 100%; float: left; text-align: center;"></div>

</form>



<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
function itemboardPaging(pg){
	location.href="/shoppingmall/itemboard/itemBasket.do?categoryCode=${categoryCode}&pg="+pg;
}
</script>

<script>
$(document).ready(function(){
	
	$.ajax({
		type: 'post',
		url: '/shoppingmall/itemboard/getItembasketList.do',
		data: {'itemCode': '${itemCode}', 'pg': '${pg}', 'categoryCode': '${categoryCode}'},
		dataType: 'json',
		success: function(data){
			 //alert(JSON.stringify(data));
			 $.each(data.list, function(index, items){
				$('<td/>').append($('<td/>',{
					align: 'center',
					text : items.itemCode
				})).append($('<td/>',{
					align: 'center',
					text : items.itemName
				})).append($('<td/>',{
					align: 'center',
					text : items.itemPrice
				})).append($('<td/>',{
					align: 'center',
					text : items.itemCol
				})).append($('<td/>',{
					align: 'center',
					text : items.itemQty
				}).append($('<img/>',{
					src: '../storage/'+items.img1,
					style: 'cursor:pointer; width: 360px; height: 500px;',
					class: items.itemCode
				}))).appendTo($('#itemBasketTable'));
				
				//이미지보기
				$('.'+items.itemCode).css('cursor', 'pointer');
				$('.'+items.itemCode).click(function(){
					location.href='/shoppingmall/itemboard/itemboardView.do?itemCode='+items.itemCode+'&categoryCode=${categoryCode}&pg=${pg}';     
				});
			});
			$('#itemboardPagingDiv').html(data.itemboardPaging.pagingHTML); 
		}
		
	});
	
});

</script>