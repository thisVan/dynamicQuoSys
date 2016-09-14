<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html >
<%! String url = "jdbc:mysql://localhost:3306/led_statistic?useUnicode=true&characterEncoding=GBK"; %>
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="动态报价系统">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/logo.png" type="image/x-icon" />
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/styles.css" rel="stylesheet" media="screen">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
		<![endif]-->

<script type="text/javascript">
	
	<%
	 //取得当前日期所在周的第一天 
	 Calendar c = new GregorianCalendar(); 
	 c.setFirstDayOfWeek(Calendar.MONDAY); 
	 c.setTime(new Date()); 
	 c.set(Calendar.DAY_OF_WEEK, c.getFirstDayOfWeek()); // Monday 
	 Date weedbeforefir = new Date(c.getTime().getTime() - 7*24*3600*1000);
	 
	 
	 //取得当前日期所在周的最后一天 
	 c.set(Calendar.DAY_OF_WEEK, c.getFirstDayOfWeek() + 6); // Sunday 
	 Date weekbeforelas = new Date(c.getTime().getTime() - 7*24*3600*1000);
	 
	 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
     
	 String strtst = format.format(weedbeforefir);
	 
	 Date datefmt = null;
		try {
			datefmt = format.parse(strtst);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	%>
			//初始化数据库连接
			<%Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection conn = DriverManager.getConnection(url, "root", "123456789");
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from industry");
				int count = 0;%>
			
			//取出屏幕列表，填充屏幕select
			var arrayledinfo = new Array();
			var arrayledshort = new Array();
			var arrayledidprice = new Array();
			<%String queryled = "select led_id, led_name, led_weizhi, led_bofangshichang, led_bofangkaishishijian, led_bofangjieshushijian, led_changdu, led_kuangdu, led_mianji, led_fenbianlv, led_kanliprice from led where led.state = 'A'";
				rs = stmt.executeQuery(queryled);
				count = 0;
				String led_id = "";
				String led_name = "";
				String led_weizhi = "";
				String led_bofangshichang = "";
				String led_bofangkaishishijian = "";
				String led_bofangjieshushijian = "";
				String led_changdu = "";
				String led_kuangdu = "";
				String led_mianji = "";
				String led_fenbianlv = "";
				String led_kanliprice = "";
				while (rs.next()) {
					led_id = rs.getString("led_id");
					led_name = rs.getString("led_name");
					led_weizhi = rs.getString("led_weizhi");
					led_bofangshichang = rs.getString("led_bofangshichang");
					led_bofangkaishishijian = rs
							.getString("led_bofangkaishishijian");
					led_bofangjieshushijian = rs
							.getString("led_bofangjieshushijian");
					led_changdu = rs.getString("led_changdu");
					led_kuangdu = rs.getString("led_kuangdu");
					led_mianji = rs.getString("led_mianji");
					led_fenbianlv = rs.getString("led_fenbianlv");
					led_kanliprice = rs.getString("led_kanliprice");%>
							arrayledshort[<%=count%>]= new Array("<%=led_id%>","<%=led_name%>");
							arrayledidprice[<%=count%>]= new Array("<%=led_id%>","<%=led_kanliprice%>");
							arrayledinfo[<%=count%>] = new Array("<%=led_id%>","<%=led_name%>","<%=led_weizhi%>","<%=led_bofangshichang%>","<%=led_bofangkaishishijian%>","<%=led_bofangjieshushijian%>","<%=led_changdu%>","<%=led_kuangdu%>","<%=led_mianji%>","<%=led_fenbianlv%>","<%=led_kanliprice%>");
					<%count++;
				}%>
					
				
					
					//取出业务数据
					var arrayyewu = new Array();
					var arrayyewufull = new Array();
	
				<%String queryyewu = "select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from yewu";
				rs = stmt.executeQuery(queryyewu);
				count = 0;
				String kanhu = "";
				String leixing = "";
				String yw_ywyid = "";
				String led = "";
				String shichang = "";
				String pinci = "";
				String bofangshijian = "";
				String kaishishijian = "";
				String jieshushijian = "";
				String kanlijiaxiaoji = "";
				while (rs.next()) {
					kanhu = rs.getString("kanhu");
					leixing = rs.getString("leixing");
					yw_ywyid = rs.getString("ywy_id");
					led = rs.getString("led");
					shichang = rs.getString("shichang");
					pinci = rs.getString("pinci");
					bofangshijian = rs.getString("bofangshijian");
					kaishishijian = rs.getString("kaishishijian");
					jieshushijian = rs.getString("jieshushijian");
					kanlijiaxiaoji = rs.getString("kanlijiaxiaoji");%>
								arrayyewu[<%=count%>] = new Array("<%=leixing%>","<%=kaishishijian%>");
								arrayyewufull[<%=count%>] = new Array("<%=kanhu%>","<%=leixing%>","<%=yw_ywyid%>","<%=led%>","<%=shichang%>","<%=pinci%>","<%=bofangshijian%>","<%=kaishishijian%>","<%=jieshushijian%>","<%=kanlijiaxiaoji%>");
	<%count++; }%>
		
				//取出时间段内的业务数据
				var countzpl = new Array();	
  			<%String queryzpl = "select zpl.led as led, zpl.bofangshijian as bofangsum, zpl.kaishishijian as kaishitime, zpl.jieshushijian as jieshutime from (select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from yewu where kaishishijian <= "+"'"+format.format(weekbeforelas)+"'"+"and jieshushijian >= "+"'"+format.format(weedbeforefir)+"' and yewu.leixing = '商业广告' ) as zpl ";
				rs = stmt.executeQuery(queryzpl);
				count = 0;
				String ledzpl = "";
				String bofangsumzpl = "";
				String kaishitime = "";
				String jieshutime = "";
				while (rs.next()) {
					ledzpl = rs.getString("led");
					bofangsumzpl = rs.getString("bofangsum");
					kaishitime = rs.getString("kaishitime");
					jieshutime = rs.getString("jieshutime");
					%>
					countzpl[<%=count%>] = new Array("<%=ledzpl%>","<%=bofangsumzpl%>","<%=kaishitime%>","<%=jieshutime%>");
	<%count++; }%>
	
	

	

	var ledzplcal = new Array();
	var ledzpldou = new Array();

				for(var i=0;i<arrayledinfo.length;i++){
					var counttotalshichang = 0;
					
						for(var j=0;j<countzpl.length;j++){
						if(arrayledinfo[i][0] == countzpl[j][0]){
							var dat1 = new Date(countzpl[j][2].replace(/-/g,"/"));
							var dat2 = new Date(countzpl[j][3].replace(/-/g,"/"));
							for(var index=0;index<7;index++){
								var datetmptmp = new Date("<%=datefmt%>");
								var datetmp = new Date(datetmptmp.getTime() - 14*3600*1000);
								if(datetmp>=dat1 && datetmp<=dat2){
								counttotalshichang += parseInt(countzpl[j][1]);
								}
								/* alert(datetmp+"----dat1------"+dat1+"---------dat2--------"+dat2); */
								datetmp = new Date(datetmp.getTime() + 24*3600*1000);
							}
						
						}
					
					}
					
					ledzplcal[i] = new Array(arrayledinfo[i][0],counttotalshichang);
					
					ledzpldou[i] = new Array(arrayledinfo[i][1],counttotalshichang/(arrayledinfo[i][3]*7));
				}
/* 				var temzpl = 0;
				for(var i=0;i<ledzpldou.length;i++){
					for (var j = 0; j < ledzpldou.length - i; j++) {
						if (ledzpldou[j] > ledzpldou[j + 1]) {
							temp = ledzpldou[j + 1];
							ledzpldou[j + 1] = ledzpldou[j];
							ledzpldou[j] = temp;
						}
					}
						console.log(array);
						if (ledzpldou[i][1] > topzpl) {
				topzpl = ledzpldou[i][1];
			}
			if (led)
		} */
		
		var newledzpldou = new Array();
		for(var i=0;i<ledzpldou.length;i++){
			newledzpldou[i] = ledzpldou[i][1];
		}

		var topzplval = (Math.max.apply(Math, newledzpldou)*100).toFixed(2);
		var botzplval = (Math.min.apply(Math, newledzpldou)*100).toFixed(2);

		var topzplname = ledzpldou[newledzpldou.indexOf(Math.max.apply(Math, newledzpldou))][0];
		var botzplname = ledzpldou[newledzpldou.indexOf(Math.min.apply(Math, newledzpldou))][0];
		

	<%
			String queryrenkannum = "select * from  renkanshu where qiandingriqi between "+"'"+format.format(weedbeforefir)+"'"+" and " +"'"+format.format(weekbeforelas)+"'";
			rs = stmt.executeQuery(queryrenkannum);
			count = 0;
			while(rs.next()){
				count ++;
				%><%
			}
			%>
			var countrenkan = "<%=count%>";
			
			var countzj = new Array();
			<%
			String queryqiandan = "select sum(kanlizongjia) as zongjia from (select * from  renkanshu where qiandingriqi between "+"'"+format.format(weedbeforefir)+"'"+" and " +"'"+format.format(weekbeforelas)+"'"+") as total";
			rs = stmt.executeQuery(queryqiandan);
			System.out.println(format.format(weedbeforefir));
			count = 0;
			String countzongjia = "";
			while(rs.next()){
				countzongjia = rs.getString("zongjia");
				if(countzongjia == null){
					countzongjia = "0";
				}
				%>
				countzj[<%=count%>] = new Array("<%=countzongjia%>");
				<%
			count ++;}

			%>

			var countzongjia = Math.round(countzj[0]);
			
			<%
			String querykanhu = "select * from (select * from  renkanshu where qiandingriqi between "+"'"+format.format(weedbeforefir)+"'"+" and " +"'"+format.format(weekbeforelas)+"'"+") as total group by guangaokanhu";
			rs = stmt.executeQuery(querykanhu);
			count = 0;
			while(rs.next()){
				count ++;
			}
			%>
			var countkanhu = "<%=count%>";
			<%
			int countKehu = 0;
			String querykehugg = "Select distinct  kanhu from yewu where jieshushijian <= "+"'"+format.format(weekbeforelas)+"'";
			rs = stmt.executeQuery(querykehugg);
			System.out.println(rs);
			count = 0;
			while(rs.next()){
				countKehu ++;
			}
			%>
	<%rs.close();
	stmt.close();
	conn.close();%>
	
	
</script>


<script type="text/javascript">

	var timenow = new Date();
	var lednamelable = new Array();
	var ledbofangshichangvalue = new Array();
	for (var i = 0; i < arrayledshort.length; i++) {
		var stackshichang = 0;
		var keboshichangashours = Math.round(arrayledinfo[i][3]/360)/10;
		lednamelable.push(arrayledshort[i][1]+"("+keboshichangashours+"h)");

		for (var j = 0; j < arrayyewufull.length; j++) {
			if (arrayyewufull[j][3] == arrayledshort[i][0]) {
				var iDate = arrayyewufull[j][7].split("-");
				
				var jDate = new Date(iDate[1] + '-' + iDate[2] + '-' + iDate[0]);

				var xDate = arrayyewufull[j][8].split("-");
				var yDate = new Date(xDate[1] + '-' + xDate[2] + '-' + xDate[0]);
				/* 显示占屏率 */
				if ( timenow.getTime()>= jDate.getTime() && timenow.getTime() < (yDate.getTime()+1000*3600*24) ) {
					stackshichang = stackshichang
							+ parseInt(arrayyewufull[j][6]);
					
					
				}
				
			}
			
		}
		
		ledbofangshichangvalue.push(Math.round(stackshichang/arrayledinfo[i][3]*10000)/100);
		
	}
/* 	var barChartData = {
		labels : lednamelable,
		datasets : [

		{
			fillColor : "rgba(48, 164, 255, 0.2)",
			strokeColor : "rgba(48, 164, 255, 0.8)",
			highlightFill : "rgba(48, 164, 255, 0.75)",
			highlightStroke : "rgba(48, 164, 255, 1)",
			data : ledbofangshichangvalue
		} ]

	}; */
	
	window.onload = function() {

		/* var chart2 = document.getElementById("bar-chart").getContext("2d");
		window.myBar = new Chart(chart2).Bar(barChartData, {
			responsive : true
		}); */
		
		  // 路径配置
		require.config({
		paths: {
		echarts: 'js/echarts/build/dist'
	}
		});
		  
		// 使用
		require(
			[
				'echarts',
				'echarts/chart/line',
				'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
			],
			function(ec) {
				// 基于准备好的dom，初始化echarts图表
				var myChart = ec.init(document.getElementById('draw-barchart@echart'));
	
				option = {
					tooltip: {
						trigger: 'axis'
					},
					
					toolbox: {
						show: true,
						feature: {
							magicType: {
								show: true,
								type: ['line', 'bar']
							},
							restore: {
								show: true
							},
							saveAsImage: {
								show: true
							}
						}
					},
					calculable: true,
					xAxis: [{
						type: 'category',
						margin: 80,
						interval: 0,
						boundaryGap: true,
						splitLine:{show: false},
						axisLabel:{
							rotate: 45,
				            textStyle:{
				            	fontFamily:'微软雅黑'
				            }
				          },
						data: lednamelable
					}],
					grid: { // 控制图的大小，调整下面这些值就可以，
			             x: 60,
			             x2: 100,
			             y2: 120,// y2可以控制 X轴跟Zoom控件之间的间隔，避免以为倾斜后造成 label重叠到zoom上
			         },
					yAxis: [{
						name: '实时占屏率(商业广告)',
			            type : 'value',
			            position: 'left',
			            //min: 0,
			            //max: 720,
			            //splitNumber: 5,
			            boundaryGap: [0,0.2],
			            axisLabel : {
			                show:true,
			                interval: 'auto',    // {number}
			                margin: 18,
			                formatter: '{value}%'
			                // Template formatter!
			             }
						}],
					series: [{
						name: '实时占屏率',
						type: 'bar',
						itemStyle: {
							normal: {
								color: "rgba(48, 164, 255, 0.3)",
								barBorderColor: "rgba(48, 164, 255, 1)",
								barBorderWidth: 2,
								label: {
			                         show: true,
			                         formatter: '{c}%',
			                         textStyle: {
			                             color: '#800080'
			                         }
			                     },
								areaStyle: {
									type: 'default'
								}
							}
						},
						data: ledbofangshichangvalue
					}]
				};
	
				// 为echarts对象加载数据 
				myChart.setOption(option);
			}
		);

		$("#countdingdan").html(countrenkan);
		$("#countkanhu").html("<%=countKehu%>");
		$("#totaljine").html(countzongjia);
		$("#topzpl").html(topzplval + "%");
		$("#topzhanping").html(topzplname);
		$("#botzpl").html(botzplval + "%");
		$("#bottomzhanping").html(botzplname);
	};
</script>

</head>

<body style="font-family: '微软雅黑';">

	<div class="col-sm-12 col-lg-12 main">
		
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">
					运营概况
					</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-md-12">
				<div class="panel-heading">上周运营情况概览</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked bag">
								<use xlink:href="#stroked-bag"></use></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div align="center" style="font-size: large;font-weight:bold" class="" id="countdingdan"></div>
							<div align="center" style="font-weight: bold;">新增订单</div>
						</div>
					</div>
				</div>
			</div>
			<!-- <div style="display: none;" class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-orange panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked monitor">
								<use xlink:href="#stroked-monitor" /></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div style="font-size: large;color: grey;font-weight:bold" class="" id="totaljine"></div>
							<div class="text-muted">新增签单金额</div>
						</div>
					</div>
				</div>
			</div> -->
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-orange panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div align="center" style="font-size: large;font-weight:bold" class="" id="countkanhu"></div>
							<div align="center" style="font-weight: bold;">在播客户数量</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-red panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked monitor">
								<use xlink:href="#stroked-monitor" /></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class=" row">
								<div align="center" id="topzpl" align="right"
									style="font-size: large;color: red;font-weight:bold"></div>
								
							</div>
							<div align="center" class="row" style="font-weight: bold;" id="topzhanping"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked video"><use xlink:href="#stroked-video"/></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class=" row">
								<div align="center" id="botzpl" align="right"
									style="font-size: large;color: green;font-weight:bold"></div>
								
							</div>
							<div align="center" class="row" style="font-weight: bold;"
									id="bottomzhanping" ></div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<!--/.row-->

		<div class="row">
			<!-- <div class="col-lg-12">
				<div class="">
					<div class="panel-heading">实时占屏率</div>
					<div class="">
						<div class="canvas-wrapper">
							<canvas class="main-chart" id="bar-chart" height="200"
								width="600"></canvas>
						</div>
					</div>
				</div>
			</div> -->
			
			<div class="col-1g-12">
				<div class="col-lg-12"><div class="panel-heading">实时占屏率</div></div>
					<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
					<div id="draw-barchart@echart" style="height:500px;"></div>

					<!-- ECharts单文件引入 -->
					<script src="js/echarts.js"></script>

				</div>
		</div>
		<!--/.row-->


		<div class="row" style="display: none;">
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>订单转化率</h4>
						<div style="font-weight: lighter;">意向跟进和下单的比率</div>
						<div class="easypiechart" id="easypiechart-blue" data-percent="92">
							<span class="percent">92%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>客户付款率</h4>
						<div style="font-weight: lighter;">订单金额和实收账款的比率</div>
						<div class="easypiechart" id="easypiechart-orange"
							data-percent="65">
							<span class="percent">65%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>目标完成率</h4>
						<div style="font-weight: lighter;">全年业绩目标完成比率</div>
						<div class="easypiechart" id="easypiechart-teal" data-percent="56">
							<span class="percent">56%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>占屏率</h4>
						<div style="font-weight: lighter;">实时占屏率数据</div>
						<div class="easypiechart" id="easypiechart-red" data-percent="27">
							<span class="percent">27%</span>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!--/.row-->

		<div class="row" style="display: none;">
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">行业分布</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="chart" id="pie-chart"></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">广告类型</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="chart" id="doughnut-chart"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->


	</div>
	<!--/.main-->


	<script src="js/king-common.js"></script>
	<!-- <script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script> -->

</body>
</html>