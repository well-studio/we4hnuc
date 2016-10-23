<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

<link rel='stylesheet prefetch' href='<%=path %>/plugins/AmazeUI-2.7.1/assets/css/amazeui.min.css'>

<style type="text/css">
	.t-contain{
		height: 100%;
	}
	
	.t-title,.t-centent{
		text-align: center;
		font-size: 30px;
	}
	.t-main{
		width: 100%;
	}
	
</style>
<title>选择学期</title>
</head>
 
 <body>
	<div class="am-vertical-align t-contain">
		<div class="am-vertical-align-middle t-main">
		<section s data-am-widget="accordion" class="am-accordion am-accordion-gapped" data-am-accordion='{  }'>
		<dl class="am-accordion-item am-active ">
			<dt class="am-accordion-title t-title">请选择学期</dt>

			<dd class="am-accordion-bd am-collapse am-in ">
				<!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
				<div class="am-accordion-content t-centent">
					<%-- 
					 <a href="<%=path%>/user_getMyGrade.hnuc?term=2000-2001-1">2000-2001-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2000-2001-2">2000-2001-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2001-2002-1">2001-2002-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2001-2002-2">2001-2002-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2002-2003-1">2002-2003-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2002-2003-2">2002-2003-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2003-2004-1">2003-2004-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2003-2004-2">2003-2004-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2004-2005-1">2004-2005-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2004-2005-2">2004-2005-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2005-2006-1">2005-2006-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2005-2006-2">2005-2006-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2006-2007-1">2006-2007-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2006-2007-2">2006-2007-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2007-2008-1">2007-2008-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2007-2008-2">2007-2008-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2008-2009-1">2008-2009-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2008-2009-2">2008-2009-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2009-2010-1">2009-2010-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2009-2010-2">2009-2010-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2010-2011-1">2010-2011-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2010-2011-2">2010-2011-2</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2011-2012-1">2011-2012-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2011-2012-2">2011-2012-2</a><br>  
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2012-2013-1">2012-2013-1</a><br>  
                          
                        <a href="<%=path%>/user_getMyGrade.hnuc?term=2012-2013-2">2012-2013-2</a><br> 
                        --%>
                    <!-- 这里需要动态获取 -->
                    <%-- 
                    <a href="<%=path%>/stu_getMyGrade.hnuc?term=2013-2014-1" onclick="loadding()">2013-2014-1</a><br>

					<a href="<%=path%>/stu_getMyGrade.hnuc?term=2013-2014-2" onclick="loadding()">2013-2014-2</a><br>

					<a href="<%=path%>/stu_getMyGrade.hnuc?term=2014-2015-1" onclick="loadding()">2014-2015-1</a><br>

					<a href="<%=path%>/stu_getMyGrade.hnuc?term=2014-2015-2" onclick="loadding()">2014-2015-2</a><br>

					<a href="<%=path%>/stu_getMyGrade.hnuc?term=2015-2016-1" onclick="loadding()">2015-2016-1</a><br>

					<a href="<%=path%>/stu_getMyGrade.hnuc?term=2015-2016-2" onclick="loadding()">2015-2016-2</a><br>

					<a href="<%=path%>/stu_getMyGrade.hnuc?term=2016-2017-1" onclick="loadding()">2016-2017-1</a><br>
					--%>
					<%-- 动态获取 --%>
					<s:iterator value="#session.term" var="t">
							<a href="<%=path%>/stu_getMyGrade.hnuc?term=<s:property value="#t" />"
								onclick="loadding()"><s:property value="#t" /> </a>
							<br>
					</s:iterator> 
				
				</div>
			</dd>
		</dl>
		</section>
		</div>
	</div>
		<script src='<%=path %>/plugins/jquery/jquery.min.js'></script>
		<script src='<%=path %>/plugins/layer-v2.4/layer/layer.js'></script>
		
	<script src='<%=path %>/plugins/AmazeUI-2.7.1/assets/js/amazeui.min.js'></script>
 	<script type="text/javascript">
 		function loadding(){ 
			layer.load(1, {
  				shade: [0.1,'#fff'] //0.1透明度的白色背景
			});
		}
 	</script>
 </body>
</html>
