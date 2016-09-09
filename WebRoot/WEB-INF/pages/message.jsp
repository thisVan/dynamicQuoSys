<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="utf-8">
	<title>消息管理</title>
<link href="css/jqgridCSS/ui.jqgrid-bootstrap-ui.css" rel="stylesheet">
<link href="css/jqgridCSS/ui.jqgrid-bootstrap.css" rel="stylesheet">
<link href="css/jqgridCSS/ui.jqgrid.css" rel="stylesheet">
<link href="css/jqgridCSS/ui.multiselect.css" rel="stylesheet">
</head>
<body style="font-family: '微软雅黑';">
	<div class="main">
	<div id="jqgrid-wrapper">
		<div class="row" style="margin-bottom:10px;">
			<div class="col-sm-3">
 <!--   		<button class="btn btn-primary btn-xs" id="hasRead"><a href="deleteMessage.action?ids=">标为已读</button> 
			<button class="btn btn-primary btn-xs" id="hasRead" data-target="" onclick="setHasRead()">标为已读</button>   -->
			</div>
		</div>
		<!-- jqgrid begin-->
		<table id="jqgrid" class="table"></table>
		<div id="jqgrid-pager"></div>
		<!-- jqgrid end-->
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

		function setHasRead(){
			var ids = $("#jqgrid").jqGrid('getGridParam','selarrrow');
			var target = "";
			if(ids.length==0){
				alert("请至少选择一条消息");
				return;
			}
			for(var i=0;i<ids.length;i++){
				target += ids[i]+',';
			}
			target = target.substring(0,target.length-1);

			$.ajax({
				url:"setMessageRead.action?ids="+target,
	        	type:"get",
	        	dataType:"text",
	        	success:function(data){
	        		 $("#jqgrid").trigger("reloadGrid",[{page:1,current:true}]);
	        	},
	        	error:function(XMLHttpRequest, textStatus, errorThrown){
						alert('操作失败\nXMLHttpRequest.readyState['+XMLHttpRequest.readyState+']\nXMLHttpRequest.status['+XMLHttpRequest.status+']\ntextStatus['+textStatus+']');
				}
			})
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
		    	url:"listMessage.action",
		    	mtype:"GET",
		    	datatype:"json",
		    	colNames:['','时间','内容',''],
		    	height:300,
		    	rowNum:<s:property value="@com.nfledmedia.dynamicQuoSys.cons.CommonConstant@DEFAULT_PAGE_SIZE"/>,
		    	rowList: [10, 20, 30],
        		pager: "jqgrid-pager",
        		multiselect: !0,
        		editurl:"deleteMessage.action",
        		sortname:"time",
        		sortorder: "desc",
        		viewrecords: !0,
        		colModel:[{
        			name:"hasRead",
        			index:"hasRead",
        			hidden:!0
        		},{
        			name:"time",
        			index:"time",
        			align:"center",
        			width:80
        		},{
        			name:"content",
        			index:"content",
        			align:"center",
        			width:440
        		},{
        			name:"actions",
        			sortable: !1,
        			search: !1,
        			align:"center",
        			width:50
        		}],
        		gridComplete:function(){
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
		    	del:!0,
		    	view:!1,
		    	search: !1,
        		refresh: !0
		    },{},{},{},{
		    	multipleSearch: true,
		    	multipleGroup:true
		    })),
		    $(window).resize(e);
		});
	</script>
</content>