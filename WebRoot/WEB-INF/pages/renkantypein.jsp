<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<%!String url = "jdbc:mysql://localhost:3306/led_statistic?useUnicode=true&characterEncoding=GBK";
	String qstr = "select industryDesc from industry";%>
<html>
<head>
<link rel="icon" href="images/logo.png" type="image/x-icon" />
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="认刊书录入">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
<link href="css/bootstrap-table.css" rel="stylesheet">

<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!-- 本地存储和恢复 -->
<!-- 自己写本地存储和恢复 -->
<!-- <script type="text/javascript" src="js/jsLocalStore/jquery.json.js"></script>
<script type="text/javascript" src="js/jsLocalStore/jstorage.js"></script>
<script type="text/javascript" src="js/jsLocalStore/jquery.formStorage.js"></script> -->

<script type="text/javascript">

	//取出行业数据填充选择行业select
	var arrayhangyefromdb = new Array();
	<%Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection(url, "root",
					"123456789");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt
					.executeQuery("select industryID,  industryDesc, industryclassifyID from industry");
			int count = 0;
			String industryid = "";
			String industryDesc = "";
			String industryclsty = "";
			while (rs.next()) {
				industryid = rs.getString("industryID");
				industryDesc = rs.getString("industryDesc");
				industryclsty = rs.getString("industryclassifyID");%>
				arrayhangyefromdb[<%=count%>] = new Array("<%=industryid%>","<%=industryDesc%>","<%=industryclsty%>");
	<%count++;
			}%>
	
	//取出行业一级分类
	var industryclass = new Array();
	<%String queryindustry = "select id, name from industryclassify";
			rs = stmt.executeQuery(queryindustry);
			count = 0;
			String indc_id = "";
			String indc_name = "";
			while (rs.next()) {
				indc_id = rs.getString("id");
				indc_name = rs.getString("name");%>
					industryclass[<%=count%>] = new Array("<%=indc_id%>","<%=indc_name%>");
			<%count++;
			}%>
	
	
	
	//取出屏幕列表，填充屏幕select
	var arrayledinfo = new Array();
	var arrayledshort = new Array();
	var arrayledidprice = new Array();
	<%String queryled = "select led_id, led_name, led_weizhi, led_bofangshichang, led_bofangkaishishijian, led_bofangjieshushijian, led_changdu, led_kuangdu, led_mianji, led_fenbianlv, led_kanliprice from led";
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

	//取出人员，以供选择使用，领导的部门id为5
	var arrayywyid = new Array();
	var arrayywyxingming = new Array();
	<%String queryywy = "select ywy_id, ywy_xingming, ywy_bumenid from yewuyuan where ywy_bumenid != 5 and state = 'N'";
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
			<%count++;
			}%>



	//取出部门数据填充部门select
	var arraybumenfromdb = new Array();
	var arraybumenfromdbid = new Array();
	<%rs = stmt.executeQuery("select bm_id, bm_mingcheng from bumen where bm_id != 5");
			count = 0;
			String bm_id = "";
			String bm_mingcheng = "";
			while (rs.next()) {
				bm_id = rs.getString("bm_id");
				bm_mingcheng = rs.getString("bm_mingcheng");%>
		arraybumenfromdbid[<%=count%>] = new Array("<%=bm_id%>");
		arraybumenfromdb[<%=count%>] = new Array("<%=bm_mingcheng%>");
	<%count++;
			}%>
	
<%rs.close();
			stmt.close();
			conn.close();%>
	var kanlijiaclassic = arrayledidprice[0][1];
</script>

<script type="text/javascript">
	/**
	 * 进行前端验证
	 */
	function frontdatavalidate() {

		var qiandingriqi = document.getElementById("dtp_input2").value;
		if (qiandingriqi == null || qiandingriqi == '') {
			document.getElementById("dtp_input2").focus();
			alert("请点击日期控件，输入签订日期！");
			return false;
		}

		var renkanbianhao = document.getElementById("renkanshubianhao").value;
		if (renkanbianhao == null || renkanbianhao == '') {
			document.getElementById("renkanshubianhao").focus();
			alert("请输入正确的认刊书编号！");
			return false;
		}

		var guanggaokh = document.getElementById("guangaokanhu").value;
		if (guanggaokh == null || guanggaokh == '') {
			document.getElementById("guangaokanhu").focus();
			alert("请输入广告刊户！");
			return false;
		}

		var ggnr = document.getElementById("guanggaoneirong").value;
		if (ggnr == null || ggnr == '') {
			document.getElementById("guanggaoneirong").focus();
			alert("请输入广告内容！");
			return false;
		}

		var kaishiriqishanghua = $("input[name='starttimeledtable']");
		for (var i = 0; i < kaishiriqishanghua.length; i++) {
			if (kaishiriqishanghua[i].value == null
					|| kaishiriqishanghua[i].value == '') {
				var j = i + 1;
				var strt = "starttime" + j;
				document.getElementById(strt).focus();
				alert("请输入开始上画日期！");
				return false;
			}
		}

		var jieshuriqishanghua = $("input[name='endtimeledtable']");
		for (var i = 0; i < jieshuriqishanghua.length; i++) {
			if (jieshuriqishanghua[i].value == null
					|| jieshuriqishanghua[i].value == '') {
				var j = i + 1;
				var strt = "endtime" + j;
				document.getElementById(strt).focus();
				alert("请输入结束上画日期！");
				return false;
			}
			if (jieshuriqishanghua[i].value < kaishiriqishanghua[i].value) {
				var j = i + 1;
				var strt = "endtime" + j;
				document.getElementById(strt).focus();
				alert("结束日期不能在开始上画日期之前！");
				return false;
			}
		}
		var pincivali = $("input[name='pinciledtable']");
		for (var i = 0; i < pincivali.length; i++) {
			if (pincivali[i].value == null
					|| pincivali[i].value == '') {
				var j = i + 1;
				var strt = "pinci" + j;
				document.getElementById(strt).focus();
				alert("请输入广告频次！");
				return false;
			}
		}
		var shichangvali = $("input[name='shichangledtable']");
		for (var i = 0; i < shichangvali.length; i++) {
			if (shichangvali[i].value == null
					|| shichangvali[i].value == '') {
				var j = i + 1;
				var strt = "shichang" + j;
				document.getElementById(strt).focus();
				alert("请输入广告时长！");
				return false;
			}
		}
		var kljxjshanghua = $("input[name='kanlijiaxiaojiledtable']");
		for (var i = 0; i < kljxjshanghua.length; i++) {
			if (kljxjshanghua[i].value == null || kljxjshanghua[i].value == ''
					|| kljxjshanghua[i].value < 0) {
				var j = i + 1;
				var strt = "kanlijiaxiaoji" + j;
				document.getElementById(strt).focus();
				alert("请输入刊例价小计金额！");
				return false;
			}
		}

		// 验证折扣数值
		var frontzhekou = document.getElementById("cankaozhekou").value;
		if (frontzhekou == null || frontzhekou == '' || frontzhekou < 0
				|| frontzhekou == 'NaN' || frontzhekou == 'Infinity') {
			document.getElementById("cankaozhekou").focus();
			alert("请输入正确的折扣数值！");
			return false;
		}

		// 验证订单金额
		/* var hejisfje = document.getElementById("hejishifujine").value;
		if (hejisfje == null || hejisfje == '' || hejisfje < 0 ) {
			document.getElementById("hejishifujine").focus();
			alert("请输入合计实付金额！");
			return false;
		} */

		// 前端验证分期付款填写
		/* var fqje = $("input[name='fenqijine']");
		var jinezonghe = 0;
		for(var i =0;i<fqje.length;i++){
			if (fqje[i].value == null || fqje[i].value == ''|| fqje[i].value < 0) {
				var j = i+1;
				var strt = "fenqifukuanjine"+j;
				document.getElementById(strt).focus();
				alert("请输入正确的金额数值！");
				return false;
			}
			jinezonghe += parseInt(fqje[i].value, 10);
		} */
		/* if(jinezonghe != document.getElementById("hejishifujine").value){
			alert("请检查各期付款金额是否和合计实付金额相符！");
			return false;
		}
		
		var selectfenqisl = document.getElementById("selectfenqi").value;
		if(selectfenqisl == null || fenqifksj[i].value == ''){
			document.getElementById("selectfenqi").focus();
			alert("必须要选择付款期数！");
			return false;
		}
		
		var fenqifksj = $("input[name='fenqifukuanshijian']");
		for(var i =0;i<fenqifksj.length;i++){
			if (fenqifksj[i].value == null || fenqifksj[i].value == '') {
				var j = i+1;
				var strt = "fenqishijian"+j;
				document.getElementById(strt).focus();
				alert("请输入约定付款日期！");
				return false;
			}
		} */

		return true;
	}

	function doSubmit() {

		if (frontdatavalidate()) {
			$("#renkanshuform").submit();
		}
	}
</script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body style="font-family: '微软雅黑';">

	<div class="main">

		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">
					认刊书录入
					</h1>
			</div>
		</div>
		<!--/.row-->


		<div class="row">
			<div class="col-lg-12">
				<div align="center" style="font-size: large;color: red">${session.erromessage }</div>
			</div>
			<div class="col-lg-12">
				<div class="">
					<div class="">
						<form action="Renkan_saverenkan" role="form" id="renkanshuform"
							enctype="multipart/form-data" class="form-horizontal"
							onkeydown="if(event.keyCode==13)return false;" method="post">

							<script type="text/javascript">
								$(document)
										.ready(
												function() {

													for (var i = 0; i < arraybumenfromdb.length; i++) {
														document
																.getElementById("selectbumen").options
																.add(new Option(
																		arraybumenfromdb[i],
																		arraybumenfromdbid[i]));
													}

													for (var j = 0; j < arrayywyid.length; j++) {
														if (arrayywyxingming[j][1] == arraybumenfromdbid[0]) {
															document
																	.getElementById("selectyewuyuan").options
																	.add(new Option(
																			arrayywyid[j][1],
																			arrayywyid[j][0]));
														}
													}

													$("#dtp_input2").focus();
												});

								function changeselectywy(id) {
									//清空上次的选择
									document.getElementById("selectyewuyuan").innerHTML = "";
									//二级select显示
									for (var jndex = 0; jndex < arrayywyid.length; jndex++) {
										if (arrayywyxingming[jndex][1] == id) {
											document
													.getElementById("selectyewuyuan").options
													.add(new Option(
															arrayywyid[jndex][1],
															arrayywyid[jndex][0]));
										}

									}
								}
							</script>

							<div class="col-lg-12">
								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<label style="width: 24%;" for="dtp_input2"
										class="control-label">签订日期<span class="text-danger">*</span></label>
									<!-- <div class="input-group date form_date " data-date=""
											data-date-format="yyyy-MM-dd" data-link-field="dtp_input2"
											data-link-format="yyyy-mm-dd">
											<input class="form-control" type="text" id="qiandingriqikongjian"
												readonly> <span class="input-group-addon"><span
												class="glyphicon glyphicon-remove"></span></span> <span
												class="input-group-addon"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div> -->
									<input type="date" id="dtp_input2"
										name="renkanshu.qiandingriqi" value="" class="form-control " />
									<!-- <div class="">
										<input type="hidden" id="dtp_input2"
											name="renkanshu.qiandingriqi" value="" />
										</div> -->
								</div>
								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<label style="width: 24%;" class="control-label"
										for="selectyewuyuan">业务员<span class="text-danger">*</span></label>
									<select class="form-control" name="yewuyuan.ywyBumenid"
										id="selectbumen" onchange="changeselectywy(this.value)"></select>
									<select class="form-control" name="renkanshu.ywyId"
										id="selectyewuyuan"></select>
								</div>


								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<label style="width: 24%;" class="control-label"
										for="renkanshubianhao">认刊书编号<span class="text-danger">*</span></label>
									<input id="renkanshubianhao" class="form-control"
										name="renkanshu.renkanbianhao">
								</div>
								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<label style="width: 24%;" class="control-label"
										for="hetongbianhao">合同编号</label> <input id="hetongbianhao"
										name="renkanshu.hetongbianhao" class="form-control ">
								</div>
								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<label style="width: 24%;" class="control-label"
										for="baogaobianhao">报告编号</label> <input id="baogaobianhao"
										name="renkanshu.baogaobianhao" class="form-control">
								</div>
								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<!-- 这里广告刊户拼写有误，如下拼写 -->
									<label style="width: 24%;" class="control-label"
										for="guangaokanhu">广告客户（全称）<span class="text-danger">*</span></label>
									<input class="form-control" id="guangaokanhu"
										name="renkanshu.guangaokanhu">
								</div>
								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<label style="width: 24%;" class="control-label"
										for="guanggaodailigongsi">广告代理公司（全称）</label> <input
										id="guanggaodailigongsi" name="renkanshu.guanggaodailigongsi"
										class="form-control">
								</div>

								<div class="form-group form-inline col-md-12 col-lg-6 has-error">
									<label style="width: 24%;" class="control-label"
										for="guanggaohangye">广告所属行业<span class="text-danger">*</span></label>
									<select name="industrycls" class="form-control"
										id="industryclassify" onclick="changeselectindc(this.value)"></select>
									<select name="industry.industryDesc" class="form-control"
										id="guanggaohangye"></select>
								</div>
								<div class="form-group col-md-6 col-lg-12 has-error">
									<label class="control-label" for="baogaobianhao">广告内容（品牌、产品）<span
										class="text-danger">*</span></label>
									<textarea id="guanggaoneirong" name="renkanshu.guanggaoneirong"
										class="form-control " rows="3""></textarea>
								</div>


								<div class="form-group form-inline col-md-12 col-lg-6">
									<table id="gjlytab" style="display: inline-table;">
										<tr>
											<td><label class="control-label" for="gjlytab">稿件来源</label></td>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><div class="radio">
													<label> <input type="radio"
														name="renkanshu.gaojianlaiyuan" id="optionsRadios1"
														value="刊户设计" checked>刊户设计
													</label>
												</div></td>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td>&nbsp;</td>
											<td><div class="radio">
													<label> <input type="radio"
														name="renkanshu.gaojianlaiyuan" id="optionsRadios2"
														value="广告公司设计">广告公司设计
													</label>
												</div></td>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><div class="radio">
													<label> <input type="radio"
														name="renkanshu.gaojianlaiyuan" id="optionsRadios3"
														value="新视界设计">新视界设计
													</label>
												</div></td>
										</tr>
									</table>
								</div>
								<div class="form-group form-inline col-md-12 col-lg-6">
									<!-- <label style="width: 24%;" class="control-label" for="gjlbtab">稿件类别</label> -->
									<table id="gjlbtab" style="display: inline-table;">
										<tr>
											<td><label class="control-label" for="gjlbtab">稿件类别</label></td>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><div class="radio">
													<label> <input type="radio"
														name="renkanshu.gaojianleibie" id="optionsRadios4"
														value="AVI" checked>AVI
													</label>
												</div></td>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><div class="radio">
													<label> <input type="radio"
														name="renkanshu.gaojianleibie" id="optionsRadios5"
														value="MPG">MPG
													</label>
												</div></td>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><div class="radio">
													<label> <input type="radio"
														name="renkanshu.gaojianleibie" id="optionsRadios6"
														value="DVD">DVD
													</label>
												</div></td>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><div class="radio">
													<label> <input type="radio"
														name="renkanshu.gaojianleibie" id="optionsRadios7"
														value="其他">其他
													</label>
												</div></td>
										</tr>
									</table>

								</div>

								<script type="text/javascript">
									$(document)
											.ready(
													function() {

														for (var j = 0; j < industryclass.length; j++) {
															document
																	.getElementById("industryclassify").options
																	.add(new Option(
																			industryclass[j][1],
																			industryclass[j][0]));
														}

														for (var i = 0; i < arrayhangyefromdb.length; i++) {
															if (arrayhangyefromdb[i][2] == industryclass[0][0]) {
																document
																		.getElementById("guanggaohangye").options
																		.add(new Option(
																				arrayhangyefromdb[i][1],
																				arrayhangyefromdb[i][1]));
															}
														}

													});

									function changeselectindc(id) {
										//清空上次的选择
										document
												.getElementById("guanggaohangye").innerHTML = "";
										//二级select显示
										for (var jndex = 0; jndex < arrayhangyefromdb.length; jndex++) {
											if (arrayhangyefromdb[jndex][2] == id) {
												document
														.getElementById("guanggaohangye").options
														.add(new Option(
																arrayhangyefromdb[jndex][1],
																arrayhangyefromdb[jndex][1]));
											}

										}
									}
								</script>



								<script type="text/javascript">
									var optionselectHtml = new Array();
									/**
									 * 初始化数据
									 *将数据保存到数组中
									 */
									var arrledlistfp = arrayledshort;
									jQuery(function() {
										//设置上画点位
										optionselectHtml.length = 0;
										for (var i = 0; i < arrledlistfp.length; i++) {
											optionselectHtml
													.push("<option value='" + arrayledshort[i][0] + "'>"
															+ arrayledshort[i][1]
															+ "</option>");
										}
									});

									var optionselectpinci = new Array();
									var arrledpinci = new Array("30", "60",
											"90", "120", "180", "240", "360");
									jQuery(function() {
										//设置频次
										optionselectpinci.length = 0;
										for (var i = 0; i < arrledpinci.length; i++) {
											optionselectpinci
													.push("<option value='" + arrledpinci[i] + "'>"
															+ arrledpinci[i]
															+ "</option>");
										}
									});

									var optionselectguanggaoleixing = new Array();
									var arrguanggaoleixing = new Array("商业广告",
											"互赠广告", "赠播广告", "公益广告", "其它广告");
									jQuery(function() {
										//设置频次
										optionselectguanggaoleixing.length = 0;
										for (var i = 0; i < arrguanggaoleixing.length; i++) {
											optionselectguanggaoleixing
													.push("<option value='" + arrguanggaoleixing[i] + "'>"
															+ arrguanggaoleixing[i]
															+ "</option>");
										}
									});

									var optionselectshichang = new Array();
									var arrledshichang = new Array("15", "5",
											"10", "20", "30", "45", "60", "90");
									jQuery(function() {
										//设置时长
										optionselectshichang.length = 0;
										for (var i = 0; i < arrledshichang.length; i++) {
											optionselectshichang
													.push("<option value='" + arrledshichang[i] + "'>"
															+ arrledshichang[i]
															+ "</option>");
										}
									});

									var j = 1;

									jQuery(function($) {
										//添加行
										$("#addled")
												.click(
														function() {
															var testlengtharr = new Array();
															$("select[name='shanghuadianweiledtable']").each(function(){  
																testlengtharr.push($(this).val());
															});
															j=testlengtharr.length+1;
															$("#table>tbody")
															.append(
																	'<tr><td><select name="shanghuadianweiledtable"  class="form-control" id="shanghuadianwei'
																			+ j
																			+ '" onchange="kanliclassiconchange(this)">'
																			+ optionselectHtml
																					.join()
																			+ '</select></td><td><select name="guanggaoleixingledtable"  class="form-control" id="guanggaoleixing'+j+'" >'
																			+ optionselectguanggaoleixing
																					.join()
																			+ '</select></td><td ><div class="has-success"><input name="starttimeledtable" class="form-control" type="date" id="starttime'+j+'" /></div></td><td><div class="has-error"><input name="endtimeledtable"  class="form-control" type="date" id="endtime'+j+'" /></div></td><td><div class="has-error"><input name="guanggaoshuliangledtable"  class="form-control" type="text" id="guanggaoshuliang'+j+'" value="4" /></div></td><td><input name="pinciledtable" style="width:70px;" class="form-control" id="pinci'+j+'" ></input></td><td><input name="shichangledtable" style="width:64px;" class="form-control" id="shichang'+j+'" ></input></td><td style="display:none"><input name="kanlijialedtable" class="form-control hidden" id="kanlijia'
																			+ j
																			+ '" ></input></td><td><div class="has-error"><input name="kanlijiaxiaojiledtable" class="form-control" value="0" id="kanlijiaxiaoji'
																			+ j
																			+ '" onblur="kanlijiaonchange()" ></input></div></td><td><a class="form-control" onclick="deltr(this)"><span class="glyphicon glyphicon-remove"></span></a></td><td><input name="kanlijiaclassicfenpingtable" class="hidden" id="kanlijiaclassicfenping'
																			+ j
																			+ '"></input></td></tr>');
															
															
															/* $("#table>tbody")
																	.append(
																			'<tr><td><select name="shanghuadianweiledtable"  class="form-control" id="shanghuadianwei'
																					+ j
																					+ '" onchange="kanliclassiconchange(this)">'
																					+ optionselectHtml
																							.join()
																					+ '</select></td><td><select name="guanggaoleixingledtable"  class="form-control" id="guanggaoleixing'+j+'" >'
																					+ optionselectguanggaoleixing
																							.join()
																					+ '</select></td><td ><div class="has-success"><input name="starttimeledtable" class="form-control" type="date" id="starttime'+j+'" /></div></td><td><div class="has-error"><input name="endtimeledtable"  class="form-control" type="date" id="endtime'+j+'" /></div></td><td><div class="has-error"><input name="guanggaoshuliangledtable"  class="form-control" type="text" id="guanggaoshuliang'+j+'" value="4" /></div></td><td><select name="pinciledtable" style="width:70px;" class="form-control" id="pinci'+j+'" >'
																					+ optionselectpinci
																							.join()
																					+ '</select></td><td><select name="shichangledtable" style="width:64px;" class="form-control" id="shichang'+j+'" >'
																					+ optionselectshichang
																							.join()
																					+ '</select></td><td style="display:none"><input name="kanlijialedtable" class="form-control hidden" id="kanlijia'
																					+ j
																					+ '" ></input></td><td><div class="has-error"><input name="kanlijiaxiaojiledtable" class="form-control" value="0" id="kanlijiaxiaoji'
																					+ j
																					+ '" onblur="kanlijiaonchange()" ></input></div></td><td><a class="form-control" onclick="deltr(this)"><span class="glyphicon glyphicon-remove"></span></a></td><td><input name="kanlijiaclassicfenpingtable" class="hidden" id="kanlijiaclassicfenping'
																					+ j
																					+ '"></input></td></tr>'); */
															if(j>1){
																var jindex = j-1;
																$("#guanggaoleixing"+j+"").val($("#guanggaoleixing"+jindex+"").val());
																$("#starttime"+j+"").val($("#starttime"+jindex+"").val());
																$("#endtime"+j+"").val($("#endtime"+jindex+"").val());
																$("#guanggaoshuliang"+j+"").val($("#guanggaoshuliang"+jindex+"").val());
																$("#pinci"+j+"").val($("#pinci"+jindex+"").val());
																$("#shichang"+j+"").val($("#shichang"+jindex+"").val());
															}
															j++;
															kanlijiaclassic = arrayledidprice[0][1];
														});

									});
									//删除行的函数，必须要放domready函数外面
									function deltr(delbtn) {
										$(delbtn).parents("tr").remove();
									};
									jQuery(function($) {
										//定义删除按钮事件绑定
										//写里边，防止污染全局命名空间
										function deltr() {
											$(this).parents("tr").remove();
										}
										;
										//已有删除按钮初始化绑定删除事件
										$("#table .del").click(deltr);
										//添加行
									});

									$(".td").click(function() {
										this.width("150px");
									});

									function kanliclassiconchange(o) {
										for (var int = 0; int < arrayledidprice.length; int++) {
											if (arrayledidprice[int][0] == o.value) {
												kanlijiaclassic = arrayledidprice[int][1];
											}
										}

									}

									function kanlionchange(obj) {
										var id = $(obj).attr("id");
										var indexlastele = id.charAt(8);
										var confirmidshichang = "shichang"
												+ indexlastele;
										var confirmidpinci = "pinci"
												+ indexlastele;
										var selectshichang = document
												.getElementById(confirmidshichang).value;
										var selectpinci = document
												.getElementById(confirmidpinci).value;
										var kanlijiacal = Math
												.round(kanlijiaclassic
														* ((selectpinci - 60) / 30 * 0.3 + 1)
														* ((selectshichang - 15) / 15 * 0.35 + 1)
														+ 0.5);
										document.getElementById(id).value = kanlijiacal;
										var kanlijiaxiaoji = document
												.getElementById("guanggaoshuliang"
														+ indexlastele).value
												* kanlijiacal;
										document
												.getElementById("kanlijiaxiaoji"
														+ indexlastele).value = kanlijiaxiaoji;
									}

									function kanlijiaonchange() {
										var kanlijiaxiaojiarr = [];
										var kanlijiazongji = 0;
										$(
												"input[name='kanlijiaxiaojiledtable']")
												.each(
														function(i, o) {
															//  a.push($(o).val()); 将数据存入数组
															kanlijiaxiaojiarr[i] = $(
																	o).val();
															// 刊例价相加
															kanlijiazongji += parseInt(kanlijiaxiaojiarr[i]);
														});
										document.getElementById("kanliheji").value = kanlijiazongji;
									}
								</script>
								<div class="col-lg-12 col-md-12">
									<fieldset>
										<legend style="font-size: 1.4rem;font-weight: bold;">
											上画点位<span class="text-danger">*</span>
										</legend>
										<div class="col-lg-12">
											<!-- <label style="font-size: 115%">上画点位</label> -->
											<div class="form-group">
												<table id="table" class="table-responsive">
													<thead>
														<tr>
															<th data-field="shanghuadianwei" data-sortable="true">上画点位</th>
															<th data-field="guanggaoleixing" data-sortable="true">广告类型</th>
															<th data-field="starttime" data-sortable="true">开始时间</th>
															<th data-field="endtime" data-sortable="true">结束时间</th>
															<th data-field="guanggaoshuliang" data-sortable="true">投放时长(周)</th>
															<th data-field="pinci" data-sortable="true">广告频次</th>
															<th data-field="shichang" data-sortable="true">广告时长(秒)</th>
															<th data-field="kanlijia" data-sortable="true"
																class="hidden">刊例价(元/周)</th>
															<th data-field="kanlijiaxiaoji" data-sortable="true">刊例价小计</th>
															<th data-field="operation" data-sortable="true">操作</th>
														</tr>
													</thead>
													<tbody></tbody>
												</table>
											</div>
										</div>
										<div class="col-lg-12">
											<a class="btn btn-link" id="addled"><span
												class="glyphicon glyphicon-plus"></span> 添加上画点位</a>
										</div>
									</fieldset>
								</div>
								<div class="col-1g-12">
									<div class="col-md-4 form-group form-inline">
										<label style="width: 24%" for="kanliheji">刊例合计(元)</label> <input
											class="form-control" id="kanliheji" readonly="true"
											placeholder="刊例总价" />
									</div>
									<div class="col-md-4 form-group form-inline has-error">
										<label style="width: 24%" for="hejishifujine">实付合计(元)<span
											class="text-danger">*</span></label> <input
											class="form-control text-muted" id="hejishifujine"
											name="kanlizongjia" onchange="changezhekou()" />
									</div>
									<div class="col-md-4 form-group form-inline has-success">
										<label style="width: 24%" for="cankaozhekou">折扣(参考)</label>
										<script type="text/javascript">
											function changezhekou() {
												var hejishifu = document
														.getElementById("hejishifujine").value;
												var kanliheji = document
														.getElementById("kanliheji").value;
												var zhekoulv = document
														.getElementById("cankaozhekou");
												zhekoulv.value = Math
														.round((hejishifu / kanliheji) * 10000) / 100;
											}
											function jisuanzongjia() {
												var zhekou = document
														.getElementById("cankaozhekou").value;
												var shijijine = document
														.getElementById("kanliheji").value
														* zhekou / 100;
												document
														.getElementById("hejishifujine").value = shijijine;
											}
										</script>

										<div class="input-group">
											<input style="text-align: right;" class="form-control"
												id="cankaozhekou" name="zhekou" placeholder="输入折扣可自动计算实付金额"
												max="100" onchange="jisuanzongjia()" /> <span
												class="input-group-addon">%</span>
										</div>
									</div>
								</div>


								<!-- 
								<script type="text/javascript">
									//分期JavaScript 
									function switchFenqiItem(tagobj) {
										$("#fukuantable tbody").html("");
										var fenqiindex = tagobj.value;
										var requirepay = document
												.getElementById("hejishifujine").value;
										var requirefill = requirepay
												/ fenqiindex;
										var arrfukuanfangshi = [ "现金", "支票",
												"汇票", "其他" ];

										for (var i = 1; i <= fenqiindex; i++) {
											$("#fukuantable>tbody")
													.append(
															'<tr><td>第'
																	+ i
																	+ '期<input id="fenqiming" name="fenqimingcheng" class="hidden" value="第'+i+'期"/></td><td><input name="fenqijine" class="form-control" type="number" id="fenqifukuanjine'+i+'" value="'+requirefill+'" /></td><td><input class="form-control" name="fenqifukuanshijian" type="date" id="fenqishijian'+i+'" /><td><select id="selectfukuanfangshi'+i+'" class="form-control" name="fukuanfangshi"></select></td><td><input class="form-control" name="fukuanbeizhu" type="text" id="fukuanbeizhu'+i+'" placeholder="备注" /></td></tr>');

											var fukuanfangshiid = "selectfukuanfangshi"
													+ i;
											for (var j = 0; j < arrfukuanfangshi.length; j++) {
												document
														.getElementById(fukuanfangshiid).options
														.add(new Option(
																arrfukuanfangshi[j],
																arrfukuanfangshi[j]));
											}
										}

									}
								</script> -->
								<div class="col-lg-12 " style="display: none;">
									<label class="" style="font-size: 115%">付款管理</label>
								</div>
								<div class="col-md-3" style="display: none;">
									<label class="form-control">请选择分期付款期数(必须选择)</label>
								</div>
								<div class="col-md-3" style="display: none;">
									<select class="form-control" id="selectfenqi" name="fenqi"
										onclick="switchFenqiItem(this)">
										<option>--请选择付款期数--</option>
										<option value="1">1期</option>
										<option value="2">2期</option>
										<option value="3">3期</option>
										<option value="4">4期</option>
										<option value="5">5期</option>
										<option value="6">6期</option>
										<option value="7">7期</option>
										<option value="8">8期</option>
										<option value="9">9期</option>
										<option value="10">10期</option>
										<option value="11">11期</option>
										<option value="12">12期</option>
									</select>

								</div>
								<div class="col-lg-12 col-md-6">
									<table id="fukuantable" class="table-condensed"
										style="table-layout:fixed;">
										<thead align="justify">
										</thead>
										<tbody></tbody>
									</table>
								</div>
								<div class="form-group col-md-6 col-lg-12 has-error">
									<label class="control-label" for="renkanshubeizhu">备注</label>
									<textarea id="renkanshubeizhu" name="renkanshu.renkanshubeizhu"
										class="form-control" rows="2""></textarea>
								</div>

								<div align="center" class="col-md-12">
									<button type="button" id="store" class="btn">保存</button>
									<button type="button" id="restore" class="btn">恢复</button>
									<button type="button" class="btn btn-primary"
										onclick="doSubmit()">提交</button>
									<button type="reset" class="btn btn-default">清空</button>

									
								</div>
							</div>
						</form>
					</div>
					<!-- /.panelbody-->
				</div>
				<!-- /.panel-->
			</div>
			<!-- /.col-->
		</div>
		<!-- /.row -->


	</div>
	<!--/.main-->

	<script src="js/bootstrap.min.js"></script>
	<script src="js/king-common.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
	<script src="js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

	<script type="text/javascript" src="js/bootstrap-table.js"></script>
	<!--
    	作者：this.van@hotmail.com
    	时间：2016-06-19
    	描述：时间选择
    -->
	<script type="text/javascript">
		$('.form_datetime').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1
		});
		$('.form_date').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0
		});
		$('.form_time').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 1,
			minView : 0,
			maxView : 1,
			forceParse : 0
		});
	</script>

<script type="text/javascript">
	if(window.localStorage){
	 
	}else{
	 alert('您的浏览器不支持表单保存功能');
	}
	
	var localStorageStateTip = "";
	//保存表单到本地
	function localFormStorageSave() {
		if($("#dtp_input2").val() == null || $("#dtp_input2").val() == "" || $("#renkanshubianhao").val() == null || $("#renkanshubianhao").val() == "" || $("#guangaokanhu").val() == null || $("#guangaokanhu").val() == ""){
			localStorageStateTip = "认刊书的必填内容为空，系统将不进行保存！";
		}else {
			localStorage.setItem("renkanshu.qiandingriqi",$("#dtp_input2").val());
			localStorage.setItem("yewuyuan.ywyBumenid",$("#selectbumen").val());
			localStorage.setItem("renkanshu.ywyId",$('#selectyewuyuan').val());
			localStorage.setItem("renkanshu.renkanbianhao",$("#renkanshubianhao").val());
			localStorage.setItem("renkanshu.hetongbianhao",$("#hetongbianhao").val());
			localStorage.setItem("renkanshu.baogaobianhao",$("#baogaobianhao").val());
			localStorage.setItem("renkanshu.guangaokanhu",$("#guangaokanhu").val());
			localStorage.setItem("renkanshu.guanggaodailigongsi",$("#guanggaodailigongsi").val());
			localStorage.setItem("industryclassify",$('#industryclassify').val());
			localStorage.setItem("industry.industryDesc",$('#guanggaohangye').val());
			localStorage.setItem("renkanshu.guanggaoneirong",$("#guanggaoneirong").val());
			
			localStorage.setItem("renkanshu.gaojianlaiyuan",$("input:radio[name='renkanshu.gaojianlaiyuan']:checked").val());
			localStorage.setItem("renkanshu.gaojianleibie",$("input:radio[name='renkanshu.gaojianleibie']:checked").val());
			
			localStorage.setItem("kanliheji",$('#kanliheji').val());
			localStorage.setItem("hejishifujine",$('#hejishifujine').val());
			localStorage.setItem("cankaozhekou",$('#cankaozhekou').val());
			localStorage.setItem("renkanshu.renkanshubeizhu",$('#renkanshubeizhu').val());
			
			var shanghuadianweiledtablelocal = new Array();
			$("select[name='shanghuadianweiledtable']").each(function(){  
				shanghuadianweiledtablelocal.push($(this).val());
			});
			var guanggaoleixingledtablelocal = new Array();
			$("select[name='guanggaoleixingledtable']").each(function(){  
				guanggaoleixingledtablelocal.push($(this).val());
			});
			var starttimeledtablelocal = new Array();
			$("input[name='starttimeledtable']").each(function(){  
				starttimeledtablelocal.push($(this).val());
			});
			var endtimeledtablelocal = new Array();
			$("input[name='endtimeledtable']").each(function(){  
				endtimeledtablelocal.push($(this).val());
			});
			var pinciledtablelocal = new Array();
			$("input[name='pinciledtable']").each(function(){  
				pinciledtablelocal.push($(this).val());
			});
			var shichangledtablelocal = new Array();
			$("input[name='shichangledtable']").each(function(){  
				shichangledtablelocal.push($(this).val());
			});
			var guanggaoshuliangledtablelocal = new Array();
			$("input[name='guanggaoshuliangledtable']").each(function(){  
				guanggaoshuliangledtablelocal.push($(this).val());
			});
			var kanlijiaxiaojiledtablelocal = new Array();
			$("input[name='kanlijiaxiaojiledtable']").each(function(){  
				kanlijiaxiaojiledtablelocal.push($(this).val());
			});
			
			localStorage.setItem("shanghuadianweiledtable",shanghuadianweiledtablelocal);
			localStorage.setItem("guanggaoleixingledtable",guanggaoleixingledtablelocal);
			localStorage.setItem("starttimeledtable",starttimeledtablelocal);
			localStorage.setItem("endtimeledtable",endtimeledtablelocal);
			localStorage.setItem("pinciledtable",pinciledtablelocal);
			localStorage.setItem("shichangledtable",shichangledtablelocal);
			localStorage.setItem("guanggaoshuliangledtable",guanggaoshuliangledtablelocal);
			localStorage.setItem("kanlijiaxiaojiledtable",kanlijiaxiaojiledtablelocal);
			
			
			localStorageStateTip = "认刊书保存成功！";
		}
		
		


		
	}
	function localFormStorageRestore() {
		var shanghuadianweiledtabletojs = localStorage.getItem("shanghuadianweiledtable").split(",");
		var guanggaoleixingledtabletojs = localStorage.getItem("guanggaoleixingledtable").split(",");
		var starttimeledtabletojs = localStorage.getItem("starttimeledtable").split(",");
		var endtimeledtabletojs = localStorage.getItem("endtimeledtable").split(",");
		var pinciledtabletojs = localStorage.getItem("pinciledtable").split(",");
		var shichangledtabletojs = localStorage.getItem("shichangledtable").split(",");
		var guanggaoshuliangledtabletojs = localStorage.getItem("guanggaoshuliangledtable").split(",");
		var kanlijiaxiaojiledtabletojs = localStorage.getItem("kanlijiaxiaojiledtable").split(",");
		if(localStorage.getItem("shanghuadianweiledtable").length > 0){
		for(var j=1;j<=shanghuadianweiledtabletojs.length;j++){
			$("#table>tbody")
			.append(
					'<tr><td><select name="shanghuadianweiledtable"  class="form-control" id="shanghuadianwei'
							+ j
							+ '" onchange="kanliclassiconchange(this)">'
							+ optionselectHtml
									.join()
							+ '</select></td><td><select name="guanggaoleixingledtable"  class="form-control" id="guanggaoleixing'+j+'" >'
							+ optionselectguanggaoleixing
									.join()
							+ '</select></td><td ><div class="has-success"><input name="starttimeledtable" class="form-control" type="date" id="starttime'+j+'" /></div></td><td><div class="has-error"><input name="endtimeledtable"  class="form-control" type="date" id="endtime'+j+'" /></div></td><td><div class="has-error"><input name="guanggaoshuliangledtable"  class="form-control" type="text" id="guanggaoshuliang'+j+'" value="4" /></div></td><td><input name="pinciledtable" style="width:70px;" class="form-control" id="pinci'+j+'" ></input></td><td><input name="shichangledtable" style="width:64px;" class="form-control" id="shichang'+j+'" ></input></td><td style="display:none"><input name="kanlijialedtable" class="form-control hidden" id="kanlijia'
							+ j
							+ '" ></input></td><td><div class="has-error"><input name="kanlijiaxiaojiledtable" class="form-control" value="0" id="kanlijiaxiaoji'
							+ j
							+ '" onblur="kanlijiaonchange()" ></input></div></td><td><a class="form-control" onclick="deltr(this)"><span class="glyphicon glyphicon-remove"></span></a></td><td><input name="kanlijiaclassicfenpingtable" class="hidden" id="kanlijiaclassicfenping'
							+ j
							+ '"></input></td></tr>');
	
		}
		}
		
		$("#dtp_input2").val(localStorage.getItem("renkanshu.qiandingriqi"));
		
		$("#selectbumen").val(localStorage.getItem("yewuyuan.ywyBumenid"));
		changeselectywy(localStorage.getItem("yewuyuan.ywyBumenid"));
		$("#selectyewuyuan").val(localStorage.getItem("renkanshu.ywyId"));
		
		$("#renkanshubianhao").val(localStorage.getItem("renkanshu.renkanbianhao"));
		$("#hetongbianhao").val(localStorage.getItem("renkanshu.hetongbianhao"));
		$("#baogaobianhao").val(localStorage.getItem("renkanshu.baogaobianhao"));
		$("#guangaokanhu").val(localStorage.getItem("renkanshu.guangaokanhu"));
		$("#guanggaodailigongsi").val(localStorage.getItem("renkanshu.guanggaodailigongsi"));
		
		$("#industryclassify").val(localStorage.getItem("industryclassify"));
		changeselectindc(localStorage.getItem("industryclassify"));
		$("#guanggaohangye").val(localStorage.getItem("industry.industryDesc"));
		
		$("#guanggaoneirong").val(localStorage.getItem("renkanshu.guanggaoneirong"));
		
		$("input:radio[name='renkanshu.gaojianlaiyuan'][value='"+localStorage.getItem("renkanshu.gaojianlaiyuan")+"']").attr("checked",true); 
		$("input:radio[name='renkanshu.gaojianleibie'][value='"+localStorage.getItem("renkanshu.gaojianleibie")+"']").attr("checked",true); 
		
		$("#kanliheji").val(localStorage.getItem("kanliheji"));
		$("#hejishifujine").val(localStorage.getItem("hejishifujine"));
		$("#cankaozhekou").val(localStorage.getItem("cankaozhekou"));
		$("#cankaozhekou").val(localStorage.getItem("cankaozhekou"));
		$("#renkanshubeizhu").val(localStorage.getItem("renkanshu.renkanshubeizhu"));
		
		for(var i=1;i<=shanghuadianweiledtabletojs.length;i++){
			$("#shanghuadianwei"+i+"").val(shanghuadianweiledtabletojs[i-1]);
			$("#guanggaoleixing"+i+"").val(guanggaoleixingledtabletojs[i-1]);
			$("#starttime"+i+"").val(starttimeledtabletojs[i-1]);
			$("#endtime"+i+"").val(endtimeledtabletojs[i-1]);
			$("#guanggaoshuliang"+i+"").val(guanggaoshuliangledtabletojs[i-1]);
			$("#pinci"+i+"").val(pinciledtabletojs[i-1]);
			$("#shichang"+i+"").val(shichangledtabletojs[i-1]);
			$("#kanlijiaxiaoji"+i+"").val(kanlijiaxiaojiledtabletojs[i-1]);
	
		}
		
	}
	function localFormStorageClean() {
		localStorage.clear();
	}

 
</script>
	<script type="text/javascript">
		$('#store, #restore').on('click', function() {
			if (this.id == 'store'){
				localFormStorageSave();
				if(localStorageStateTip.length > 0){
					alert(localStorageStateTip);
				}
				localStorageStateTip = "";
			}
			else{
				if(localStorage.length > 0){
				localFormStorageRestore();
				}else {
					alert("对不起，找不到已保存的记录！");
				}
				
			}
			
		});
		
		window.setInterval("localFormStorageSave()",180000); 
	</script>

	<script>
		!function($) {
			$(document)
					.on(
							"click",
							"ul.nav li.parent > a > span.icon",
							function() {
								$(this).find('em:first').toggleClass(
										"glyphicon-minus");
							});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function() {
			if ($(window).width() > 768)
				$('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function() {
			if ($(window).width() <= 767)
				$('#sidebar-collapse').collapse('hide')
		})
	</script>

</body>

</html>