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
			var url = "${pageContext.request.contextPath}/user_login.hnuc?time="+new Date().getTime();
			var stuId = $("#stuId").val();
			if(stuId == "") {
				layer.msg("学号不能为空");
				return ;
			}
			if(!stuId.match("^\\d{9}$")) {
				layer.msg("请输入正确的学号");
				return ;
			}
			var psw = $("#psw").val();
			if(!psw.match("^[^\\s]{1,}$")) {
				layer.msg("密码不能为空");
				return ;
			}
			// var load = layer.msg(2, {time: 10*1000});
			var load = layer.load(2, {time: 100*1000});
			var sendData = {
				"usr_stuId" : stuId,
				"usr_pwd"	: psw
			};
	
			$.post(url,sendData,function(backData,textStatus,ajax) {
				layer.close(load);
				var data = eval("("+backData+")");
				layer.msg(data.info);
				if(data.info == "登入成功!") {
					window.location.href = "${pageContext.request.contextPath}/";
				}
			});
		});
	});
</script>

</head>

<body>
 
	<img class="top-img" src="<%=path %>/imgs/jwgl.png" width="100%"/>
	<div class="weui_cells_title">使用教务系统学号密码登入</div>
	<div class="weui_cells weui_cells_form login-form">
		<div class="weui_cell">
			<div class="weui_cell_hd">
				<label class="weui_label">学号</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<input id="stuId" class="weui_input" type="number" placeholder="输入您的学号"
					emptyTips="请输入学号" notMatchTips="请输入正确的学号">
			</div>
			<div class="weui_cell_ft">
				<i class="weui_icon_warn"></i>
			</div>
		</div>
		<div class="weui_cell">
			<div class="weui_cell_hd">
				<label class="weui_label">密码</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<input id="psw" class="weui_input" type="password" placeholder="输入您的密码"
					emptyTips="请输入学号" notMatchTips="请输入正确的密码">
			</div>
			<div class="weui_cell_ft">
				<i class="weui_icon_warn"></i>
			</div>
		</div>
	</div>
	<button id="formSubmitBtn" class="weui_btn weui_btn_primary login-btn">登入</button>
	<%@ include file="../WEB-INF/common/LostAndFoundPlatform/footer.jsp"%> 
</body>
</html>
