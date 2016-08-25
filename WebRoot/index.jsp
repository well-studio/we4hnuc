<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<%@include file="./WEB-INF/common/head.jsp"%>
<link rel='stylesheet prefetch' href='<%=path %>/plugins/AmazeUI-2.7.1/assets/css/amazeui.min.css'>
<style type="text/css">
.fa{
	font-size: 1.7em;
}

</style>
<title>微主页</title>
</head>

<body>
	<div data-am-widget="slider" class="am-slider am-slider-a3"
		data-am-slider='{&quot;directionNav&quot;:false}'>
		<ul class="am-slides">
			<li><img src="http://s.amazeui.org/media/i/demos/bing-1.jpg">

			</li>
			<li><img src="http://s.amazeui.org/media/i/demos/bing-2.jpg">

			</li>
			<li><img src="http://s.amazeui.org/media/i/demos/bing-3.jpg">

			</li>
			<li><img src="http://s.amazeui.org/media/i/demos/bing-4.jpg">

			</li>
		</ul>
	</div>
	<div class="weui_grids">
		<a href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-mortar-board" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">查询成绩</p> 
		</a> 
		<a href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-list-alt" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">查询课表</p>
		</a> 
		<a href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-american-sign-language-interpreting"  aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">失物招领</p>  
		</a> 
		<a
			href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-list-ul"
					aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">最近新闻</p> </a>
		<a href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-paper-plane" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">表白墙</p> 
		</a> 
		<a
			href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-map-signs" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">导航</p> 
		</a> 
		<a
			href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-qq" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">新生QQ交流群</p>
		</a>
		 <a
			href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-link" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">待定</p> 
		</a> 
			
			
		<a href="javascript:layer.msg('亲，还在开发中哦!')" class="weui_grid">
			<div class="weui_grid_icon">
				<i class="fa fa-link" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">待定</p> 
		</a>
		
	</div>
	
	<%@ include file="./WEB-INF/common/footer.jsp"%> 
	<script src='<%=path %>/plugins/AmazeUI-2.7.1/assets/js/amazeui.min.js'></script>


</body>
</html>
