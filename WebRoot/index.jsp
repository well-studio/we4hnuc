<%@ page language="java" import="java.util.*,edu.hnuc.we.entity.User" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	User user = (User)session.getAttribute("admin");
	if(user == null) {
		user = (User)session.getAttribute("user");
	}
%>
<!DOCTYPE html>
<html>

<%@include file="./WEB-INF/common/LostAndFoundPlatform/head.jsp"%>
<link rel='stylesheet prefetch' href='<%=path %>/plugins/AmazeUI-2.7.1/assets/css/amazeui.min.css'>
<style type="text/css">
.fa{
	font-size: 1.7em;
}
</style>
<title><s:property value="#session.indexIteminfo[0][0]"/></title>
<st

</head>

<body>
	<div data-am-widget="slider" class="am-slider am-slider-a3"
		data-am-slider='{&quot;directionNav&quot;:false}'>
		<ul class="am-slides">
			<s:iterator var="info" value="#session.indexPicinfo" status="st">
				<li>
					<a href="<s:property value="#info[0]"/>">
						<img src="<s:property value="#info[0]"/>">
					</a>
				</li>
			</s:iterator>
			<!-- 静态数据
			<li><img src="http://s.amazeui.org/media/i/demos/bing-1.jpg">

			</li>
			<li><img src="http://s.amazeui.org/media/i/demos/bing-2.jpg">

			</li>
			<li><img src="http://s.amazeui.org/media/i/demos/bing-3.jpg">

			</li>
			<li><img src="http://s.amazeui.org/media/i/demos/bing-4.jpg">

			</li>
			 -->
		</ul>
	</div>
	<div class="weui_grids" id="cont">
		<s:iterator var="info" value="#session.indexBtninfo" status="st">
			<a class="weui_grid" href="<s:property value="#info[2]"/>">
			<div class="weui_grid_icon">
				<i class="fa <s:property value="#info[1]"/>" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label"><s:property value="#info[0]"/></p> 
		</a> 
		
		</s:iterator>
		<!-- 静态数据
		<a class="weui_grid" onclick="showGradeTableterm()">
			<div class="weui_grid_icon">
				<i class="fa fa-mortar-board" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">查询成绩</p> 
		</a> 
		<a class="weui_grid" onclick="showTimeTableterm()">
			<div class="weui_grid_icon">
				<i class="fa fa-list-alt" aria-hidden="true"></i>
			</div>
			<p class="weui_grid_label">查询课表</p>
		</a> 
		<a href="laf_getAllValidInfo.hnuc" class="weui_grid">
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
		 -->
	</div>
	<c:if test="${!empty admin }">
	<center>
	<a href="<%=path %>/admin/admin_getIndexInfo.hnuc">
	<button type="button" class="am-btn am-btn-primary am-radius" style="width: 100px;height:44px;margin-top: 10px;">后台管理</button>
	</a>
	<a href="<%=path %>/admin/user_loginOut.hnuc">
	<button type="button" class="am-btn am-btn-default am-radius" style="width: 100px;height:44px;margin-top: 10px;">注销</button>
	</a>
	</center>
	</c:if>
	<%@ include file="./WEB-INF/common/LostAndFoundPlatform/footer.jsp"%> 
	<script src='<%=path %>/plugins/AmazeUI-2.7.1/assets/js/amazeui.min.js'></script>
	<script type="text/javascript">
		function showTimeTableterm(){
			layer.open({
  			type: 2,
  			area: ['100%', '100%'],
			fix: false, //不固定
			maxmin: true,
  			content: '<%=path%>/jwgl_timeTableTerm.hnuc'
			});
		}
		
		function showGradeTableterm(){
			layer.open({
  			type: 2,
  			area: ['100%', '100%'],
			fix: false, //不固定
			maxmin: true,
  			content: '<%=path%>/jwgl_gradeTerm.hnuc'
			});
		}
		
		function loadding(){ 
			layer.load(1, {
  				shade: [0.1,'#fff'] //0.1透明度的白色背景
			});
		}
	</script>

</body>
</html>
