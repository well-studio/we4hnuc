<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="edu.hnuc.we.entity.LostAndFound"%>
<%@page import="edu.hnuc.we.dao.impl.LostAndFoundDaoImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<%
	List<LostAndFound> lists = (List<LostAndFound>)request.getSession().getAttribute("lafSearch");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>湖商失物招领首页</title>
<%@include file="../WEB-INF/common/LostAndFoundPlatform/head.jsp"%>
<link rel='stylesheet prefetch' href='<%=path %>/css/lostandfound.css'>
</head>

<body translate="no">

	<div class="container">
		<div class="weui_tab">
			<div class="weui_tab_bd">
				<div class="weui_tab_bd_item" style="display: none;">
					<div class="padding">
						<div class="weui_search_bar" id="search_bar">
							<form class="weui_search_outer" action="<%=path %>/LostAndFoundPlatform/lafsearch.hnuc">
								<div class="weui_search_inner">
									<i class="weui_icon_search"></i> 
									<input type="search"
										class="weui_search_input" id="search_input" name="keyWord" placeholder="搜索"
										required=""> 
										<a href="javascript:" class="weui_icon_clear" id="search_clear"></a>
								</div>
								<label for="search_input" class="weui_search_text"
									id="search_text"> <i class="weui_icon_search"></i> <span>搜索</span>
								</label>
							</form>
							<a href="javascript:" class="weui_search_cancel"
								id="search_cancel">取消</a>
						</div>
						<div class="weui_panel_hd" style="text-align: center;">寻物
							招领列表</div>
						<hr />
					</div>

					<div class="weui_panel_bd">
					<%
							if (lists.size() == 0) {
						%>
						亲，还没有数据哦！
						<%
							} else {

								for (int i = 0; i < lists.size(); i++) {
						%>
							<a href="<%=path%>/LostAndFoundPlatform/lafdetail.hnuc?lid=<%=lists.get(i).getLaf_id()%>">
								<div class="weui_media_box weui_media_text">
									<h4 class="weui_media_title laf-title"><%=(lists.get(i).getLaf_type() == 0) ? "招领启事": "寻物启事"%></h4>
									<p class="weui_media_desc "><%=lists.get(i).getLaf_detail().substring(0, 80) + "...."%></p>
	
									<p class="weui_media_desc" style="text-align: right;">
										<a href="<%=path%>/LostAndFoundPlatform/lafdetail.hnuc?lid=<%=lists.get(i).getLaf_id()%>">
											<span style="color:#6699CC;">详情</span> 
										</a>
									</p>
									<ul class="weui_media_info">
										<li class="weui_media_info_meta"><%=lists.get(i).getLaf_phone()%></li>
										<li class="weui_media_info_meta weui_media_info_meta_extra"><%=lists.get(i).getLaf_laftime()%></li>
										<li class="weui_media_info_meta weui_media_info_meta_extra">
											<span style="color:#FF6666;"> <%=lists.get(i).getLaf_stat() == 6 ? "已认领" : ((lists.get(i).getLaf_type() == 0) ? "未认领" : "未寻到")%>
										</span>
										</li>
									</ul>
								</div> 
							</a>
						<%
							}
							}
						%>
						
						<%-- 
						<a href="<%=path %>/LostAndFoundPlatform/lostDetail.jsp">
							<div class="weui_media_box weui_media_text">
								<h4 class="weui_media_title laf-title">寻物启示</h4>
								<p class="weui_media_desc ">2016.8.13我一不小心把节操忘在实验室了，麻烦各位好心人帮我找回......</p>

								<p class="weui_media_desc" style="text-align: right;">
									<a href="lostDetail.jsp"> <span style="color:#6699CC;">详情
											></span> </a>
								</p>
								<ul class="weui_media_info">
									<li class="weui_media_info_meta">愤怒的小苹果</li>
									<li class="weui_media_info_meta">2016-8-13</li>
									<li class="weui_media_info_meta weui_media_info_meta_extra"><span
										style="color:#FF6666;">未寻到</span></li>
								</ul>
							</div> </a>

						<div class="weui_media_box weui_media_text">
							<h4 class="weui_media_title"
								style="text-align: center;color: green;">招领启示</h4>
							<p class="weui_media_desc">2016.8.13我在实验室捡到一斤节操，妈黑妈黑的，求主人麻溜点认领走T
								T......</p>
							<a href="#">
								<p class="weui_media_desc" style="text-align: right;">
									<span style="color:#6699CC;">详情 ></span>
								</p> </a>
							<ul class="weui_media_info">
								<li class="weui_media_info_meta">愤怒的小西瓜</li>
								<li class="weui_media_info_meta">2016-8-13</li>
								<li class="weui_media_info_meta weui_media_info_meta_extra"><span
									style="color:#FF6666;">未认领</span></li>
							</ul>
						</div>

						<div class="weui_media_box weui_media_text">
							<h4 class="weui_media_title"
								style="text-align: center;color: green;">寻物启示</h4>
							<p class="weui_media_desc">2016.8.13我一不小心把节操忘在实验室了，麻烦各位好心人帮我找回......</p>
							<a href="#">
								<p class="weui_media_desc" style="text-align: right;">
									<span style="color:#6699CC;">详情 ></span>
								</p> </a>
							<ul class="weui_media_info">
								<li class="weui_media_info_meta">愤怒的小苹果</li>
								<li class="weui_media_info_meta">2016-8-13</li>
								<li class="weui_media_info_meta weui_media_info_meta_extra"><span
									style="color:#FF6666;">未寻到</span></li>
							</ul>
						</div>

						<div class="weui_media_box weui_media_text">
							<h4 class="weui_media_title"
								style="text-align: center;color: green;">招领启示</h4>
							<p class="weui_media_desc">2016.8.13我在实验室捡到一斤节操，妈黑妈黑的，求主人麻溜点认领走T
								T......</p>
							<a href="#">
								<p class="weui_media_desc" style="text-align: right;">
									<span style="color:#6699CC;">详情 ></span>
								</p> </a>
							<ul class="weui_media_info">
								<li class="weui_media_info_meta">愤怒的小西瓜</li>
								<li class="weui_media_info_meta">2016-8-13</li>
								<li class="weui_media_info_meta weui_media_info_meta_extra"><span
									style="color:#FF6666;">未认领</span></li>
							</ul>
						</div>

					</div>
					--%>
					</div>
				</div>
				<%---------------------------------------------------------------------%>
				<div class="weui_tab_bd_item" style="display: none;">
					<div class="weui_cells_title">失物信息填写</div>
					<form id="form" action="#">
						<div class="weui_cells weui_cells_form">
							<%--选择类型  --%>
							<div class="weui_cells_title">您要？</div>
							<div class="weui_cells weui_cells_radio">
								<label class="weui_cell weui_check_label" for="x11">
									<div class="weui_cell_bd weui_cell_primary">
										<p>我要发布招领信息</p>
									</div>
									<div class="weui_cell_ft">
										<input type="radio" class="weui_check" name="radio1" id="x11"
											checked="checked"> <span class="weui_icon_checked"></span>
									</div> </label> <label class="weui_cell weui_check_label" for="x12">
									<div class="weui_cell_bd weui_cell_primary">
										<p>我要发布寻物信息</p>
									</div>
									<div class="weui_cell_ft">
										<input type="radio" name="radio1" class="weui_check" id="x12">
										<span class="weui_icon_checked"></span>
									</div> </label>
							</div>
							<%-- 时间 --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label for="" class="weui_label">时间</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="datetime-local" value=""
										placeholder="">
								</div>
							</div>
							<%--联系人姓名  --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label class="weui_label">联系人</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="text" required
										pattern="^[\u4E00-\u9FA5]{2,5}$" maxlength="10"
										placeholder="输入您的姓名" emptyTips="请输入姓名" notMatchTips="请输入正确的姓名">
								</div>
								<div class="weui_cell_ft">
									<i class="weui_icon_warn"></i>
								</div>
							</div>
							<%-- 手机号 --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label class="weui_label">手机号</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="tel" required
										pattern="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$"
										maxlength="11" placeholder="输入您的手机号" emptyTips="请输入手机号"
										notMatchTips="请输入正确的手机号">
								</div>
								<div class="weui_cell_ft">
									<i class="weui_icon_warn"></i>
								</div>
							</div>
							<%-- QQ号 --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label class="weui_label">QQ号</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="number" required
										pattern="[1-9][0-9]{4,14}" maxlength="11" placeholder="输入您的QQ"
										emptyTips="请输入QQ" notMatchTips="请输入正确的QQ">
								</div>
								<div class="weui_cell_ft">
									<i class="weui_icon_warn"></i>
								</div>
							</div>
							<%-- 学号 --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label class="weui_label">学号</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="number" required
										pattern="^[0-9]{9}$" maxlength="11" placeholder="输入您的学号"
										emptyTips="请输入学号" notMatchTips="请输入正确的学号">
								</div>
								<div class="weui_cell_ft">
									<i class="weui_icon_warn"></i>
								</div>
							</div>
							<%-- 微信号 --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label class="weui_label">微信号</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="tel" required
										pattern="[\w]{1,20}" maxlength="20" placeholder="输入您的微信号"
										emptyTips="请输入微信号" notMatchTips="请输入正确的微信号">
								</div>
								<div class="weui_cell_ft">
									<i class="weui_icon_warn"></i>
								</div>
							</div>
							<%-- 信息描述 --%>
							<div class="weui_cells_title">相关信息描述</div>
							<div class="weui_cells weui_cells_form">
								<div class="weui_cell">
									<div class="weui_cell_bd weui_cell_primary">
										<textarea class="weui_textarea" placeholder="请输入相关信息描述"
											rows="5"></textarea>
										<div class="weui_textarea_counter">
											<span>0</span>/300
										</div>
									</div>
								</div>
							</div>

							<%--文件上传 --%>
							<div class="weui_cells weui_cells_form">
								<div class="weui_cell">
									<div class="weui_cell_bd weui_cell_primary">
										<div id="uploader"></div>
									</div>
								</div>
							</div>

							<%-- 验证码 --%>
							<div class="weui_cell weui_vcode">
								<div class="weui_cell_hd">
									<label class="weui_label">验证码</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="number" required
										placeholder="点击验证码更换" tips="请输入验证码">
								</div>
								<div class="weui_cell_ft">
									<i class="weui_icon_warn"></i> <img
										src="http://weui.github.io/weui/images/vcode.jpg">
								</div>
							</div>
						</div>


						<div class="weui_btn_area">
							<a id="formSubmitBtn" href="javascript:"
								class="weui_btn weui_btn_primary">信息属实 确认提交</a>
						</div>
					</form>

				</div>
			</div>


			<%----------------------------------------------------------------------------------------%>
			<div class="weui_tabbar">
				<a href="javascript:;" class="weui_tabbar_item">
					<div class="weui_tabbar_icon">
						<img src="https://weui.github.io/weui/images/icon_nav_button.png"
							alt="">
					</div>
					<p class="weui_tabbar_label">失物信息</p> </a> <a href="javascript:;"
					class="weui_tabbar_item">
					<div class="weui_tabbar_icon">
						<img src="https://weui.github.io/weui/images/icon_nav_msg.png"
							alt="">
					</div>
					<p class="weui_tabbar_label">发布信息</p> </a>
			</div>
		</div>
		<div data-am-widget="gotop" class="am-gotop am-gotop-fixed" style=" max-width: 320px; margin-left: 83%;">
		    <a href="#top" title=""> <img class="am-gotop-icon-custom"
				src="http://amazeui.b0.upaiyun.com/assets/i/cpts/gotop/goTop.gif"
				style=" display: inline-block;max-width: 30px;vertical-align: middle;"
			/>
			</a>
  		</div>
	</div>
	
	<%@ include file="../WEB-INF/common/LostAndFoundPlatform/footer.jsp"%>
	<script type="text/javascript" src="<%=path %>/js/index.js"></script>

</body>
</html>

