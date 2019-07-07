<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->    
<!DOCTYPE html >
<html>
<head>
<title>jQplot</title>
<link rel="stylesheet" type="text/css" href="../css/jquery.jqplot.css"/>
<style type="text/css">
#chart .jqplot-point-label {
    border:1.5px solid #AAAAAA;
    padding:1px 3px;
    background-color:#EECCDD;
}
</style>
</head>
<body>
<div id="chart" style="width:750px;height:324px;"></div>
</body>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.barRenderer.js"></script>
<script type="text/javascript" src="../js/jquery.jqplot.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.pointLabels.js"></script>
<script type="text/javascript" src="../js/plugins/jqplot.categoryAxisRenderer.js"></script>
<script type="text/javascript">
jQuery(document).ready(function() { 

    var barChart1 = [9, 8, 6, 8, 7, 6, 4];
    var barChart2 = [5, 3, 4, 6, 2, 7, 8];
    var lineChart = [12, 7, 4, 10, 8, 5, 7];
    
    jQuery("#chart").jqplot([barChart1, barChart2, lineChart], {
          title : "막대 그래프 & 꺽은선 그래프"
        , stackSeries : true      // 그래프를 하나로 합친다.
        , series : [
            {      // barChart1 배열을 막대 그래프로 지정한다.
                  renderer : jQuery.jqplot.BarRenderer
                , rendererOptions : {
                      barWidth : 35                    // 막대그래프의 넓이를 지정
                    , barPadding : -15                // 막대그래프의 여백을 지정
                    , highlightMouseOver : false    // 막대그래프의 클릭여부를 지정 (기본값 : true)
                }
            }
            , {    // barChart2 배열을 막대 그래프로 지정한다.
                  renderer : jQuery.jqplot.BarRenderer
                , rendererOptions : {
                      barWidth : 35                    // 막대그래프의 넓이를 지정
                    , barPadding : -15                // 막대그래프의 여백을 지정
                    , highlightMouseOver : false    // 막대그래프의 클릭여부를 지정 (기본값 : true)
                }
            }
            , {    // lineChart 배열을 꺽은선 그래프로 지정한다.
                  disableStack : true      // 데이터의 합또한 합쳐지는 것을 방지하기위해 꺽은선 그래프는 disableStack을 true로 선언
                  // jQuery.jqplot.LineRenderer(꺽은선 그래프)의 플러그인은 기본적으로 지정하지 않아도 된다.
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
</html>