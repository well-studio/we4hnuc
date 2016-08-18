<%@page import="com.md.util.ReadConfigPath"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String blogPath = ReadConfigPath.getRootPath();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@include file="/WEB-INF/blog/head.jsp"%>
<title>xxmodd's blog</title>
<link rel="stylesheet" href="<%=blogPath%>/plugins/pure-release/base-min.css">
<link rel="stylesheet" href="<%=blogPath%>/plugins/pure-release/pure-min.css">
<link rel="stylesheet" href="<%=blogPath%>/css/form.css">
<link rel="stylesheet" href="<%=blogPath%>/plugins/Font-Awesome/css/font-awesome.css">

</head>
<body>
	<%@include file="/WEB-INF/blog/nav.jsp"%>

	<!-- 表单 -->

	<div class="container">
		<div class="container-fluid col-sm-8 col-sm-offset-2 col-lg-6  col-lg-offset-3">
		<div class="panel panel-default">
			<div class="panel-heading logintip">用户登入</div>
			<div class="blog-form pure-form pure-form-stacked panel-body " >
				<div class="blog-form-input user">
					<input id="userLogin" type="text" placeholder="Username">
					<i style="background: url(<%=blogPath%>/images/user.png)no-repeat 0px 0px;"></i>
				</div>
				<div class="blog-form-input pass">
					<input id="userPass" type="password" placeholder="********">
					<i style="background: url(<%=blogPath%>/images/key.png)no-repeat 0px 0px;"></i>
				</div>
				<div class="alert alert-danger loginmsg" role="alert">用户名或密码错误</div>
				<div class="loginbtn">
					<button type="submit" class="subbtn pure-button pure-button-primary " onclick="submit()">登入</button>
				</div>
			</div>
		</div>
		</div>
	</div>
	<footer>
	<hr>
	<div class="container">
		<%@include file="/WEB-INF/blog/footer.jsp"%>
		<% out.println("<script type='text/javascript'>var blogPath='"+blogPath+"'; </script>"); %>
		<script src="<%=blogPath %>/js/login.js"></script>
	</div >
	
		
	
	</footer>
</body>
</html>
