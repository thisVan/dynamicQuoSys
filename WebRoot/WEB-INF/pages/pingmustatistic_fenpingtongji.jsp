<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%! String url = "jdbc:mysql://localhost:3306/led_statistic?useUnicode=true&characterEncoding=GBK";
	String qstr="select hangyename from hangye";
%>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="动态报价系统">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/logo.png" type="image/x-icon" />
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
<script type="text/javascript">
	<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url, "root", "123456789");
	Statement stmt = conn.createStatement();
	ResultSet rs = null;
	int count = 0;
	%>
	
	//取出屏幕列表，填充屏幕select
	var arrayledinfo = new Array();
	var arrayledshort = new Array();
	var arrayledidprice = new Array();
	<%
	String queryled = "select led_id, led_name, led_weizhi, led_bofangshichang, led_bofangkaishishijian, led_bofangjieshushijian, led_changdu, led_kuangdu, led_mianji, led_fenbianlv, led_kanliprice from led";
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
				led_bofangkaishishijian = rs.getString("led_bofangkaishishijian");
				led_bofangjieshushijian = rs.getString("led_bofangjieshushijian");
				led_changdu = rs.getString("led_changdu");
				led_kuangdu = rs.getString("led_kuangdu");
				led_mianji = rs.getString("led_mianji");
				led_fenbianlv = rs.getString("led_fenbianlv");
				led_kanliprice = rs.getString("led_kanliprice");
				%>
					arrayledshort[<%=count%>]= new Array("<%=led_id%>","<%=led_name%>");
					arrayledidprice[<%=count%>]= new Array("<%=led_id%>","<%=led_kanliprice%>");
					arrayledinfo[<%=count%>] = new Array("<%=led_id%>","<%=led_name%>","<%=led_weizhi%>","<%=led_bofangshichang%>","<%=led_bofangkaishishijian%>","<%=led_bofangjieshushijian%>","<%=led_changdu%>","<%=led_kuangdu%>","<%=led_mianji%>","<%=led_fenbianlv%>","<%=led_kanliprice%>");
			<%count++;}%>

	//取出人员，以供选择使用
	var arrayywyid = new Array();
	var arrayywyxingming = new Array();
	<%
	String queryywy = "select ywy_id, ywy_xingming, ywy_bumenid from yewuyuan";
			rs = stmt.executeQuery(queryywy);
			count = 0;
			String ywy_id = "";
			String ywy_xingming = "";
			String ywy_bumenid = "";
			while (rs.next()) {
				ywy_id = rs.getString("ywy_id");
				ywy_xingming = rs.getString("ywy_xingming");
				ywy_bumenid = rs.getString("ywy_bumenid");%>
					arrayywyid[<%=count%>] = new Array("<%=ywy_id%>","<%=ywy_xingming%>");
					arrayywyxingming[<%=count%>] = new Array("<%=ywy_xingming%>","<%=ywy_bumenid%>");
			<%count++;}%>



	//取出部门数据填充部门select
	var arraybumenfromdb = new Array();
	var arraybumenfromdbid = new Array();
	<%
	rs = stmt.executeQuery("select bm_id, bm_mingcheng from bumen");
	count = 0;
	String bm_id = "";
	String bm_mingcheng = "";
	while (rs.next()) {
		bm_id = rs.getString("bm_id");
		bm_mingcheng = rs.getString("bm_mingcheng");
	%>
		arraybumenfromdbid[<%=count%>] = new Array("<%=bm_id%>");
		arraybumenfromdb[<%=count%>] = new Array("<%=bm_mingcheng%>");
	<%count++;}%>
	
	//取出业务数据
	var arrayyewu = new Array();
	var arrayyewufull = new Array();
	var arrayyewushangye = new Array();
	var arrayyewuhuzeng = new Array();
	var arrayyewuzengbo = new Array();
	var arrayyewugongyi = new Array();
	var arrayyewuqita = new Array();
	<%
	String queryyewu = "select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from yewu where state = 'N'";
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
				kanlijiaxiaoji = rs.getString("kanlijiaxiaoji");
				%>
				arrayyewu[<%=count%>] = new Array("<%=leixing%>","<%=kaishishijian%>");
				
				arrayyewufull[<%=count%>] = new Array("<%=kanhu%>","<%=leixing%>","<%=yw_ywyid%>","<%=led%>","<%=shichang%>","<%=pinci%>","<%=bofangshijian%>","<%=kaishishijian%>","<%=jieshushijian%>","<%=kanlijiaxiaoji%>");
			<%count++;}%>
			
			<%
			String queryyewushangye = "select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from led_statistic.yewu where state= 'N' and leixing = '商业广告'";
					rs = stmt.executeQuery(queryyewushangye);
					count = 0;
					String s_kanhu = "";
					String s_leixing = "";
					String s_yw_ywyid = "";
					String s_led = "";
					String s_shichang = "";
					String s_pinci = "";
					String s_bofangshijian = "";
					String s_kaishishijian = "";
					String s_jieshushijian = "";
					String s_kanlijiaxiaoji = "";
					while (rs.next()) {
						s_kanhu = rs.getString("kanhu");
						s_leixing = rs.getString("leixing");
						s_yw_ywyid = rs.getString("ywy_id");
						s_led = rs.getString("led");
						s_shichang = rs.getString("shichang");
						s_pinci = rs.getString("pinci");
						s_bofangshijian = rs.getString("bofangshijian");
						s_kaishishijian = rs.getString("kaishishijian");
						s_jieshushijian = rs.getString("jieshushijian");
						s_kanlijiaxiaoji = rs.getString("kanlijiaxiaoji");
						%>
						arrayyewushangye[<%=count%>] = new Array("<%=s_kanhu%>","<%=s_leixing%>","<%=s_yw_ywyid%>","<%=s_led%>","<%=s_shichang%>","<%=s_pinci%>","<%=s_bofangshijian%>","<%=s_kaishishijian%>","<%=s_jieshushijian%>","<%=s_kanlijiaxiaoji%>");
					<%count++;}%>
					
					
					
					<%
					String arrayyewuhuzeng = "select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from yewu where state= 'N' and leixing = '互赠广告'";
							rs = stmt.executeQuery(arrayyewuhuzeng);
							count = 0;
							String h_kanhu = "";
							String h_leixing = "";
							String h_yw_ywyid = "";
							String h_led = "";
							String h_shichang = "";
							String h_pinci = "";
							String h_bofangshijian = "";
							String h_kaishishijian = "";
							String h_jieshushijian = "";
							String h_kanlijiaxiaoji = "";
							while (rs.next()) {
								h_kanhu = rs.getString("kanhu");
								h_leixing = rs.getString("leixing");
								h_yw_ywyid = rs.getString("ywy_id");
								h_led = rs.getString("led");
								h_shichang = rs.getString("shichang");
								h_pinci = rs.getString("pinci");
								h_bofangshijian = rs.getString("bofangshijian");
								h_kaishishijian = rs.getString("kaishishijian");
								h_jieshushijian = rs.getString("jieshushijian");
								h_kanlijiaxiaoji = rs.getString("kanlijiaxiaoji");
								%>
								arrayyewuhuzeng[<%=count%>] = new Array("<%=h_kanhu%>","<%=h_leixing%>","<%=h_yw_ywyid%>","<%=h_led%>","<%=h_shichang%>","<%=h_pinci%>","<%=h_bofangshijian%>","<%=h_kaishishijian%>","<%=h_jieshushijian%>","<%=h_kanlijiaxiaoji%>");
							<%count++;}%>
							

							<%
							String queryyewuzengbo = "select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from yewu where state= 'N' and leixing = '赠播广告'";
									rs = stmt.executeQuery(queryyewuzengbo);
									count = 0;
									String z_kanhu = "";
									String z_leixing = "";
									String z_yw_ywyid = "";
									String z_led = "";
									String z_shichang = "";
									String z_pinci = "";
									String z_bofangshijian = "";
									String z_kaishishijian = "";
									String z_jieshushijian = "";
									String z_kanlijiaxiaoji = "";
									while (rs.next()) {
										z_kanhu = rs.getString("kanhu");
										z_leixing = rs.getString("leixing");
										z_yw_ywyid = rs.getString("ywy_id");
										z_led = rs.getString("led");
										z_shichang = rs.getString("shichang");
										z_pinci = rs.getString("pinci");
										z_bofangshijian = rs.getString("bofangshijian");
										z_kaishishijian = rs.getString("kaishishijian");
										z_jieshushijian = rs.getString("jieshushijian");
										z_kanlijiaxiaoji = rs.getString("kanlijiaxiaoji");
										%>
										arrayyewuzengbo[<%=count%>] = new Array("<%=z_kanhu%>","<%=z_leixing%>","<%=z_yw_ywyid%>","<%=z_led%>","<%=z_shichang%>","<%=z_pinci%>","<%=z_bofangshijian%>","<%=z_kaishishijian%>","<%=z_jieshushijian%>","<%=z_kanlijiaxiaoji%>");
									<%count++;}%>
									

									<%
									String queryyewugongyi = "select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from yewu where state= 'N' and leixing = '公益广告'";
											rs = stmt.executeQuery(queryyewugongyi);
											count = 0;
											String g_kanhu = "";
											String g_leixing = "";
											String g_yw_ywyid = "";
											String g_led = "";
											String g_shichang = "";
											String g_pinci = "";
											String g_bofangshijian = "";
											String g_kaishishijian = "";
											String g_jieshushijian = "";
											String g_kanlijiaxiaoji = "";
											while (rs.next()) {
												g_kanhu = rs.getString("kanhu");
												g_leixing = rs.getString("leixing");
												g_yw_ywyid = rs.getString("ywy_id");
												g_led = rs.getString("led");
												g_shichang = rs.getString("shichang");
												g_pinci = rs.getString("pinci");
												g_bofangshijian = rs.getString("bofangshijian");
												g_kaishishijian = rs.getString("kaishishijian");
												g_jieshushijian = rs.getString("jieshushijian");
												g_kanlijiaxiaoji = rs.getString("kanlijiaxiaoji");
												%>
												arrayyewugongyi[<%=count%>] = new Array("<%=g_kanhu%>","<%=g_leixing%>","<%=g_yw_ywyid%>","<%=g_led%>","<%=g_shichang%>","<%=g_pinci%>","<%=g_bofangshijian%>","<%=g_kaishishijian%>","<%=g_jieshushijian%>","<%=g_kanlijiaxiaoji%>");
											<%count++;}%>
											
											<%
											String queryyewuqita = "select kanhu, leixing, ywy_id, led, shichang, pinci, shichang * pinci as bofangshijian, kaishishijian, jieshushijian, kanlijiaxiaoji from yewu where state= 'N' and leixing = '其它广告'";
													rs = stmt.executeQuery(queryyewuqita);
													count = 0;
													String q_kanhu = "";
													String q_leixing = "";
													String q_yw_ywyid = "";
													String q_led = "";
													String q_shichang = "";
													String q_pinci = "";
													String q_bofangshijian = "";
													String q_kaishishijian = "";
													String q_jieshushijian = "";
													String q_kanlijiaxiaoji = "";
													while (rs.next()) {
														q_kanhu = rs.getString("kanhu");
														q_leixing = rs.getString("leixing");
														q_yw_ywyid = rs.getString("ywy_id");
														q_led = rs.getString("led");
														q_shichang = rs.getString("shichang");
														q_pinci = rs.getString("pinci");
														q_bofangshijian = rs.getString("bofangshijian");
														q_kaishishijian = rs.getString("kaishishijian");
														q_jieshushijian = rs.getString("jieshushijian");
														q_kanlijiaxiaoji = rs.getString("kanlijiaxiaoji");
														%>
														arrayyewuqita[<%=count%>] = new Array("<%=q_kanhu%>","<%=q_leixing%>","<%=q_yw_ywyid%>","<%=q_led%>","<%=q_shichang%>","<%=q_pinci%>","<%=q_bofangshijian%>","<%=q_kaishishijian%>","<%=q_jieshushijian%>","<%=q_kanlijiaxiaoji%>");
													<%count++;}%>

	<%
	rs.close();
	stmt.close();
	conn.close();%>
	
	var kanlijiaclassic = arrayledidprice[0][1];
</script>

</head>

<body style="font-family: '微软雅黑';">

	<div class="main">

		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">屏幕统计</h3>

			</div>
		</div>
		<!--/.row-->

		<div class="row">

			<div class="col-1g-12">
				<div class="panel panel-default">
					<div class="panel-body tabs">

						<ul class="nav nav-pills">
							<li><a href="pingmustatistic.action" >实时占屏率</a></li>
							<li style="display: none;"><a
								href="pingmustatistic_fenpingyeji.html" >分屏业绩表现</a></li>
							<li class="active"><a
								href="pingmustatistic_fenpingtongji.action">分屏数据统计</a></li>

						</ul>

						<div class="tab-content">
							<div class="col-1g-12">
								<div class="col-md-12">
									<form class="form-inline">

										<script type="text/javascript">
							//dynamic add options in select tag back the default date
	
							window.onload = function (){
								var arrledlist = arrayledshort;
								for(var i=0;i< arrayledshort.length;i++){
								document.getElementById("fenpingyeji_select").options.add(new Option(arrledlist[i][1],arrledlist[i][0]));
								}
								document.getElementById('nffptime-strat').valueAsDate = new Date();
								document.getElementById('nffptime-end').valueAsDate = new Date(new Date().getTime()+1000*3600*24*6);
							}
							
							</script>
										<select class="form-control" id="fenpingyeji_select"></select>
										<label>请选择起始时间：</label><input class="form-control"
											id="nffptime-strat" type="date" /> <label>请选择结束时间：</label><input
											class="form-control" id="nffptime-end" type="date" /> <input type="button" class="btn-primary form-control" value="按日统计" onclick="btnCount_Click()" />
											<input type="button" class="btn-primary form-control" value="按时段统计" onclick="btnzhzpl_Click()" />
									</form>

								</div>
							</div>
						</div>
						<div class="col-1g-12">
							<label>&nbsp;</label>
						</div>
						<script type="text/JavaScript">
						
						
					  function  btnCount_Click(){
						  var kebsc = 0;
						  var ledselectvalue = document.getElementById("fenpingyeji_select").value;
						 
					      var s1  =  document.getElementById("nffptime-strat").value;
					      var s2  =  document.getElementById("nffptime-end").value;
						
					      //确定可播时长
					      for(var i = 0;i<arrayledinfo.length;i++){
					    	  if(arrayledinfo[i][0] == ledselectvalue){
					    		  kebsc = arrayledinfo[i][3];
					    	  }
					      }
					     // 路径配置
						require.config({
						paths: {
						echarts: 'js/echarts/build/dist'
					}
						});
						
						var datestrat = document.getElementById("nffptime-strat");
						var dateend = document.getElementById("nffptime-end");
						var dDate  =  datestrat.value.split("-");
						var dDate1  =  new  Date(dDate[1]  +  '-'  +  dDate[2]  +  '-'  +  dDate[0]); 
						var datestratvalue = Math.abs(dDate1);
						var oneDay = 24 * 3600 * 1000;
						
						var ledconfirmedrecordsy = new Array();
						var ledconfirmedrecordhz = new Array();
						var ledconfirmedrecordzb = new Array();
						var ledconfirmedrecordgy = new Array();
						var ledconfirmedrecordqt = new Array();
						
						for(var i =0;i<arrayyewushangye.length;i++){
							if(ledselectvalue == arrayyewushangye[i][3]){
								ledconfirmedrecordsy.push(arrayyewushangye[i]);
								
							}
						}
						for(var i =0;i<arrayyewuhuzeng.length;i++){
							if(arrayyewuhuzeng[i][3] == ledselectvalue){
								ledconfirmedrecordhz.push(arrayyewuhuzeng[i]);
							}
						}
						for(var i =0;i<arrayyewuzengbo.length;i++){
							if(arrayyewuzengbo[i][3] == ledselectvalue){
								ledconfirmedrecordzb.push(arrayyewuzengbo[i]);
							}
						}
						for(var i =0;i<arrayyewugongyi.length;i++){
							if(arrayyewugongyi[i][3] == ledselectvalue){
								ledconfirmedrecordgy.push(arrayyewugongyi[i]);
							}
						}
						for(var i =0;i<arrayyewuqita.length;i++){
							if(arrayyewuqita[i][3] == ledselectvalue){
								ledconfirmedrecordqt.push(arrayyewuqita[i]);
							}
						}
						var arrywsy = [];
						var arrywhz = [];
						var arrywzb = [];
						var arrywgy = [];
						var arrywqt = [];
						
						if(ledconfirmedrecordsy.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								for(var i=0;i<ledconfirmedrecordsy.length;i++){
									
									var iDate  =  ledconfirmedrecordsy[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordsy[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										
										stackshichang = stackshichang + parseInt(ledconfirmedrecordsy[i][6]);
									}
								}
								arrywsy.push(Math.round(stackshichang/kebsc*10000)/100);
								
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}
			
						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywsy.push(0);
							}
						}
						
						if(ledconfirmedrecordhz.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								for(var i=0;i<ledconfirmedrecordhz.length;i++){
									
									var iDate  =  ledconfirmedrecordhz[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordhz[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordhz[i][6]);
									}
								}
								arrywhz.push(Math.round(stackshichang/kebsc*10000)/100);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywhz.push(0);
							}
						}
						
						if(ledconfirmedrecordzb.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								for(var i=0;i<ledconfirmedrecordzb.length;i++){
									
									var iDate  =  ledconfirmedrecordzb[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordzb[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordzb[i][6]);
									}
								}
								arrywzb.push(Math.round(stackshichang/kebsc*10000)/100);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywzb.push(0);
							}
						}
						
						if(ledconfirmedrecordgy.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								for(var i=0;i<ledconfirmedrecordgy.length;i++){
									
									var iDate  =  ledconfirmedrecordgy[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordgy[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordgy[i][6]);
									}
								}
								arrywgy.push(Math.round(stackshichang/kebsc*10000)/100);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywgy.push(0);
							}
						}
						
						if(ledconfirmedrecordqt.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								for(var i=0;i<ledconfirmedrecordqt.length;i++){
									
									var iDate  =  ledconfirmedrecordqt[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordqt[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordqt[i][6]);
									}
								}
								arrywqt.push(Math.round(stackshichang/kebsc*10000)/100);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywqt.push(0);
							}
						}

						
						var date = [];
						var data = arrywsy;
						var data1 = arrywhz;
						var data2 = arrywzb;
						var data3 = arrywgy;
						var data4 = arrywqt;
						
						if(s2 < s1){
							alert("结束日期不能小于开始日期！")
						}
						
						for (var i = 1; i <= DateDiff(s1,  s2); i++) {
							var now = new Date(datestratvalue);
						    date.push([now.getFullYear(), now.getMonth() + 1, now.getDate()].join('-'));
						    datestratvalue += oneDay;
						}

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
									legend: {
										data: ['商业广告', '互赠广告', '赠播广告', '公益广告', '其他广告']
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
										interval: 'auto',
										boundaryGap: true,
										data: date
									}],
									yAxis: [{
										name: '占屏率',
							            type : 'value',
							            position: 'left',
							            //min: 0,
							            //max: 720,
							            //splitNumber: 5,
							            boundaryGap: [0,0.1],
							            axisLabel : {
							                show:true,
							                interval: 'auto',    // {number}
							                margin: 18,
							                formatter: '{value}%'
							                // Template formatter!
							             }
										}],
									series: [{
										name: '商业广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: data
									}, {
										name: '互赠广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: data1
									}, {
										name: '赠播广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: data2
									}, {
										name: '公益广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: data3
									}, {
										name: '其他广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: data4
									}]
								};
					
								// 为echarts对象加载数据 
								myChart.setOption(option);
							}
						);
					      
					   }  
					
					  function btnzhzpl_Click() {
						  var kebsc = 0;
						  var ledselectvalue = document.getElementById("fenpingyeji_select").value;
						 
					      var s1  =  document.getElementById("nffptime-strat").value;
					      var s2  =  document.getElementById("nffptime-end").value;
						
					      //确定可播时长
					      for(var i = 0;i<arrayledinfo.length;i++){
					    	  if(arrayledinfo[i][0] == ledselectvalue){
					    		  kebsc = arrayledinfo[i][3];
					    	  }
					      }
					     // 路径配置
						require.config({
						paths: {
						echarts: 'js/echarts/build/dist'
					}
						});
						
						var datestrat = document.getElementById("nffptime-strat");
						var dateend = document.getElementById("nffptime-end");
						var dDate  =  datestrat.value.split("-");
						var dDate1  =  new  Date(dDate[1]  +  '-'  +  dDate[2]  +  '-'  +  dDate[0]); 
						var datestratvalue = Math.abs(dDate1);
						var oneDay = 24 * 3600 * 1000;
						
						var ledconfirmedrecordsy = new Array();
						var ledconfirmedrecordhz = new Array();
						var ledconfirmedrecordzb = new Array();
						var ledconfirmedrecordgy = new Array();
						var ledconfirmedrecordqt = new Array();
						
						for(var i =0;i<arrayyewushangye.length;i++){
							if(ledselectvalue == arrayyewushangye[i][3]){
								ledconfirmedrecordsy.push(arrayyewushangye[i]);
								
							}
						}
						for(var i =0;i<arrayyewuhuzeng.length;i++){
							if(arrayyewuhuzeng[i][3] == ledselectvalue){
								ledconfirmedrecordhz.push(arrayyewuhuzeng[i]);
							}
						}
						for(var i =0;i<arrayyewuzengbo.length;i++){
							if(arrayyewuzengbo[i][3] == ledselectvalue){
								ledconfirmedrecordzb.push(arrayyewuzengbo[i]);
							}
						}
						for(var i =0;i<arrayyewugongyi.length;i++){
							if(arrayyewugongyi[i][3] == ledselectvalue){
								ledconfirmedrecordgy.push(arrayyewugongyi[i]);
							}
						}
						for(var i =0;i<arrayyewuqita.length;i++){
							if(arrayyewuqita[i][3] == ledselectvalue){
								ledconfirmedrecordqt.push(arrayyewuqita[i]);
							}
						}
						var arrywsy = [];
						var arrywhz = [];
						var arrywzb = [];
						var arrywgy = [];
						var arrywqt = [];
						
						if(ledconfirmedrecordsy.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								
								for(var i=0;i<ledconfirmedrecordsy.length;i++){
									
									var iDate  =  ledconfirmedrecordsy[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordsy[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										
										stackshichang = stackshichang + parseInt(ledconfirmedrecordsy[i][6]);
									}
								}
								arrywsy.push(stackshichang);
								
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}
			
						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywsy.push(0);
							}
						}
						
						if(ledconfirmedrecordhz.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								
								for(var i=0;i<ledconfirmedrecordhz.length;i++){
									
									var iDate  =  ledconfirmedrecordhz[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordhz[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordhz[i][6]);
									}
								}
								arrywhz.push(stackshichang);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywhz.push(0);
							}
						}
						
						if(ledconfirmedrecordzb.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								
								for(var i=0;i<ledconfirmedrecordzb.length;i++){
									
									var iDate  =  ledconfirmedrecordzb[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordzb[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordzb[i][6]);
									}
								}
								arrywzb.push(stackshichang);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywzb.push(0);
							}
						}
						
						if(ledconfirmedrecordgy.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								
								for(var i=0;i<ledconfirmedrecordgy.length;i++){
									
									var iDate  =  ledconfirmedrecordgy[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordgy[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordgy[i][6]);
									}
								}
								arrywgy.push(stackshichang);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywgy.push(0);
							}
						}
						
						if(ledconfirmedrecordqt.length>0){
							var dateTmp = dDate1;
							for(var j=0; j<DateDiff(s1, s2);j++){
								var stackshichang = 0;
								
								for(var i=0;i<ledconfirmedrecordqt.length;i++){
									
									var iDate  =  ledconfirmedrecordqt[i][7].split("-");
					       			var jDate  =  new  Date(iDate[1]  +  '-'  +  iDate[2]  +  '-'  +  iDate[0]);
									
									var xDate  =  ledconfirmedrecordqt[i][8].split("-");
									var yDate  =  new  Date(xDate[1]  +  '-'  +  xDate[2]  +  '-'  +  xDate[0]);
									if(dateTmp.getTime()>=jDate.getTime() && dateTmp.getTime()<(yDate.getTime()+24*3600*1000)){
										stackshichang = stackshichang + parseInt(ledconfirmedrecordqt[i][6]);
									}
								}
								arrywqt.push(stackshichang);
								dateTmp = new Date(dateTmp.getTime() + oneDay);
							}

						}else{
							for(var i=0;i<DateDiff(s1,  s2);i++){
								arrywqt.push(0);
							}
						}
						
						arrywqt.push(Math.round(stackshichang/kebsc*10000)/100);
						
						//统计数据
						var fptjsy = 0;
						var fptjhz = 0;
						var fptjzb = 0;
						var fptjgy = 0;
						var fptjqt = 0;
						for(var idx=0;idx<arrywsy.length;idx ++){
							fptjsy += arrywsy[idx];
							
							fptjhz += arrywhz[idx];
							
							fptjzb += arrywzb[idx];
							
							fptjgy += arrywgy[idx];
							
							fptjqt += arrywqt[idx];
							
						}
						fptjsy = Math.round(fptjsy/kebsc/arrywsy.length*10000)/100;
						fptjhz = Math.round(fptjhz/kebsc/arrywsy.length*10000)/100;
						fptjzb = Math.round(fptjzb/kebsc/arrywsy.length*10000)/100;
						fptjgy = Math.round(fptjgy/kebsc/arrywsy.length*10000)/100;
						fptjqt = Math.round(fptjqt/kebsc/arrywsy.length*10000)/100;
						
						if(s2 < s1){
							alert("结束日期不能小于开始日期！");
						}
						
						var selectObj = document.getElementById("fenpingyeji_select");
						var selectpmtxt = selectObj.options[selectObj.selectedIndex].text;
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
									legend: {
										data: ['商业广告', '互赠广告', '赠播广告', '公益广告', '其他广告']
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
										interval: 'auto',
										boundaryGap: true,
										data: [selectpmtxt]
									}],
									yAxis: [{
										name: '占屏率',
							            type : 'value',
							            position: 'left',
							            //min: 0,
							            //max: 720,
							            //splitNumber: 5,
							            boundaryGap: [0,0.1],
							            axisLabel : {
							                show:true,
							                interval: 'auto',    // {number}
							                margin: 18,
							                formatter: '{value}%'
							                // Template formatter!
							             }
										}],
									series: [{
										name: '商业广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: [fptjsy]
									}, {
										name: '互赠广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: [fptjhz]
									}, {
										name: '赠播广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: [fptjzb]
									}, {
										name: '公益广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: [fptjgy]
									}, {
										name: '其他广告',
										type: 'bar',
										stack: '总量',
										itemStyle: {
											normal: {
												areaStyle: {
													type: 'default'
												}
											}
										},
										data: [fptjqt]
									}]
								};
					
								// 为echarts对象加载数据 
								myChart.setOption(option);
							}
						);
					}
					  
					   //计算天数差的函数，通用  
					   function  DateDiff(s1,  s2){    //sDate1和sDate2是2016-12-18格式  
					       var  aDate,  oDate1,  oDate2,  iDays;
					       aDate  =  s1.split("-");
					       oDate1  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0]);  //转换为12-18-2016格式  
					       aDate  =  s2.split("-");
					       oDate2  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0]);
					       iDays  =  parseInt(Math.abs(oDate2  -  oDate1)  /  1000  /  60  /  60  /24);  //把相差的毫秒数转换为天数  
					      return  iDays+1;
					   }    
					
					</script>

					</div>
					<!-- /.panel-body -->
				</div>
				<!--/.panel-->
				<div class="col-1g-12">
					<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
					<div id="draw-barchart@echart" style="height:400px"></div>

					<!-- ECharts单文件引入 -->
					<script src="js/echarts.js"></script>

					<script type="text/javascript">
				
			</script>
				</div>

			</div>
			<!-- /.col-->
		</div>
		<!-- /.row -->

	</div>
	<!--/.main-->


	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/king-common.js"></script>
	<script src="js/chart.min.js"></script>

	<script>
		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>
</body>

</html>