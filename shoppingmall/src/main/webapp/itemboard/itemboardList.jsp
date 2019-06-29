<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="../css/board.css">

<form name="itemboardListForm" method="" action="/shoppingmall/itemboard/itemboardDelete.do">
<table border="1" id="itemboardTable" frame="hsides" rules="rows" align="center">
</table>

<div style="width: 650px; float: left; text-align: center;">${itemboardPaging.pagingHTML }</div>
<div id="itemboardPagingDiv" style="width: 100%; float: left; text-align: center;"></div>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
function itemboardPaging(pg){
	location.href="/shoppingmall/itemboard/itemboardList.do?categoryCode=${categoryCode}&pg="+pg;
}
</script>
<script>
$(document).ready(function(){
	$.ajax({
		type: 'POST',
		url: '/shoppingmall/itemboard/getItemboardList.do',
		data: {'pg': '${pg}',
				'itemCode': '${itemCode}',
				 'categoryCode': '${categoryCode}'},
		dataType : 'json',
		success : function(data){
			$.each(data.list, function(index, items){
				$('<td/>').append($('<td/>',{
					align: 'center',
					text : items.itemCode
					})).append($('<td/>',{
					align: 'center'
					}).append($('<img/>',{
						src: '../storage/'+items.img1,
						style: 'cursor:pointer; width: 360px; height: 500px;',
						class: items.itemCode
				}))).appendTo($('#itemboardTable'));
				
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












