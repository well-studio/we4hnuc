<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@include file="./WEB-INF/common/head.jsp"%>
<title>教务系统登入</title>
<link rel="stylesheet" href="<%=path%>/css/login.css">
</head>

<body>
 
	<img class="top-img" src="/we4hnuc/imgs/jwgl.png" width="100%"/>
	<div class="weui_cells_title">可使用教务系统学号密码登入</div>
	<div class="weui_cells weui_cells_form login-form">
		<div class="weui_cell ">
			<div class="weui_cell_hd">
				<label class="weui_label">学号</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary ">
				<input class="weui_input" type="tel" placeholder="">
			</div>
			
		</div>
		<div class="weui_cell  ">
			<div class="weui_cell_hd">
				<label class="weui_label">密码</label>
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<input class="weui_input" type="tel" placeholder="">
			</div>
			<hr>
		</div>
		
	</div>
	<a href="javascript:;" class="weui_btn weui_btn_primary login-btn">登入</a>
	<%@ include file="./WEB-INF/common/footer.jsp"%> 
</body>
</html>
