<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>湖商失物招领详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel='stylesheet prefetch'
	href='/we4hnuc/plugins/weui/dist/style/weui.css'>
<link rel='stylesheet prefetch' href='/we4hnuc/css/index.css'>


</head>

<body translate="no">
	<div class="container">
		<div class="weui_panel_bd">
			<div class="weui_media_box weui_media_text">
				<h2 style="text-align: center;color: green;">
					<c:if test="${laf.laf_type == 0}">
						招领启示
					</c:if>
					<c:if test="${laf.laf_type == 1}">
						寻物启示
					</c:if>
				</h2>
				<c:if test="${empty laf.laf_name }">
						<center style="font-size:1.5em;">这条失物招领信息尚未诞生ヾ(o◕∀◕)ﾉヾ</center>
				</c:if>
				<c:if test="${!empty laf.laf_name }">
				<center style="color:red;">
				(
					<c:if test="${laf.laf_stat == 1}">
						正在寻找
					</c:if>
					<c:if test="${laf.laf_stat == 6}">
						物归原主
					</c:if>
					<c:if test="${laf.laf_stat == 3}">
						待审核
					</c:if>
					<c:if test="${laf.laf_stat == 2}">
						已过期
					</c:if>
				)
				</center>
				<p class="weui_media_desc" style="text-align: center;">${laf.laf_pubtime}
					by ${laf.laf_name}</p>
				</c:if>
			</div>
		</div>
		<hr />

		<div class="weui_cells">
			<div class="weui_cell">
				<div class="weui_cell_hd">
					<img src="./imgs/tel.png" alt=""
						style="width:20px;margin-right:5px;display:block">
				</div>
				<div class="weui_cell_bd weui_cell_primary">
					<p>发布人电话</p>
				</div>
				<div class="weui_cell_ft">${laf.laf_phone}</div>
			</div>
			<div class="weui_cell">
				<div class="weui_cell_hd">
					<img src="./imgs/qq.png" alt=""
						style="width:20px;margin-right:5px;display:block">
				</div>
				<div class="weui_cell_bd weui_cell_primary">
					<p>发布人QQ</p>
				</div>
				<div class="weui_cell_ft">${laf.laf_qq}</div>
			</div>
			<div class="weui_cell">
				<div class="weui_cell_hd">
					<img src="./imgs/wechat.png" alt=""
						style="width:20px;margin-right:5px;display:block">
				</div>
				<div class="weui_cell_bd weui_cell_primary">
					<p>发布人微信</p>
				</div>
				<div class="weui_cell_ft">${laf.laf_wechat}</div>
			</div>
			<c:if test="${laf.laf_stat == 6}">
			<div class="weui_cell">
				<div class="weui_cell_hd">
					<img src="./imgs/human.png" alt=""
						style="width:20px;margin-right:5px;display:block">
				</div>
				<div class="weui_cell_bd weui_cell_primary">
					<p>领取人姓名</p>
				</div>
				<div class="weui_cell_ft">${laf.laf_sucName}</div>
			</div>
			<div class="weui_cell">
				<div class="weui_cell_hd">
					<img src="./imgs/phone.png" alt=""
						style="width:20px;margin-right:5px;display:block">
				</div>
				<div class="weui_cell_bd weui_cell_primary">
					<p>领取人电话</p>
				</div>
				<div class="weui_cell_ft">${laf.laf_sucPhone}</div>
			</div>
			<div class="weui_cell">
				<div class="weui_cell_hd">
					<img src="./imgs/time.png" alt=""
						style="width:20px;margin-right:5px;display:block">
				</div>
				<div class="weui_cell_bd weui_cell_primary">
					<p>认领时间</p>
				</div>
				<div class="weui_cell_ft">${laf.laf_suctime}</div>
			</div>
			</c:if>

			<div class="weui_media_box weui_media_text">
				<h4 class="weui_media_title"
					style="text-align: center;color:#6699CC;">
					<span>失物详情</span>
				</h4>
				<div class="">
					${laf.laf_detail }
				</div>
			</div>
		</div>

		<div class="button_sp_area" style="margin-bottom: 80px;">
			<br> 
			<a href="javascript:;" class="weui_btn weui_btn_plain_primary"><i class="weui_icon_success"></i> 认领</a>
		</div>


		<%----------------------------------------------------------------------------------------%>
		<div class="weui_tabbar"
			style="position:fixed;bottom:0;margin-top: 100px;">
			<%--
			<a href="laf_getAllValidInfo.hnuc" class="weui_tabbar_item">
			--%>
			<a href="javascript:window.history.go(-1);" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<img src="https://weui.github.io/weui/images/icon_nav_panel.png"
						alt="">
				</div>
				<p class="weui_tabbar_label">返回首页</p>
			</a>
			<a href="javascript:;" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<img src="https://weui.github.io/weui/images/icon_nav_article.png"
						alt="">
				</div>
				<p class="weui_tabbar_label">失物详情</p>
			</a>
		</div>
	</div>
	</div>
</body>
</html>


