<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<link rel="stylesheet" type="text/css" href="../css/jquery.jqplot.css"/>
<style type="text/css">
#chart .jqplot-point-label {
    border:1.5px solid #AAAAAA;
    padding:1px 3px;
    background-color:#EECCDD;
}
</style>

<div class="tab-pane fade" id="sales-management">
	<!-- ���м�(��ǰ���� ����) -->
	<ul class="nav nav-pills mb-3 bottomNav-managerPage">
		<li class="nav-item"><a class="nav-link active"
			data-toggle="pill" href="#pills-home-daily-sales" aria-selected="true">���� ���� ����</a></li>
		<li class="nav-item"><a class="nav-link"
			data-toggle="pill" href="#pills-profile-monthly-sales" aria-selected="false">���� ���� ����</a></li>
	</ul>
	
	<div class="tab-content" id="pills-tabContent">
	<!-- ���м� -->
	
			<div class="tab-pane fade show active listDiv-managerPage" id="pills-home-daily-sales">
				<div id="chart" style="width:750px;height:324px;"></div>
			</div>
						
			<div class="tab-pane fade" id="pills-profile-monthly-sales">
			���� ���� ���� �κ�
			</div>
	</div>
</div>    

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
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
          title : "���� �׷��� & ������ �׷���"
        , stackSeries : true      // �׷����� �ϳ��� ��ģ��.
        , series : [
            {      // barChart1 �迭�� ���� �׷����� �����Ѵ�.
                  renderer : jQuery.jqplot.BarRenderer
                , rendererOptions : {
                      barWidth : 35                    // ����׷����� ���̸� ����
                    , barPadding : -15                // ����׷����� ������ ����
                    , highlightMouseOver : false    // ����׷����� Ŭ�����θ� ���� (�⺻�� : true)
                }
            }
            , {    // barChart2 �迭�� ���� �׷����� �����Ѵ�.
                  renderer : jQuery.jqplot.BarRenderer
                , rendererOptions : {
                      barWidth : 35                    // ����׷����� ���̸� ����
                    , barPadding : -15                // ����׷����� ������ ����
                    , highlightMouseOver : false    // ����׷����� Ŭ�����θ� ���� (�⺻�� : true)
                }
            }
            , {    // lineChart �迭�� ������ �׷����� �����Ѵ�.
                  disableStack : true      // �������� �ն��� �������� ���� �����ϱ����� ������ �׷����� disableStack�� true�� ����
                  // jQuery.jqplot.LineRenderer(������ �׷���)�� �÷������� �⺻������ �������� �ʾƵ� �ȴ�.
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