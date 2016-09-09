<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.*"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="images/logo.png" type="image/x-icon" />
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-table.css" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap-theme.css">
<link href="css/styles.css" rel="stylesheet">
<link href="css/laydate.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap-table.js"></script>


</head>
<body style="font-family: '微软雅黑';">
<div class="main">	
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">
					人员修改
					</h1>
			</div>
		</div>
		<!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<div align="center" style="font-size: large;color: red">${session.erromessage }</div>
			</div>
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-lg-12 col-md-6">
						
	<form id="form_save" class="form-horizontal" role="form">
		
		<input type="text" class="hidden" name="yewuyuan.ywyId" id="yewuyuan_id" value='<s:property value="yewuyuan.ywyId"/>'>
		
		<div class="form-group" style="margin-bottom:0;">
			<label for="account" class="col-sm-2 control-label"></label>
			<div class="col-sm-4">
				<ul id="accountCheck" class="text-danger hidden" style="margin-bottom:0;"><li><span></span></li></ul>
			</div>
		</div>
		
		<div class="form-group">
			<label for="account" class="col-sm-2 control-label">账号<span class="text-danger">*</span></label>
			<div class="col-sm-4"><input type="text" class="form-control input-sm" name="yewuyuan.username"  value='<s:property value="yewuyuan.username"/>'maxlength="20" onpropertychange="checkAccount(this.value)" oninput="checkAccount(this.value)"></div>
		</div>
		
		<div class="form-group" style="margin-bottom:0;">
			<label for="name" class="col-sm-2 control-label"></label>
			<div class="col-sm-4">
				<ul id="nameCheck" class="text-danger hidden" style="margin-bottom:0;"><li><span></span></li></ul>
			</div>
		</div>
		
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label">姓名 <span class="text-danger">*</span></label>
			<div class="col-sm-4"><input type="text" placeholder="请输入姓名" class="form-control input-sm" name="yewuyuan.ywyXingming" value='<s:property value="yewuyuan.ywyXingming"/>'maxlength="20" onpropertychange="checkName(this.value)" oninput="checkName(this.value)"></div>
		</div>
		
		<div class="form-group">
			<label for="role" class="col-sm-2 control-label">角色</label>
			<div class="col-sm-4">
				<select class="form-control input-sm" name="yewuyuan.role.id" id="role_id">
					<s:iterator value="#request.roles">
						<option value='<s:property value="[0].top[0]"/>'><s:property value="[0].top[1]"/></option>
					</s:iterator>
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="department" class="col-sm-2 control-label">部门</label>
			<div class="col-sm-4">
				<select class="form-control input-sm" name="yewuyuan.bumen.bmId" id="department_id">
					<s:iterator id="dep" value="#request.departments">
					<option value='<s:property value="[0].top[0]"/>'><s:property value="[0].top[1]"/></option>	
					</s:iterator>
				</select>
			</div>
		</div>	
	</form>
	</div>
	<p class="text-center">
	    
		<button type="button" class="btn btn-custom-primary btn-sm" id="back" onclick="goBack()" style="float:left;background:#AAAAAB;border:2px solid #e5e5e5;margin-left:40%;width:63px"></i>返回</button>
		<button type="button" class="btn btn-custom-primary btn-sm" id="save" style="margin-right:40%"><i class="fa fa-floppy-o"></i> 保存</button>
	</p>
	</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>
<content tag="scripts">
    <script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.ba-bbq.min.js"></script>
	<script src="js/grid.history.js"></script>
	<script src="js/grid.locale-cn.js"></script>
	<script>
		$.jgrid.useJSON = true;
	</script>
	<script src="js/jquery.jqGrid.min.js"></script>
	<script src="js/jquery.jqGrid.fluid.js"></script>
	<script src="js/king-common.js"></script>
	<script>
	
	var accountValid = true;
	var nameValid = true;
	var role = '<s:property value="yewuyuan.role.id"/>';
	var department = '<s:property value="yewuyuan.bumen.bmId"/>';
	//检查账号是否为空以及是否重复
	function checkAccount(value){
		if(value){
			$.ajax({
				url:"checkAccount.action?account="+value,
				type:"get",
				dataType:"json",					
				success:function(data){
					if(!data.info){
						$("#accountCheck span").text("账号已存在");
						$("#accountCheck").removeClass("hidden");
						accountValid = false;
					}else{
						$("#accountCheck").addClass("hidden");
						accountValid = true;
					}
				}
			})
		}else{
			$("#accountCheck").addClass("hidden");
		}
	}
	//检查姓名是否为空,在输入时能够立即判断出来，与下面的判断并不重复
	function checkName(value){
		if(value!=""){
			$("#nameCheck").addClass("hidden");
			nameValid = true;
		}else{
			$("#nameCheck span").text("姓名不能为空");
			$("#nameCheck").removeClass("hidden");
			nameValid = false;
		}
	}
	
	$(document).ready(function(){
	
	    $("#role_id").val(role);
		$("#department_id").val(department);
		
		$("#save").click(function(){
			
//			alert("nameValid:"+nameValid+" accountValid:"+accountValid);
			
			if(!$("input[name='yewuyuan.username']").val()){
				accountValid = false;
				$("#accountCheck span").text("账号不能为空");
				$("#accountCheck").removeClass("hidden");
			}
			if(!$("input[name='yewuyuan.ywyXingming']").val()){
				nameValid = false;
				$("#nameCheck span").text("姓名不能为空");
				$("#nameCheck").removeClass("hidden");
			}
			if(nameValid&&accountValid){				
				$.ajax({
					url:"updateUserInfo.action",
					type:"post",
					data:$("#form_save").serializeArray(),
					dataType:"json",
					success:function(data){						
						if(data.info){
							alert("更改成功");
							location.replace('renyuanguanli');
						}else{
							alert("更改失败");
						}
					},
					error:function(data){
						alert("更改失败");
					}
				})
			}
		})
		


/*		$("input[name='yewuyuan.username']").maxlength({
	    	maxCharacters:20,
	    	status:false,
        	showAlert:true,
        	alertText:"您输入的长度过长！"
	    })
	    $("input[name='yewuyuan.ywyXingming']").maxlength({
	    	maxCharacters:20,
	    	status:false,
        	showAlert:true,
        	alertText:"您输入的长度过长！"
	    })*/
	})
	function goBack(){
		if(confirm("您确定要放弃相关操作，返回到用户列表中吗？")){
			location.replace('renyuanguanli');
		}
	}
</script>
</content>
