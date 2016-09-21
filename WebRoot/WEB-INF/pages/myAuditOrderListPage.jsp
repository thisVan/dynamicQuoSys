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
	    <form class="form-horizontal" role="form" action="myAuditOrderUpdatePage" id="myAuditOrderUpdateForm">
				<div class="input-group input-group-sm" >
					<input type="text" class="hidden" name="myAuditOrder_id" id="myAuditOrder_id">
				</div>			
	    </form>

		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">
					我的待审核订单
					</h1>
			</div>
		</div>
		<!--/.row-->

		<div id="jqgrid-wrapper">
	
		<div class="row" style="margin-bottom:10px;">

			<!-- 条件搜索 begin-->
			<div class="col-sm-3 pull-right">
				<div id="fuzzySearchbox" class="input-group input-group-sm searchbox">
					<input type="search" id="searchText" class="form-control" placeholder="请输入关键字...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" id="searchButton"><i class="fa fa-search"></i></button>
					</span>
				</div>
			</div>
			<!-- 条件搜索 end-->
		</div>
		<!-- jqgrid begin-->
		<table id="jqgrid" class="table table-striped table-hover"></table>
		<div id="jqgrid-pager"></div>
		<!-- jqgrid end-->
	    </div>
	</div>
	<!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
<content tag="scripts">
	<script src="js/jquery.ba-bbq.min.js"></script>
	<script src="js/grid.history.js"></script>
	<script src="js/grid.locale-cn.js"></script>
	<script>
		$.jgrid.useJSON = true;
	</script>
	<script src="js/jquery.jqGrid.min.js"></script>
	<script src="js/jquery.jqGrid.fluid.js"></script>
	<script src="js/king-common.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/daterangepicker.js"></script>
	<script>
	
		$(document).ready(function() {
		    function e() {
		        $("#jqgrid").length > 0 && t.fluidGrid({
		            base: "#jqgrid-wrapper",
		            offset: 0
		        })
		    } 

		    var t = $("#jqgrid");
		    $("#jqgrid").length > 0 && (t.jqGrid({
		    	url:"myOrderAuditList.action",
		    	mtype:"GET",
		    	datatype:"json",
		    	colNames:['认刊编号','广告客户','类型','上画屏幕','广告内容','操作类型','审核结果',''],
	//	    	shrinkToFit:false,
		    	height:400,
		    	rowNum:<s:property value="@com.nfledmedia.dynamicQuoSys.cons.CommonConstant@DEFAULT_PAGE_SIZE"/>,
		    	rowList: [10, 20, 30],
        		pager: "jqgrid-pager",
        		multiselect:!1,
        		sortname:"id",
        		sortorder: "asc",
        		viewrecords: !0,
        		colModel:[{
        			name:"renkanshu.renkanbianhao",
        			index:"renkanshu.renkanbianhao",
        			align:"center",
        	 		width:"80px"
        		},{
        			name:"kanhu",
        			index:"kanhu",
        			align:"center",
        			width:"100px" ,
      //  			formatter:formatKanhu
        				
        		},{
        			name:"leixing",
        			index:"leixing",
        			align:"center",
        			width:"80px"
        		},{
        			name:"led.ledName",
        			index:"led.ledName",
        			align:"center",
        			width:"80px"
        		},{
        			name:"guanggaoneirong",
        			index: "guanggaoneirong",
        			align:"center",
        			width:"150px"
        		},{
        			name:"operType",
        			index:"operType",
        			align:"center",
        			width:"50px"
        		},{
        			name:"orderState",
        			index:"orderState",
        			align:"center",
        			width:"100px"
        		},{
            		name:"actions",
            		sortable: !1,
        			search: !1,
            		align:"center",
            		width:"50px"
                	}],
                gridComplete: function(data){
            		var ids = $("#jqgrid").jqGrid("getDataIDs");
           			for(var i=0;i < ids.length;i++){
          			    console.log(ids[i]);
           			    update = '<button class="btn btn-primary btn-xs" data-target="'+ids[i]+'" onclick="updateMyAuditOrder(this)">修改</button>';
           			    t.jqGrid('setRowData',ids[i],{actions:update});
           			}
           		}
		    }), e(), $("#jqgrid").length > 0 && t.jqGrid("navGrid","#jqgrid-pager",{
		    	add:!1,
		    	edit:!1,
		    	del:!1,
		    	view:!1,
		    	search: !1,
        		refresh:0
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
		    	console.log("searchbox click");
		    	var searchFilter = $("#searchText").val();
		    	if(searchFilter.length === 0){
		    		t[0].p.search = false;
		    		$.extend(t[0].p.postData,{searchString:"",searchField:"",searchOper:""});
		    	}else{
		    		searchFilter = " where (o.renkanbianhao like '%"+searchFilter+"%' or o.kanhu like '%"+searchFilter+
			    	"%' or o.leixing like '%"+searchFilter+"%' or o.led.ledName like '%"+searchFilter+"%' or o.guanggaoneirong like '%"+searchFilter+"%' )";
		    		console.log(searchFilter);
		    		t[0].p.search = true;
		    		$.extend(t[0].p.postData,{searchString:searchFilter,searchField:"allfieldsearch",searchOper:"cn"});
		    	}
		    	t.trigger("reloadGrid",[{page:1,current:true}]);
		    })

		});		
		
		function updateMyAuditOrder(target){
			var target = $(target).data("target");
			if(target==null || target==""){
				return;
			}
	//		alert(target);
			$("input[name='myAuditOrder_id']").val(target);
			$("#myAuditOrderUpdateForm").submit();
		}
	</script>
</content>