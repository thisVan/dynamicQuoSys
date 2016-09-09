<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%!String url = "jdbc:mysql://localhost:3306/led_statistic?useUnicode=true&characterEncoding=GBK";
	String qstr = "select industryDesc from industry";%>
<html>
<head>
<%
	String name = (String) session.getAttribute("username");
	if (name != null) {
	} else {
		response.sendRedirect("login.jsp");
	}
%>
<link rel="icon" href="images/logo.png" type="image/x-icon" />
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="添加屏幕">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
<script type="text/javascript" src="js/jquery.cityselect.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#selqx").citySelect({
			prov: "广东",
			city: "广州",
			dist: "天河区",
			nodata: "none"
		});
	});
</script>
<script type="text/javascript">
	function calscsec() {
		var bfsctmp = $("#pmkbsc").val();
		$("#pmkbscconfirm").val( parseInt(bfsctmp, 10) * 60);
	}
	
	function putfbl() {
		var fblkdtmp = $("#pmkdds").val();
		var fblgdtmp = $("#pmgdds").val();
		$("#pmfbl").val(fblkdtmp + "×" + fblgdtmp);
	}
	
	function validatemanji(obj) {
		var mianji = obj.value;
		var clamianji = parseFloat(document.getElementById("pmcd").value) * parseFloat( document.getElementById("pmkd").value);
		if ((parseFloat(mianji)/clamianji) > 1.1 || (parseFloat(mianji)/clamianji) < 0.9) {
			alert("您输入的屏幕面积似乎有些不对，请检查您输入的面积数值！");
			obj.focus();
		}
	}
	
	function putvaluesc() {
		var jxkssj = document.getElementById("pmjxkssj").value;
		var jxjssj = document.getElementById("pmjxjssj").value;
		var arr1 = jxkssj.split(":");
		var arr2 = jxjssj.split(":");
		var sumshichang = 0;
		if (jxkssj == null || jxjssj == null || jxkssj > jxjssj) {
			alert("时间输入有误，请检查您输入的开始时间和结束时间！")
		} else {
			if (arr2[1] < arr1[1]) {
				sumshichang = (parseInt(arr2[1], 10) + 60
						- parseInt(arr1[1], 10) + (parseInt(arr2[0], 10) - 1 - parseInt(
						arr1[0], 10)) * 60) * 60;
			} else {
				sumshichang = (parseInt(arr2[1], 10) - parseInt(arr1[1], 10) + (parseInt(
						arr2[0], 10) - parseInt(arr1[0], 10)) * 60) * 60;
			}
		}
		document.getElementById("pmjxsc").value = sumshichang;
		
	}
</script>

<script type="text/javascript">
	/**
	 * 进行前端验证
	 */
	function frontdatavalidate() {

		var pmjc = document.getElementById("pmjc").value;
		if (pmjc == null || pmjc == '') {
			document.getElementById("pmjc").focus();
			alert("屏幕简称必须填写，请填写屏幕简称！");
			return false;
		}
		
		var pmazwz = document.getElementById("pmazwz").value;
		if (pmazwz == null || pmazwz == '') {
			document.getElementById("pmazwz").focus();
			alert("安装位置必须填写，请填写屏幕安装位置！");
			return false;
		}
		
		var pmkbsc = document.getElementById("pmkbsc").value;
		if (pmkbsc == null || pmkbsc == ''|| pmkbsc < 300) {
			document.getElementById("pmkbsc").focus();
			alert("屏幕可播时长必须填写，请填写正确的屏幕可播时长！");
			return false;
		}
		
		var pmbfkssj = document.getElementById("pmbfkssj").value;
		if (pmbfkssj == null || pmbfkssj == '') {
			document.getElementById("pmbfkssj").focus();
			alert("屏幕开始播放时间必须填写，请填写！");
			return false;
		}
		
		var pmbfjssj = document.getElementById("pmbfjssj").value;
		if (pmbfjssj == null || pmbfjssj == '') {
			document.getElementById("pmbfjssj").focus();
			alert("屏幕结束播放时间必须填写，请填写！");
			return false;
		}
		
		var pmcd = document.getElementById("pmcd").value;
		if (pmcd == null || pmcd == '') {
			document.getElementById("pmcd").focus();
			alert("屏幕宽度必须填写，请填写！");
			return false;
		}

		var pmkd = document.getElementById("pmkd").value;
		if (pmkd == null || pmkd == '') {
			document.getElementById("pmkd").focus();
			alert("屏幕高度必须填写，请填写！");
			return false;
		}
		
		var pmmj = document.getElementById("pmmj").value;
		if (pmmj == null || pmmj == '') {
			document.getElementById("pmmj").focus();
			alert("屏幕面积必须填写，请填写！");
			return false;
		}
		
		var pmkdds = document.getElementById("pmkdds").value;
		if (pmkdds == null || pmkdds == '') {
			document.getElementById("pmkdds").focus();
			alert("屏幕宽度上led点位数必须填写，请填写！");
			return false;
		}
		
		var pmgdds = document.getElementById("pmgdds").value;
		if (pmgdds == null || pmgdds == '') {
			document.getElementById("pmgdds").focus();
			alert("屏幕高度上led点位数必须填写，请填写！");
			return false;
		}
		
		var pmklp = document.getElementById("pmklp").value;
		if (pmklp == null || pmklp == '') {
			document.getElementById("pmklp").focus();
			alert("屏幕典型刊例价必须填写，请填写！");
			return false;
		}

		return true;
	}

	function doSubmit() {

		if (frontdatavalidate()) {
			$("#submitled").submit();
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
		<div class="row">
			<h7><ol class="breadcrumb">
				<li><a href="index.html"><svg class="glyph stroked home">
						<use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">数据管理</li>
			</ol></h7>
		</div>
		<!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">
					添加屏幕
					</h1>
			</div>
		</div>


     
		<div class="row">
			<div class="col-lg-12">
				<div align="center" style="font-size: large;color: red">${session.erromessage }</div>
			</div>
			
			
				<div class="panel panel-default">
				
					


					<div class="panel-body">

						<div class="col-lg-12 col-md-6">
							<form id="submitled" action="led_saveinfo" role="form"
								enctype="multipart/form-data"
								onkeydown="if(event.keyCode==13)return false;" method="post"
								class="form-horizontal">
								<fieldset>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmdm">屏幕代码</label>
										</div>
										<div class="controls col-md-6">
											<input id="pmdm" name="ledDaima" type="text"
												placeholder="请输入屏幕代码" class="form-control">
										</div>
									</div>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmjc">屏幕简称(*)</label>
										</div>
										<div class="controls col-md-6">
											<input id="pmjc" name="ledName" type="text"
												placeholder="请输入屏幕简称" class="form-control">
										</div>
									</div>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmazwz">安装位置(*)</label>
										</div>
										<div class="controls col-md-6">
											<input id="pmazwz" name="ledWeizhi" type="text"
												placeholder="请输入屏幕安装位置" class="form-control">
										</div>
									</div>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmkbsc">日可播时长(*)</label>
										</div>
										<div class="controls col-md-6">
											<div class="input-append form-inline">
												<input id="pmkbsc" type="number"
													placeholder="请输入可播时长" class="span2 form-control" onblur="calscsec()"> <span
													class="add-on">分钟</span>
											</div>
												<input id="pmkbscconfirm" name="ledBofangshichang" type="number"
												 class="hidden">
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmbfkssj">轮播起讫时间(*)</label>
										</div>
										<div class="controls col-md-3">
											<input id="pmbfkssj" name="ledBofangkaishishijian"
												type="time" value="08:00" class="form-control">
										</div>
										<div class="controls col-md-3">
											<input id="pmbfjssj" name="ledBofangjieshushijian"
												type="time" value="22:00" class="form-control">
										</div>
										<div class="controls col-md-3">
											<span class="text-primary">指轮播当天早上开播至晚上停播的起止时间</span>
										</div>
									</div>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmjxkssj">关屏起讫时间</label>
										</div>
										<div class="controls col-md-3">
											<input id="pmjxkssj" name="ledJianxiestart" type="time"
												class="form-control">
										</div>
										<div class="controls col-md-3">
											<input id="pmjxjssj" name="ledJianxieend" type="time"
												class="form-control" onblur="putvaluesc()">
										</div>
										<div class="controls col-md-3">
											<span class="text-primary">指轮播时间内有计划关/开屏动作的起止时间</span>
										</div>
										<input id="pmjxsc" name="ledJianxieshichang" class="hidden" type="number" value="0" />
									</div>
									
									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmcd">屏幕尺寸（M）(*)</label>
										</div>
										<div class="controls col-md-3">
											<input class="form-control" id="pmcd" name="ledChangdu"
												type="number" placeholder="宽度">
										</div>
										<div class="controls col-md-3 ">
											<input class="form-control" id="pmkd" name="ledKuangdu"
												type="number" placeholder="高度">
										</div>
									</div>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmmj">屏幕面积（M<sup>2</sup>）(*)
											</label>
										</div>
										<div class="controls col-md-6">
											<input id="pmmj" name="ledMianji" type="number"
												placeholder="请输入屏幕面积" class="form-control" onblur="validatemanji(this)">
										</div>
									</div>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmkdds">屏幕分辨率(*)</label>
										</div>
										<div class="controls col-md-3">
											<input class="form-control" id="pmkdds" type="number"
												placeholder="宽度点数">
										</div>
										<div class="controls col-md-3 ">
											<input class="form-control" id="pmgdds" type="number"
												placeholder="高度点数" onblur="putfbl()">
										</div>

										<input id="pmfbl" name="ledFenbianlv" type="text"
											class="hidden">

									</div>
									
									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmklp">典型刊例价（元）(*)</label>
										</div>
										<div class="controls col-md-6">
											<input id="pmklp" name="ledKanliprice" type="number"
												placeholder="请输入刊例价格" class="form-control">
										</div>
										<div class="controls col-md-3">
											<span class="text-primary">60次*15秒每天每周的刊例价格</span>
										</div>
									</div>

									<div class="form-group col-md-6">
										<!-- Text input-->
										<div class="col-md-3">
											<label class="control-label" for="pmlx">屏幕类型</label>
										</div>
										<div class="controls col-md-6">
											<input id="pmlx" name="ledLeixing" type="text" value="LED"
												class="form-control">
										</div>

									</div>


									<div class="form-group col-md-6">

										<!--选择业务员-->
										<div class="col-md-3">
											<label class="control-label">所在区域(*)</label>
										</div>
										<div id="selqx" class="controls col-md-9">
											<div class="col-md-4">
												<select id="pmszqy" name="ledSuozaiquyu"
													class="prov form-control"></select>
											</div>
											<div class="col-md-4">
												<select id="pmcs" name="ledChengshi"
													class="city form-control" disabled="disabled"></select>
											</div>
											<div class="col-md-4">
												<select id="pmqx" name="ledQuxian" class="dist form-control"
													disabled="disabled"></select>
											</div>
										</div>
									</div>

									<div align="center" class="col-md-12">
										<button type="button" class="btn btn-primary"
											onclick="doSubmit()">提交</button>
										<button type="reset" class="btn btn-default">重置</button>
									</div>
								</fieldset>
							</form>

						</div>
					</div>
					<!-- /.panelbody-->
				</div>
				<!-- /.panel-->

		</div>
		<!-- /.row -->
	</div>
	<!--/.main-->

</body>

</html>
