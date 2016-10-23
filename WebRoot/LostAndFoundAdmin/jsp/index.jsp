<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>首页定制 | 后台管理</title>
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
                <a href="javascript:window.location.reload();" class="logo"><span>后台管理中心</span><i class="zmdi zmdi-layers"></i></a>
            </div>

			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">
					<li><h4 class="page-title">首页定制</h4></li>
				</ul>
				<ul style="position: absolute;right: 43px;" class="am-nav am-navbar-nav am-navbar-left">
					<li>
						<a href="javascript:post_priview()" class="am-btn am-btn-link">
							<h4 class="page-title" >预览首页</h4>
						</a>
					</li>
				</ul>
			</div>
		</header>
		<!-- end page -->
		<%@include file="../common/leftBar.jsp" %>
		
		<!-- <div class="am-g"> -->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
					<div data-am-widget="titlebar"
						class="am-titlebar am-titlebar-default">
						<h2 class="am-titlebar-title ">
							<span class="am-icon-home"></span> 首页配置项 
						</h2>
					</div>
					<div class="card-box">
								<!-- col start -->
								<form class="am-form" action="<%=path %>/admin_updateIndexItemInfo.hnuc" method="post">
								<table class="am-table adm-indexItemInfo">
								    <thead>
								        <tr>
								            <th>主页标题</th>
								            <th>版权信息</th>
								            <th>操作</th>
								        </tr>
								    </thead>
								    <tbody>
								    	<!-- 静态数据
								    	<tr>
								            <td>
								            	<input type="text" name="indexItem_title" class="am-form-field am-radius adm-indexItem-0" value="微主页" readonly>
								            </td>
								            <td>
								            	<input type="text" name="indexItem_copyright" class="am-form-field am-radius adm-indexItem-0" value="Copyright © 2016 校宣传部" readonly>
								            </td>
								            <td>
								            	<button type="button" class="am-btn am-btn-secondary am-radius " id="adm-indexItem-0-editbtn" onclick="changeStatus('adm-indexItem-0','editbtn')">编辑</button>
								            </td>
								            
								        </tr>
								         -->
								        
								    	<s:iterator var="info" value="#session.indexIteminfo" status="st">
								    		<tr>
								            <td>
								            	<input type="text" name="indexItem_title" class="am-form-field am-radius adm-indexItem-<s:property value="#st.index"/>" value='<s:property value="#info[0]"/>' readonly>
								            </td>
								            <td>
								            	<input type="text" name="indexItem_copyright" class="am-form-field am-radius adm-indexItem-<s:property value="#st.index"/>" value="<s:property value="#info[1]"/>" readonly>
								            </td>
								            
								            <td><button type="button" class="am-btn am-btn-secondary am-radius" id="adm-indexItem-<s:property value='#st.index'/>-editbtn" onclick="changeStatus('adm-indexItem-<s:property value='#st.index'/>' , 'editbtn')">编辑</button></td>
								        </tr>
								    	</s:iterator>
								    	
								      
								    </tbody>
								</table>
								<button type="submit" class="am-btn am-btn-primary am-radius">提交</button>
								</form>
							</div>
					</div>
				</div>
			
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
					<div data-am-widget="titlebar"
						class="am-titlebar am-titlebar-default">
						<h2 class="am-titlebar-title ">
							<span class="am-icon-file-photo-o"></span> 图片轮播
						</h2>
					</div>
					<div class="card-box">
								<!-- col start -->
								<form class="am-form" action="<%=path %>/admin_updateIndexPicInfo.hnuc" method="post">
								<table class="am-table adm-indexPicInfo">
								    <thead>
								        <tr>
								            <th>图片地址</th>
								            <th>链接地址</th>
								            <th>操作</th>
								        </tr>
								    </thead>
								    <tbody>
								    	<!-- 静态数据 
								    	<tr>
								            <td>
								            	<input type="text" name="indexpic_picaddress" class="am-form-field am-radius adm-indexpic-0" value="http://xxmodd.com" readonly>
								            </td>
								            <td>
								            	<input type="text" name="indexpic_href" class="am-form-field am-radius adm-indexpic-0" value="http://xxmodd.com" readonly>
								            </td>
								            <td>
								            	<button type="button" class="am-btn am-btn-secondary am-radius " id="adm-indexpic-0-editbtn" onclick="changeStatus('adm-indexpic-0','editbtn')">编辑</button>
								            	<button type="button" class="am-btn am-btn-secondary am-radius " id="adm-indexpic-0-deletebtn" >删除</button>
								            </td>
								        </tr>
								        -->
								        
								    	<s:iterator var="info" value="#session.indexPicinfo" status="st">
								    		<tr>
								            <td>
								            	<input type="text" name="indexpic_picaddress" class="am-form-field am-radius adm-indexpic-<s:property value="#st.index"/>" value='<s:property value="#info[0]"/>' readonly>
								            </td>
								            <td>
								            	<input type="text" name="indexpic_href" class="am-form-field am-radius adm-indexpic-<s:property value="#st.index"/>" value="<s:property value="#info[1]"/>" readonly>
								            </td>
								            
								            <td>
								            	<div style="padding:0px" class="am-u-sm-6 am-u-md-6 am-u-lg-6">
								            		<button type="button" style="width:100%" class="am-btn am-btn-secondary am-radius" id="adm-indexpic-<s:property value='#st.index'/>-editbtn" onclick="changeStatus('adm-indexpic-<s:property value='#st.index'/>' , 'editbtn')">编辑</button>
								           		</div>
								           		<div style="padding:0px" class="am-u-sm-6 am-u-md-6 am-u-lg-6">
								           			<button type="button" style="width:100%" class="am-btn am-btn-danger am-radius " id="adm-indexpic-<s:property value='#st.index'/>-deletebtn" onclick="deleteIndexPic('adm-indexpic-<s:property value="#st.index"/>')">删除</button>
								            	</div>
								            </td>
								        </tr>
								    	</s:iterator>
								    </tbody>
								    
								</table>
								<button type="button"  class="am-btn am-btn-secondary am-radius " id="adm-indexpic-0-addbtn" onclick="addIndexPic()">添加</button>
								<button type="submit" class="am-btn am-btn-primary am-radius">提交</button>
								</form>
							</div>
					</div>
				</div>
				
				<div class="am-g">
					<!-- Row start -->
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
					<div data-am-widget="titlebar"
						class="am-titlebar am-titlebar-default">
						<h2 class="am-titlebar-title ">
							<span class="am-icon-navicon"></span> 九宫格配置 
						</h2>
					</div>
							<div class="card-box">
								<!-- col start -->
								<form class="am-form" action="<%=path %>/admin_updateIndexBtnInfo.hnuc" method="post">
								<table class="am-table adm-indexBtnInfo">
								    <thead>
								        <tr>
								            <th>标题</th>
								            <th><a href="http://fontawesome.io/" target="_blank">图标class</a></th>
								            <th>链接地址</th>
								            <th>操作</th>
								        </tr>
								    </thead>
								    <tbody>
								    	<s:iterator var="info" value="#session.indexBtninfo" status="st">
								    		<tr>
								            <td>
								            	<input type="text" name="indexbtn_title" class="am-form-field am-radius adm-indexbtn-<s:property value="#st.index"/>" value='<s:property value="#info[0]"/>' readonly>
								            </td>
								            <td>
								            	<input type="text" name="indexbtn_icon" class="am-form-field am-radius adm-indexbtn-<s:property value="#st.index"/>" value="<s:property value="#info[1]"/>" readonly>
								            </td>
								            <td>
								            	<input type="text" name="indexbtn_href" class="am-form-field am-radius adm-indexbtn-<s:property value="#st.index"/>" value="<s:property value="#info[2]"/>" readonly>
								            </td>
								            
								            <td><button type="button" class="am-btn am-btn-secondary am-radius" id="adm-indexbtn-<s:property value='#st.index'/>-editbtn" onclick="changeStatus('adm-indexbtn-<s:property value='#st.index'/>' , 'editbtn')">编辑</button></td>
								        </tr>
								    	</s:iterator>
								    	<!-- 静态数据
								    	<tr>
								            <td>
								            	<input type="text" name="title" class="am-form-field am-radius" value="表白墙" >
								            </td>
								            <td>
								            	<input type="text" name="icon" class="am-form-field am-radius" value="fa-paper-plane" >
								            </td>
								            <td>
								            	<input type="text" name="href" class="am-form-field am-radius" value="http://xxmodd.com" >
								            </td>
								            
								            <td><button type="button" class="am-btn am-btn-secondary am-radius">编辑</button></td>
								        </tr>
								        <tr>
								            <td>
								            	<input type="text" name="title" class="am-form-field am-radius" value="最近新闻" >
								            </td>
								            <td>
								            	<input type="text" name="icon" class="am-form-field am-radius" value="fa-list-ul" >
								            </td>
								            <td>
								            	<input type="text" name="href" class="am-form-field am-radius" value="http://xxmodd.com" >
								            </td>
								            
								            <td><button type="button" class="am-btn am-btn-secondary am-radius">编辑</button></td>
								        </tr>
								         -->
								    </tbody>
								</table>
								<button type="submit" class="am-btn am-btn-primary am-radius">提交</button>
								</form>
								<!-- col end -->
							</div>
						</div>
				</div>
			</div>
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript">
			function changeStatus(indexname,btnname){
				if($('.'+indexname).attr('readonly')==null){
					$('.'+indexname).attr('readonly',"readonly");
					$('#'+indexname + '-' + btnname).text("编辑");
				}else{
					$('.'+indexname).removeAttr('readonly');
					$('#'+indexname + '-' + btnname).text("锁定");
				}
			}
			
			function addIndexPic(){
				var indexPictable = $('.adm-indexPicInfo');
				var len = $('.adm-indexPicInfo tr').length-1;
				var tr = $('<tr></tr>').html("<td><input type='text' name='indexpic_picaddress' class='am-form-field am-radius adm-indexpic-"+len+"' value='图片地址' ></td><td><input type='text' name='indexpic_href' class='am-form-field am-radius adm-indexpic-"+len+"' value='链接地址' ></td><td><div style='padding:0' class='am-u-sm-6 am-u-md-6 am-u-lg-6'><button type='button' style='width:100%' class='am-btn am-btn-secondary am-radius' id='adm-indexpic-"+len+"-editbtn' onclick='changeStatus(&quot;adm-indexpic-"+len+"&quot;,&quot;editbtn&quot;)'>锁定</button></div><div style='padding:0' class='am-u-sm-6 am-u-md-6 am-u-lg-6'><button type='button' style='width:100%' class='am-btn am-btn-danger am-radius' id='adm-indexpic-"+len+"-deletebtn' onclick='deleteIndexPic(&quot;adm-indexpic-"+len+"&quot;)'>删除</button></div></td>");
				indexPictable.append(tr);
			}
			
			function deleteIndexPic(IndexPicName){
				var flag = confirm("你确定删除吗？");
				if(flag){
					$('.'+IndexPicName).parent().parent().remove();
				}
			}
			//layui-layer-iframe2
			function showPriview(){
				layer.open({
 					type: 2,
  					title: $('[name="indexItem_title"]').val(),
  					shadeClose: true,
 				 	shade: 0.8,
  					area: ['380px', '80%'],
  					content: '<%=path %>/admin_priview.hnuc',
				}); 
			}
			
			function post_priview(){
				$.ajax({
					type: 'POST',
					url : '<%=path %>/admin/admin_getPriviewInfo.hnuc',
					data:{
						//首页配置项
						indexItem_title : $('[name="indexItem_title"]').val(),
						indexItem_copyright : $('[name="indexItem_copyright"]').val(),
						//九宫格
						indexbtn_titleJson :JSON.stringify($('[name="indexbtn_title"]').map(function(){
           					return $(this).val();
       					 }).get()),
						indexbtn_iconJson : JSON.stringify($('[name="indexbtn_icon"]').map(function(){
           					return $(this).val();
       					 }).get()),
						indexbtn_hrefJson :JSON.stringify($('[name="indexbtn_href"]').map(function(){
           					return $(this).val();
       					 }).get()),
						//图片轮播
						indexpic_picaddressJson : JSON.stringify($('[name="indexpic_picaddress"]').map(function(){
           					return $(this).val();
       					 }).get()),
						indexpic_hrefJson : JSON.stringify($('[name="indexpic_href"]').map(function(){
           					return $(this).val();
       					 }).get())
					},
					dataType:"json",
					success: function(json){
						console.log(json.info == 'success');
						if(json.info=='success'){
							showPriview();
						}
					}
				});
			}
		
		</script>
		<script type="text/javascript" src="<%=path %>/LostAndFoundAdmin/assets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="<%=path %>/LostAndFoundAdmin/assets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="<%=path %>/LostAndFoundAdmin/assets/js/blockUI.js" ></script>
		<script src='<%=path %>/plugins/layer-v2.4/layer/layer.js'></script>
	
</body>
	
</html>
