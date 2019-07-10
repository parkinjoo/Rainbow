<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="tab-pane fade" id="sales-management">
	
	<div class="tab-content" id="pills-tabContent">
		<!-- 구분선 -->
				<br><br>
				<div class="tab-pane fade show active" id="pills-home-dailySales">
					<div style="text-align:center; font-weight:40;">일 매출 현황</div>
					<br>
					<div id="chart" style="width:1350px;height:424px;"></div>
					<br><br><hr><br><br>
					
					<div style="text-align:center; font-weight:40;">월 매출 현황</div>
					<br>
					<div id="chart2" style="width:1350px;height:424px;"></div>
				</div>
				<br><br><hr><br>
							
	</div>
</div>	

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>	
<script type="text/javascript">
$('#clickTest').on('click', function(){
	
	$.ajax({
		type : 'post' ,
		url : '/shoppingmall/manager/salesManage.do' ,
		dataType : 'json' ,
		success : function(data){

			var line = new Array();
			for(i=0; i<data.x.length; i++) {
				line[i]=[[data.x[i]],data.y[i]];
			}
		    jQuery("#chart").jqplot([line], {
		          title: data.today  
		        , seriesDefaults:{
		            renderer:jQuery.jqplot.BarRenderer
		        }
		        , axes:{
		            xaxis:{
		            	renderer:jQuery.jqplot.CategoryAxisRenderer
		            }
		      	, yaxis:{ 
				         min : 0, 
				         max : data.max,  
				 }
		        }
		    });
		}
	});
	
	$.ajax({
		type : 'post' ,
		url : '/shoppingmall/manager/salesManage2.do' ,
		dataType : 'json' ,
		success : function(data){
			var line = new Array();
			for(i=0; i<data.x.length; i++) {
				line[i]=[[data.x[i]],data.y[i]];
			}
		    jQuery("#chart2").jqplot([line], {
		            title: data.today  
		      	,   seriesDefaults:{
		            renderer:jQuery.jqplot.BarRenderer
		        }
		        , axes:{
		            xaxis:{
		            	renderer:jQuery.jqplot.CategoryAxisRenderer
		            , tickOptions : {
		            		formatString:'%'
		            	}
		            }
		      	, yaxis:{ 
			         min : 0, 
			         max : data.max, 
				  }
		        }
		    });
		}
	});
	
});

</script>