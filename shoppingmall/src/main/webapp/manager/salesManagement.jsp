<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="tab-pane fade" id="sales-management">
	<!-- 备盒急(惑前包府 技何) -->
	<ul class="nav nav-pills mb-3 bottomNav-managerPage">
		<li class="nav-item">
			<a class="nav-link active" data-toggle="pill" href="#pills-home-dailySales" aria-selected="true">老老 概免 包府</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"	data-toggle="pill" href="#pills-profile-monthly-sales" aria-selected="false">岿喊 概免 包府</a>
		</li>
	</ul>
	
	<div class="tab-content" id="pills-tabContent">
		<!-- 备盒急 -->
		
				<div class="tab-pane fade show active" id="pills-home-dailySales">
					<div id="chart" style="width:950px;height:424px;"></div>
				</div>
							
				<div class="tab-pane fade" id="pills-profile-monthly-sales">
				岿喊 概免 包府 何盒
				</div>
	</div>
</div>	

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>	
<script type="text/javascript">
$('#clickTest').on('click', function(){
	
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();

	if(dd<10) {
	    dd='0'+dd
	} 

	if(mm<10) {
	    mm='0'+mm
	} 

	today = yyyy+'.'+mm+'.'+dd;
    
	$.ajax({
		type : 'post' ,
		url : '/shoppingmall/manager/salesManage.do' ,
		dataType : 'json' ,
		success : function(data){
	//		alert(JSON.stringify(data));

			var line = new Array();
			for(i=0; i<data.ticks.length; i++) {
				line[i]=[[data.ticks[i]],data.barChart2[i]];
			}
			alert(line);
		    jQuery("#chart").jqplot([line], {
		          title: today  
		        , seriesDefaults:{
		            renderer:jQuery.jqplot.BarRenderer
		        }
		        , axes:{
		            xaxis:{
		            	renderer:jQuery.jqplot.CategoryAxisRenderer
		            , tickOptions : {
		            		formatString:'%'
		            	}
		            }
		        }
		    });
		}
	});
});

</script>