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

<%@include file="/WEB-INF/common/LostAndFoundPlatform/head.jsp"%>
<link rel='stylesheet prefetch' href='<%=path %>/plugins/AmazeUI-2.7.1/assets/css/amazeui.min.css'>
<style type="text/css">
.fa{
	font-size: 1.7em;
}
</style>
<title>预览 | <s:property value="#session.indexItemPriviewInfo[0][0]"/></title>
</head>

<body>
	<div data-am-widget="slider" class="am-slider am-slider-a3"
		data-am-slider='{&quot;directionNav&quot;:false}'>
		<ul class="am-slides" id="indexPicul">
			<s:iterator var="info" value="#session.indexPicPriviewInfo" status="st">
				<li>
					<a href="<s:property value="#info[0]"/>">
						<img src="<s:property value="#info[0]"/>">
					</a>
				</li>
			</s:iterator>
		</ul>
	</div>
	<div class="weui_grids" id="cont">
		<s:iterator var="info" value="#session.indexBtnPriviewInfo" status="st">
			<a class="weui_grid" href="<s:property value="#info[2]"/>">
				<div class="weui_grid_icon">
					<i class="fa <s:property value="#info[1]"/>" aria-hidden="true"></i>
				</div>
				<p class="weui_grid_label"><s:property value="#info[0]"/></p> 
			</a> 
		
		</s:iterator>
	</div>
	<footer class="am-footer am-footer-default">
		<div class="am-footer-miscs">
			<p>由维尔创业工作室提供技术支持</p>
			<p>
				<s:property value="#session.indexItemPriviewInfo[0][1]"/>
			</p>
		</div>
	</footer>
	<script src='<%=path%>/plugins/jquery/jquery.min.js'></script>
	<script src='<%=path%>/plugins/layer-v2.4/layer/layer.js'></script>
	<script src='<%=path%>/plugins/weui/dist/weui.min.js'></script>
	<script src='<%=path%>/plugins/AmazeUI-2.7.1/assets/js/amazeui.min.js'></script>

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
