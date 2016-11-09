<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@include file="../../WEB-INF/common/LostAndFoundPlatform/head.jsp"%>
<title>管理员更改密码</title>
<link rel="stylesheet" href="<%=path%>/css/login.css">
<script src='<%=path %>/plugins/jquery/jquery.min.js'></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#formSubmitBtn").click(function() {
			var btn = $('#formSubmitBtn');
			var url = "${pageContext.request.contextPath}/user_changeAdmPsw.hnuc?time="+new Date().getTime();
			var psw = $("#psw").val();
			if(psw == "") {
				layer.msg("密码不能为空");
				return ;
			}
			if(!psw.match("^\\d{6,}$")) {
				layer.msg("密码至少6位~");
				return ;
			}
			var rePsw = $("#rePsw").val();
			if(rePsw == "") {
				layer.msg("重复密码不能为空~");
				return ;
			} else {
				if(rePsw != psw) {
					layer.msg("两次输入密码不一致~");
					return ;
				}
			}
			var load = layer.load(2, {time: 100*1000});
			var sendData = {
				"usr_pwd"	: psw
			}
	
			$.post(url,sendData,function(backData,textStatus,ajax) {
				layer.close(load);
				var data = eval("("+backData+")");
				layer.msg(data.info);
				if(data.info == "恭喜~修改密码成功ヽ(=^･ω･^=)丿") {
					window.location.href = "${pageContext.request.contextPath}/admin_getIndexInfo.hnuc";
				}
			});
		});
	});
</script>

</head>

<body>
 	<div>
	<div class="weui_cells_title">管理员修改密码</div>
	<div class="weui_cells weui_cells_form login-form">
		<div class="weui_cell">
			<div class="weui_cell_hd">
				<label class="weui_label">密码</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<input id="psw" class="weui_input" type="password" placeholder="输入您的密码"
					emptyTips="请输入密码" notMatchTips="请输入正确的密码">
			</div>
			<div class="weui_cell_ft">
				<i class="weui_icon_warn"></i>
			</div>
		</div>
		<div class="weui_cell">
			<div class="weui_cell_hd">
				<label class="weui_label">重复密码</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<input id="rePsw" class="weui_input" type="password" placeholder="重复输入您的密码"
					emptyTips="请重复输入密码" notMatchTips="重复密码不匹配">
			</div>
			<div class="weui_cell_ft">
				<i class="weui_icon_warn"></i>
			</div>
		</div>
	</div>
	
	<button id="formSubmitBtn" class="weui_btn weui_btn_primary login-btn">确认修改</button>
	</div>
	<%@ include file="../../WEB-INF/common/LostAndFoundPlatform/footer.jsp"%> 
</body>
</html>
