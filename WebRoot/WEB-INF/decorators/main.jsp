<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//   http://localhost:8080/CRMS/brandManage/brandCommonPool.action
//getScheme:协议               getServerName：服务器名称      getServerPort：端口号      path:(getContextPath)项目的名字 
%>
<!DOCTYPE html>
<s:i18n name="decoratorsMessage.main">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <!--使部分国产浏览器默认采用高速模式渲染页面-->
        <meta name="renderer" content="webkit">
        <title><s:text name="南方新视界动态报价系统"/></title>
        <meta name="viewport" content="width=device-width">

        <!-- Place ico and apple-touch-icon.png in the root directory -->
		<link rel="icon" href="images/logo.png" type="image/x-icon" />
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
        
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="css/bootstrap-theme.css">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/laydate.css" rel="stylesheet">

        <!--Icons-->
        
        <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="js/lumino.glyphs.js"></script>
	    <script src="js/chart.min.js"></script>

	    <link rel="stylesheet" href="css/main.css">
		<!-- CSS -->
        <!-- <link rel="stylesheet" href="css/bootstrap.cosmo.css"> -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
          
        <!-- bootstrap select -->
		<link rel="stylesheet" href="css/bootstrap-select.css">
		<script type="text/javascript" src="js/bootstrap-select.js"></script>
	
		<!-- <link rel="stylesheet" href="css/darkblue.css"> -->
        <!-- <link rel="stylesheet" href="css/style.css">   -->
        <%-- <script src="js/modernizr-2.6.2.min.js"></script>  --%>

		<!--[if (lt IE 9) & (!IEMobile)]>
		<script src="js/vendor/html5shiv.min.js"></script>
		<script src="js/vendor/respond.min.js"></script>   
		<![endif] -->
		<decorator:head/>
    </head>
    <body>
        <!--[if lte IE 7]>
            <s:text name="browserOutDate" />
        <![endif]-->

		<decorator:usePage id="thePage"/>
		<s:if test='#attr.thePage.getProperty("meta.module")=="nonTopAndLeft"'>
		<decorator:body/>
		</s:if>
		<s:else>
			<!-- WRAPPER -->
	        <div class="wrapper">
	            <jsp:include page="top.jsp" flush="true"></jsp:include>
	            <!-- BOTTOM: LEFT NAV AND RIGHT MAIN CONTENT -->
	            <div class="bottom">
	               <!-- <div class="container"> --> 
	                    <div class="row">
	                        <!-- left sidebar -->
	                        <div class="col-md-2 left-sidebar">
	                            <jsp:include page="left.jsp" flush="true"></jsp:include>
	                        </div>
	                        <!-- end left sidebar -->

	                        <!-- content-wrapper -->
	                        <div class="col-md-9 content-wrapper">
	                   <!--     <div class="row">
									<jsp:include page="breadCrumb.jsp" flush="true"></jsp:include>
								</div>  -->  
								<!-- main -->
								<div class="content">
									<div class="main-header">
										<h2 style="border:0;"><decorator:title/></h2>
									</div>
									<div class="main-content">
										<decorator:body/>
									</div>
									<!-- /main-content -->
								</div>
								<!-- /main -->
	                        </div><!-- /content-wrapper -->
	                    </div><!-- /row -->
	               <!--  </div>/container -->
	            </div>
	            <!-- END BOTTOM: LEFT NAV AND RIGHT MAIN CONTENT -->
	            <div class="push-sticky-footer"></div>
	        </div><!-- WRAPPER -->
	        </s:else>

        <script src="js/bootstrap.min.js"></script>
        <s:if test="#request.firstLogin">
        <script src="js/my-firstLogin.js"></script>
        </s:if>
        <decorator:getProperty property="page.scripts"/>
    </body>
</html>
</s:i18n>

