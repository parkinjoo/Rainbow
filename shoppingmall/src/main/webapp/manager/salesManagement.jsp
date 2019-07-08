<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="tab-pane fade" id="sales-management">
	<!-- 구분선(상품관리 세부) -->
	<ul class="nav nav-pills mb-3 bottomNav-managerPage">
		<li class="nav-item">
			<a class="nav-link active" data-toggle="pill" href="#pills-home-dailySales" aria-selected="true">일일 매출 관리</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"	data-toggle="pill" href="#pills-profile-monthly-sales" aria-selected="false">월별 매출 관리</a>
		</li>
	</ul>
	
	<div class="tab-content" id="pills-tabContent">
		<!-- 구분선 -->
		
				<div class="tab-pane fade show active" id="pills-home-dailySales">
					<div id="chart" style="width:750px;height:324px;"></div>
				</div>
							
				<div class="tab-pane fade" id="pills-profile-monthly-sales">
				월별 매출 관리 부분
				</div>
	</div>
</div>	

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>	
<script type="text/javascript">

setInterval(function(){
	var barChart1 = [9, 8, 6, 8, 7, 6, 4];
    var barChart2 = [5, 3, 4, 6, 2, 7, 8];
    var lineChart = [12, 7, 4, 10, 8, 5, 7];
    jQuery("#chart").jqplot([barChart1, barChart2, lineChart], {

          title : "막대 그래프 & 꺽은선 그래프"
        , stackSeries : true     
        , series : [
            {     
                  renderer : jQuery.jqplot.BarRenderer
                , rendererOptions : {
                      barWidth : 35                 
                    , barPadding : -15                
                    , highlightMouseOver : false  
                }
            }
            , {   
                  renderer : jQuery.jqplot.BarRenderer
                , rendererOptions : {
                      barWidth : 35                   
                    , barPadding : -15               
                    , highlightMouseOver : false   
                }
            }
            , {  
                  disableStack : true 
                , renderer : jQuery.jqplot.LineRenderer
            }
        ]
        , axes: {
            xaxis : { 
                  renderer : jQuery.jqplot.CategoryAxisRenderer
                , ticks : ['A Name', 'B Name', 'C Name', 'D Name', 'E Name', 'F Name', 'G Name']
            }
        }
    });
},1000);
</script>