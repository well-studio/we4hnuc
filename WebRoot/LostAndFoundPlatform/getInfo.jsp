<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@include file="../WEB-INF/common/LostAndFoundPlatform/head.jsp"%>
<title>教务系统登入</title>
<link rel="stylesheet" href="<%=path%>/css/login.css">
<script src='<%=path %>/plugins/jquery/jquery.min.js'></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#formSubmitBtn").click(function() {
			var btn = $('#formSubmitBtn');
			var url = "${pageContext.request.contextPath}/laf_letInfoBeSuc.hnuc?time="+new Date().getTime();
			var sucName = $("#sucName").val();
			if(sucName == "") {
				layer.msg("姓名不能为空");
				return ;
			}
			if(!sucName.match("^[\u4E00-\u9FA5]{2,4}$")) {
				layer.msg("请输入正确的姓名");
				return ;
			}
			var sucPhone = $("#sucPhone").val();

			if(!sucPhone.match("^1[0-9]{10}$")) {
				layer.msg("请输入正确的手机号");
				return ;
			}
			// var load = layer.msg(2, {time: 10*1000});
			var load = layer.load(2, {time: 100*1000});
			var lafId = $("#lafId").val();
			var sendData = {
				"sucName" : sucName,
				"sucPhone"	: sucPhone,
				"lafId" : lafId
			};
	
			$.post(url,sendData,function(backData,textStatus,ajax) {
				layer.close(load);
				layer.msg("谢谢合作 祝你生活愉快！")
				window.location.href = "${pageContext.request.contextPath}/laf_getAllValidInfo.hnuc";
			});
		});
	});
</script>

</head>

<body>
 
	<h2><p><center>请完善领取人姓名和电话 谢谢合作</center></p></h2>
	<form action="laf_letInfoBeSuc.hnuc" method="get">
	<div class="weui_cells weui_cells_form login-form">
		<input name="lafId" id="lafId" value="${lafId }" type="hidden">
		<div class="weui_cell">
			<div class="weui_cell_hd">
				<label class="weui_label">姓名</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<input id="sucName" class="weui_input" type="text" placeholder="输入领取人姓名">
			</div>
		</div>
		<div class="weui_cell">
			<div class="weui_cell_hd">
				<label class="weui_label">电话号码</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<input id="sucPhone" class="weui_input" type="number" maxlength="11" placeholder="领取人电话号码">
			</div>
		</div>
	</div>
	</form>
	<button id="formSubmitBtn" class="weui_btn weui_btn_primary login-btn">确认无误 认领成功</button>
	<%@ include file="../WEB-INF/common/LostAndFoundPlatform/footer.jsp"%> 
</body>
</html>
