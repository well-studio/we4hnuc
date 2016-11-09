<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
//System.out.println("jsp：" + ((List<String>)request.getSession().getAttribute("imgNames")).toString());
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="SHORTCUT ICON" href="<%=path %>/imgs/hnuc.png"/>
		<title>图片管理 | 后台管理</title>
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/amazeui.css" />
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/core.css" />
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/menu.css" />
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/index.css" />
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/admin.css" />
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/page/typography.css" />
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/page/form.css" />
		<link rel="stylesheet" href="<%=path %>/LostAndFoundAdmin/assets/css/component.css" />
	</head>
	<body>
		<!-- Begin page -->
		<header class="am-topbar am-topbar-fixed-top">
			<div class="am-topbar-left am-hide-sm-only">
                <a href="<%=path %>/admin/admin_getIndexInfo.hnuc" class="logo"><span>后台管理中心</span><i class="zmdi zmdi-layers"></i></a>
            </div>

			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li><h4 class="page-title">图片管理(① 图片名称中请不要有中文 ② 图片不能超过5M ③ 首页轮播图片需要等比例)</h4></li>
				</ul>

			</div>
		</header>
		<!-- end page -->
		<%@include file="../common/leftBar.jsp" %>

	<!-- Start right Content here -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
			<ul data-am-widget="gallery"
				class="am-gallery am-avg-sm-2
  am-avg-md-3 am-avg-lg-4 am-gallery-bordered"
				data-am-gallery="{  }">
				
				<%-- 获取所有已上传的图片 --%>
				<s:iterator  value="#session.imgNames" var="ent">
					<li>
					<div class="am-gallery-item">
						<a href="<%=path %>/upload/adminImgsZip/<s:property value='#ent'/>" target="_blank">
							<img src="<%=path %>/upload/adminImgs/<s:property value='#ent'/>" />
						</a>
						<div class="am-g">
							<div style="padding:0px" class="am-u-sm-6 am-u-md-6 am-u-lg-6">
								<a href="<%=path %>/upload/adminImgs/<s:property value='#ent'/>" target="_blank">
									<button type="button" style="width:100%"  class="am-btn am-btn-primary am-radius">查看大图</button>
								</a>
							</div>
							<div style="padding:0px" class="am-u-sm-6 am-u-md-6 am-u-lg-6">
								<a href="<%=path %>/admin/admin_deleteImgByName.hnuc?delImgName=<s:property value='#ent'/>">
									<button type="button"   style="width:100%" class="am-btn am-btn-danger am-radius">删除图片</button>
								</a>
							</div>
						</div>
					</div>
					</li>
				</s:iterator>
				
				<li>
					<div class="am-gallery-item">
						<form class="am-form" action="<%=path%>/admin/admin_uploadImage.hnuc"  enctype="multipart/form-data" method="post">
							<%-- 
							<div class="am-form-group">
								<label for="doc-ipt-file-1">文件上传域</label> 
								<input type="file" name="images" accept="image/jpg,image/jpeg,image/png,image/gif">
								<input type="submit" value="提交"/>
								<p class="am-form-help">请选择要上传的图片...</p>
							</div>
							--%>
							<!--  
							<img src="<%=path %>/imgs/addimg.jpg" />
							-->
							<div class="am-form-group am-form-file">
								<button type="button" class="am-btn am-btn-danger am-btn-sm" style="width: 100%;">
									<i class="am-icon-cloud-upload"></i> 选择要上传的文件
								</button>
								<input id="doc-form-file" type="file" name="images" accept="image/jpg,image/jpeg,image/png,image/gif" multiple>
							</div>
							<div id="file-list"></div>
							<input id="img-sub"  class="am-btn am-btn-primary" type="submit" value="提交" style="width: 100%;" disabled/>
						</form>
					</div>
				</li>
				
				<%-- 静态数据
				<li>
					<div class="am-gallery-item">
						<a href="http://s.amazeui.org/media/i/demos/bing-1.jpg" class="">
							<img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="远方 有一个地方 那里种有我们的梦想" />
						</a>
						<div class="am-g">
							<div style="padding:0px" class="am-u-sm-6 am-u-md-6 am-u-lg-6">
								<button type="button" style="width:100%"  class="am-btn am-btn-primary am-radius">查看大图</button>
							</div>
							<div style="padding:0px" class="am-u-sm-6 am-u-md-6 am-u-lg-6">
							<button type="button"   style="width:100%" class="am-btn am-btn-danger am-radius">删除图片</button>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="http://s.amazeui.org/media/i/demos/bing-2.jpg" class="">
							<img src="http://s.amazeui.org/media/i/demos/bing-2.jpg"
							alt="某天 也许会相遇 相遇在这个好地方" />
							<h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
							<div class="am-gallery-desc">2375-09-26</div> </a>
					</div></li>
				<li>
					<div class="am-gallery-item">
						<a href="http://s.amazeui.org/media/i/demos/bing-3.jpg" class="">
							<img src="http://s.amazeui.org/media/i/demos/bing-3.jpg"
							alt="不要太担心 只因为我相信" />
							<h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
							<div class="am-gallery-desc">2375-09-26</div> </a>
					</div></li>
				<li>
					<div class="am-gallery-item">
						<a href="http://s.amazeui.org/media/i/demos/bing-4.jpg" class="">
							<img src="http://s.amazeui.org/media/i/demos/bing-4.jpg"
							alt="终会走过这条遥远的道路" />
							<h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
							<div class="am-gallery-desc">2375-09-26</div> </a>
					</div>
				</li>
				--%>
				
				
				
			</ul>

		</div>
	</div>

	<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		<script type="text/javascript" src="<%=path %>/LostAndFoundAdmin/assets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="<%=path %>/LostAndFoundAdmin/assets/js/amazeui.min.js"></script>
		<script>
		  $(function() {
		    $('#doc-form-file').on('change', function() {
		      var fileNames = '';
		      $.each(this.files, function() {
		        fileNames += '<span class="am-badge">' + this.name + '</span> ';
		      });
		      $('#file-list').html(fileNames);
		      $('#img-sub').removeAttr('disabled');
		    });
		  });
		</script>
	</body>
	
</html>
