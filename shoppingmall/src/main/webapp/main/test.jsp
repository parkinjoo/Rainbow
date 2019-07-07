<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
<meta charset=UTF-8" />
<meta name="robots" content="noindex,nofollow"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
<meta http-equiv="X-UA Compatible" control="IE=edge,chrome=1" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<!-- http://www.jqplot.com 제공 자바스크립트 include -->
<script type="text/javascript" src="/jquery.jqplot.js"></script>
<script type="text/javascript" src="../plugins/jqplot.barRenderer.js"></script>
<script type="text/javascript" src="../plugins/jqplot.pointLabels.js"></script>
<script type="text/javascript" src="../plugins/jqplot.categoryAxisRenderer.js"></script>
<link rel="stylesheet" type="text/css" href="/jqplot/jquery.jqplot.css" />
<script type="text/javascript">
$(document).ready(function(){
    var line1 = [4, 6, 2, 5];
    var line2 = [10, 8, 22, 15, 10];
    var ticks = ['닛산', '포르쉐', 'KIA', '현대', '벤츠'];
 
    $('#chart1').jqplot([line1,line2], {
        title:'막대그래프 예제',
        seriesDefaults:{
            renderer:$.jqplot.BarRenderer,
            rendererOptions: { barWidth: 25 },
            pointLabels: { show: true, formatString: '%d' }
        },
        axes:{
            xaxis:{
                renderer: $.jqplot.CategoryAxisRenderer,
                ticks: ticks
            }
        }
    });
});
</script>
</head>
<body>
<div id="chart1" style="height:300px;width:600px; ">asdasd</div>
</body>
</html>