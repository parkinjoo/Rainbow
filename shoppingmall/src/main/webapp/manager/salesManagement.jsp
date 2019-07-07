<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="tab-pane fade" id="sales-management">
	<!-- 구분선(상품관리 세부) -->
	<ul class="nav nav-pills mb-3 bottomNav-managerPage">
		<li class="nav-item">
			<a class="nav-link active" data-toggle="pill" href="#pills-home-daily-sales" aria-selected="true">일일 매출 관리</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"	data-toggle="pill" href="#pills-profile-monthly-sales" aria-selected="false">월별 매출 관리</a>
		</li>
	</ul>
	
	<div class="tab-content" id="pills-tabContent">
	<!-- 구분선 -->
	
			<div class="tab-pane fade show active listDiv-managerPage" id="pills-home-daily-sales">
			테스트
				<div id="chart" style="width:750px;height:324px;"></div>
			테스트2	
			</div>
						
			<div class="tab-pane fade" id="pills-profile-monthly-sales">
			월별 매출 관리 부분
			<div class="jqplot-target" id="chart" style="width: 750px; height: 324px; position: relative;"><canvas width="787" height="340" class="jqplot-base-canvas" style="left: 0px; top: 0px; width: 750px; height: 324px; position: absolute;"></canvas><div class="jqplot-title" style="left: 0px; top: 0px; width: 750px; text-align: center; position: absolute;">막대 그래프 &amp; 꺽은선 그래프</div><div class="jqplot-axis jqplot-xaxis" style="left: 0px; width: 750px; height: 13.93px; bottom: 0px; position: absolute;"><div class="jqplot-xaxis-tick" style="left: 53.24px; position: absolute;">A Name</div><div class="jqplot-xaxis-tick" style="left: 155.87px; position: absolute;">B Name</div><div class="jqplot-xaxis-tick" style="left: 258.17px; position: absolute;">C Name</div><div class="jqplot-xaxis-tick" style="left: 360.56px; position: absolute;">D Name</div><div class="jqplot-xaxis-tick" style="left: 463.52px; position: absolute;">E Name</div><div class="jqplot-xaxis-tick" style="left: 566.07px; position: absolute;">F Name</div><div class="jqplot-xaxis-tick" style="left: 667.65px; position: absolute;">G Name</div></div><div class="jqplot-axis jqplot-yaxis" style="left: 0px; top: 0px; width: 12.58px; height: 324px; position: absolute;"><div class="jqplot-yaxis-tick" style="top: 293.1px; position: absolute;">2</div><div class="jqplot-yaxis-tick" style="top: 254.79px; position: absolute;">4</div><div class="jqplot-yaxis-tick" style="top: 216.48px; position: absolute;">6</div><div class="jqplot-yaxis-tick" style="top: 178.17px; position: absolute;">8</div><div class="jqplot-yaxis-tick" style="top: 139.85px; position: absolute;">10</div><div class="jqplot-yaxis-tick" style="top: 101.54px; position: absolute;">12</div><div class="jqplot-yaxis-tick" style="top: 63.23px; position: absolute;">14</div><div class="jqplot-yaxis-tick" style="top: 24.92px; position: absolute;">16</div></div><canvas width="787" height="340" class="jqplot-grid-canvas" style="left: 0px; top: 0px; width: 750px; height: 324px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-series-shadowCanvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-series-shadowCanvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-series-shadowCanvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-series-canvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-series-canvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-series-canvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-barRenderer-highlight-canvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-lineRenderer-highlight-canvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas><canvas width="752" height="281" class="jqplot-event-canvas" style="left: 22.58px; top: 31.89px; width: 717px; height: 268px; position: absolute;"></canvas></div>
			asd
			</div>
	</div>
</div>    
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.jqplot.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.pointLabels.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.categoryAxisRenderer.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.barRenderer.js"></script>
<script type="text/javascript">
jQuery(document).ready(function() { 

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
});
</script>