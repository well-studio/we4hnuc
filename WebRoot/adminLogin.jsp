<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>管理员登录页面</title>
<%@include file="../WEB-INF/common/LostAndFoundPlatform/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/core.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/menu.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/amazeui.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/component.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/page/form.css" />
</head>

<script src='<%=path %>/plugins/jquery/jquery.min.js'></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#adminLogin").click(function() {
			var btn = $('#formSubmitBtn');
			var url = "${pageContext.request.contextPath}/user_adminLogin.hnuc?time="+new Date().getTime();
			var stuId = $("#stuId").val();
			if(stuId == "") {
				layer.msg("帐号不能为空");
				return ;
			}
			if(!stuId.match("^\\d{9}$")) {
				layer.msg("请输入正确的帐号");
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
				if(data.info == "欢迎您管理员!") {
					window.location.href = "${pageContext.request.contextPath}/admin/admin_getIndexInfo.hnuc";
				}
			});
		});
	});
</script>
<body>
	<div class="account-pages">
		<div class="wrapper-page">
			<div class="text-center">
				<a href="index.html" class="logo"><span>Admin<span>to</span></span></a>
			</div>

			<div class="m-t-40 card-box">
				<div class="text-center">
					<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>
				</div>
				<div class="panel-body">
					<form class="am-form">
						<div class="am-g">
							<div class="am-form-group">
								<input type="text" name="usr_stuId" id="stuId" class="am-radius"
									placeholder="帐号">
							</div>

							<div class="am-form-group form-horizontal m-t-20">
								<input type="password" name="user_pwd" id="psw" class="am-radius"
									placeholder="密码">
							</div>
							<%--  
							    <div class="am-form-group ">
		                           	<label style="font-weight: normal;color: #999;">
								        <input type="checkbox" class="remeber"> Remember me
								    </label>
		                        </div>
		                        --%>
							<div class="am-form-group ">
								<button id="adminLogin" type="button" class="am-btn am-btn-primary am-radius"
									style="width: 100%;height: auto;">管理员登录</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<footer class="am-footer am-footer-default">
		<div class="am-footer-miscs">
			<p>由维尔创业工作室提供技术支持</p>
			<p>Copyright © 2016 校宣传部</p>
		</div>
	</footer>
	<script src='<%=path %>/plugins/jquery/jquery.min.js'></script>
	<script src='<%=path %>/plugins/layer-v2.4/layer/layer.js'></script>
	<script src='<%=path %>/plugins/weui/dist/weui.min.js'></script>
	<script src='<%=path %>/plugins/AmazeUI-2.7.1/assets/js/amazeui.min.js'></script>
</body>
</html>
