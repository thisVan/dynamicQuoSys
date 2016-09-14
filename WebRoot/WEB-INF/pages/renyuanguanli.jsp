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
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

<link rel="stylesheet" href="css/bootstrap-theme.css">

<link href="css/styles.css" rel="stylesheet">
<link href="css/laydate.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
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
					人员管理
					</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div id="add-renyuan" class="row">
							&nbsp;&nbsp;&nbsp;&nbsp;<a href="addUser.action" class="btn btn-link btn-lg"><span
								class="glyphicon glyphicon-plus"></span> 添加人员
							</a>
						</div>
					</div>
					<div class="col-sm-3 pull-right">
				<div id="fuzzySearchbox" class="input-group input-group-sm searchbox">
					<input type="search" id="searchText" class="form-control" placeholder="请输入关键字...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" id="searchButton">搜索</button>
					</span>
				</div>
			</div>
		<div class="row" >

		</div>
		
		<form class="form-horizontal" role="form" id="exactForm">
			<fieldset>
				<legend>查询条件</legend>
			<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<div class="input-group-addon">部门</div>				
						<select  name="department" id="department" class="form-control">
							<option value="">所有部门</option>			
						</select>
					</div>
			</div>
			<div class="col-sm-3">
					<div class="input-group input-group-sm">
						<div class="input-group-addon">角色</div>				
						<select  name="role" id="role" class="form-control">
							<option value="">所有角色</option>			
						</select>
					</div>
			</div>				
				<div class="col-sm-2">
					<button class="btn btn-primary btn-sm" id="exactQuery">查询</button>
					<button class="btn btn-danger btn-sm" id="clearExactForm">清除</button>
				</div>
				<div class="col-sm-12"><lable>&nbsp;</lable></div>
			</fieldset>
		</form>
		
		<table id="jqgrid" class="table table-striped table-hover" ></table>
		   <div id="jqgrid-pager" ></div>
		
	 </div>
				</div>
			</div>
		</div>

		<!--/.row-->

	</div>
	<!--/.main-->


</body>
</html>
<content tag="scripts">
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/grid.locale-cn.js"></script>
	<script>
		$.jgrid.useJSON = true;
	</script>
	<script src="js/jquery.jqGrid.min.js"></script>
	<script src="js/jquery.jqGrid.fluid.js"></script>
	<script src="js/king-common.js"></script>
	<script src="js/moment.js"></script>
	<script>
		function formatUsername (cellvalue, options, rowObject){
			if(cellvalue.id == null){
				return "";
			}
	//		return "<a  target='_blank' href='userUpdate.action'>"+cellvalue.name+"</a>";
			return "<a  target='_blank' href='userUpdate.action?ywyId="+cellvalue.id+"'>"+cellvalue.name+"</a>";
			
		}
		$(document).ready(function() {
		    function e() {
		        $("#jqgrid").length > 0 && t.fluidGrid({
		            base: "#jqgrid-wrapper",
		            offset: 0
		        })
		    } 

		    var t = $("#jqgrid");
		    $("#jqgrid").length > 0 && (t.jqGrid({
		    	url:"userlist.action",
		    	mtype:"GET",
		    	datatype:"json",
		    	colNames:['用户名','姓名','部门','角色','密码',''],
		 //   	shrinkToFit:false,
		    	height:320,
		    	rowNum:<s:property value="@com.nfledmedia.dynamicQuoSys.cons.CommonConstant@DEFAULT_PAGE_SIZE"/>,
		    	rowList: [10, 20, 30],
        		pager: "jqgrid-pager",
        		multiselect: !0,
 //       		editurl:"deleteMessage.action",
        		sortname:"ywyId",
        		sortorder: "asc",
        		viewrecords: !0,
        		colModel:[{
        			name:"username",
        			index:"username",
        			sortable:!1,
        			search:!1,
        			align:"center",
        	 		width:"15%",
        	 		formatter:formatUsername 
        		},{
        			name:"name",
        			index:"name",
        			align:"center",
        	 		width:"20%"
        		},{
        			name:"department",
        			index:"department",
        			align:"center",
        	 		width:"20%"
        		},{
        			name:"role",
        			index:"role",
        			align:"center",
        			width:"20%" 
        		},{
        			name:"password",
        			index:"password",
        			align:"center",
        			width:"15%"
        		},{
        			name:"actions",
        			sortable: !1,
        			search: !1,
        			align:"center",
        			width:"10%"
        		}],
        		gridComplete: function(data){
        			var ids = t.jqGrid("getDataIDs");
        			for(var i=0;i < ids.length;i++){
        			    console.log(ids[i]);
        			    de = '<button class="btn btn-danger btn-xs" onclick="$(\'#jqgrid\').delGridRow(\''+ids[i]+'\')">删除</button>';
        				t.jqGrid('setRowData',ids[i],{actions:de});
        				var hasRead = t.jqGrid("getCell",ids[i],'hasRead');
        				if(hasRead === "false"){
        					$("#"+ids[i]).css("background","#fcfcfc").find("td").css("font-weight",700);
        				}
        			}
        		}
		    }), e(), $("#jqgrid").length > 0 && t.jqGrid("navGrid","#jqgrid-pager",{
		    	add:!1,
		    	edit:!1,
		    	del:!1,
		    	view:!1,
		    	search: !1,
        		refresh:!1
		    },{},{},{},{
		    	multipleSearch: true,
		    	multipleGroup:true
		    })),
		    $(window).resize(e);
	
		

		    //模糊搜索
		    $("#searchText").keypress(function(event){
		    	if(event.keyCode == "13"){
		    		$("#searchButton").click();
		    	}
		    });
		    $("#searchButton").click(function(){
				var searchFilter = $("#searchText").val();
			    	if(searchFilter.length === 0){
			    		t[0].p.search = false; 
			    		$.extend(t[0].p.postData,{searchString:"",searchField:"",searchOper:""});
			    	}else{
				    	searchFilter = " where "+" (y.username like '%"+searchFilter+"%' or y.ywyXingming like '%"+searchFilter+
				    	"%' or y.bumen.bmMingcheng like '%"+searchFilter+"%' or y.role.name like '%"+searchFilter+"%')";
			    		console.log(searchFilter);
			    		t[0].p.search = true;
			    		$.extend(t[0].p.postData,{searchString:searchFilter,searchField:"allfieldsearch",searchOper:"cn"});
			    	}
			    	t.trigger("reloadGrid",[{page:1,current:true}]);
		    });
		    
		    //精确查询
		    $("#exactQuery").click(function(){
		    	var role = $.trim($("#role").val());
		    	var department = $.trim($("#department").val());  	
		    	if(department === ""&& role === ""){
		    		t[0].p.search = false;
		    		$.extend(t[0].p.postData,{searchString:"",searchField:"",searchOper:""});
		    	}else{
		    		var searchFilter=" where(";
		    		if(department !== "" ){
		    			searchFilter += "  y.bumen.bmMingcheng like '%"+department+"%' and ";
		    		}
		    		if(role !== ""){
		    			searchFilter += "  y.role.name like '%"+role+"%' and ";
		    		}
		    		searchFilter = searchFilter.substring(0,searchFilter.lastIndexOf('and '));
		    		searchFilter += ")";;
		    		console.log(searchFilter);
		    		t[0].p.search = true;
		    		$.extend(t[0].p.postData,{searchString:searchFilter,searchField:"allfieldsearch",searchOper:"cn"});
		    	}
		    	t.trigger("reloadGrid",[{page:1,current:true}]);
		    	return false;
		    });
		    $("#clearExactForm").click(function(){
				$("#searchButton").click();
				return false;
			});
		});

		function loadingDepartment(){		 
			 $.ajax({
			  		type:"post",
			  		dataType:"json",
			  		url:"getAllDepartment.action",
			  		success:function(data){ 	
			  			var jsonData = data.info;
			  			for(var i=0, n = jsonData.length;i<n;i++){
			  				$("#department").append("<option  value='"+jsonData[i][1]+"'>"+jsonData[i][1]+"</option>");		
			  			}
			  		}
			  });	
		}
		function loadingRole(){		 
			 $.ajax({
			  		type:"post",
			  		dataType:"json",
			  		url:"getAllRole.action",
			  		success:function(data){ 	
			  			var jsonData = data.info;
			  			for(var i=0, n = jsonData.length;i<n;i++){
			  				$("#role").append("<option  value='"+jsonData[i][1]+"'>"+jsonData[i][1]+"</option>");		
			  			}
			  		}
			  });	
		}
		$(function(){
			loadingDepartment();
			loadingRole();
		})		
	</script>
</content>