<%@ page language="java"
	import="java.util.*,edu.hnuc.we.entity.PageBean,edu.hnuc.we.entity.LostAndFound"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>湖商失物招领首页 </title>
<%@include file="../WEB-INF/common/LostAndFoundPlatform/head.jsp"%>

<link rel='stylesheet prefetch' href='<%=path%>/css/lostandfound.css'>
<script type="text/javascript">
	window.onload = function(){
		var info = "${info}";
		if(info != "" && info != null) {
			layer.msg(info);
			<%
			request.getSession().removeAttribute("info");
			%>
		}
	};
</script>
</head>

<body translate="no" style="max-width: 100%;width: 100%;">

	<div class="container">
		<div class="weui_tab">
			<!--<div class="weui_navbar">
            <div class="weui_navbar_item">
                按钮
            </div>
            <div class="weui_navbar_item">
                表单
            </div>
        </div>-->
			<div class="weui_tab_bd">
				<div class="weui_tab_bd_item" style="display: none;">
					<div class="padding">
						<div class="weui_search_bar" id="search_bar">
							<form class="weui_search_outer" action="laf_searchValidInfo.hnuc"
								method="get">
								<div class="weui_search_inner">
									<i class="weui_icon_search"></i> <input type="search"
										name="keyWord" class="weui_search_input" id="search_input"
										placeholder="搜索" required=""> <a href="javascript:"
										class="weui_icon_clear" id="search_clear"></a>
								</div>
								<label for="search_input" class="weui_search_text"
									id="search_text"> <i class="weui_icon_search"></i> <span>搜索</span>
								</label>
							</form>
							<a href="javascript:" class="weui_search_cancel"
								id="search_cancel">取消</a>
						</div>
						<div class="" style="margin-top:10px;text-align: center;width: 100%;">
							<a href="laf_getAllLostInfo.hnuc">
								<button type="button" style="width: auto;" class="am-btn am-btn-success am-round">招领列表</button>
							</a> 
							<a href="laf_getAllFindInfo.hnuc">
								<button type="button" style="width: auto;" class="am-btn am-btn-success am-round">寻物列表</button>
							</a>
						</div>
					</div>

					<div class="weui_panel_bd">
						<c:if test="${empty lafPage.pageData && empty keyWord}">
							<div style="text-align: center;margin-top: 100px;">
							<span style="font-size: 2em;">
							暂时还没有人发布失物信息 <br><br> 赶快抢个沙发吧ヾ|≧_≦|〃
							</span>
							</div>
						</c:if>
						<c:forEach items="${lafPage.pageData}" var="laf">
							<a href="laf_getInfoById.hnuc?lafId=${laf.laf_id}">
								<div class="weui_media_box weui_media_text">
									<h3 class="weui_media_title"
										style="text-align: center;color: green;">
										<c:if test="${laf.laf_type == 0}">
									招领启示 <i class="fa fa-bullhorn" aria-hidden="true"></i>
								</c:if>
										<c:if test="${laf.laf_type == 1}">
									寻物启示 <i class="fa fa-search-plus" aria-hidden="true"></i>
								</c:if>
									</h3>
									<p class="weui_media_desc" style="margin-bottom: 10px;">${laf.laf_mainDetail}</p>

									<p class="weui_media_desc" style="text-align: right;margin-top: 30px;">
										<a href="laf_getInfoById.hnuc?lafId=${laf.laf_id}"> <span style="color:#6699CC;"> 
										<span style="color: #6699CC;font-size: 1.1em;padding-right:10px;">详情>> </span>
										<%--<img alt="" src="${pageContext.request.contextPath }/imgs/rightRow.png"> --%>
										</a>
									</p>
									<div style="text-align:center;">
									<ul class="weui_media_info" style="color: #6699CC;margin-left: 0;padding-left: 0;">
										<li class="weui_media_info_meta">${laf.laf_name}</li>
										<li class="weui_media_info_meta">${laf.laf_pubtime}</li>
										<li class="weui_media_info_meta"><span
											style="color:#FF3333;">
										<c:if test="${laf.laf_stat == 1}">
											正在寻找
										</c:if> <c:if test="${laf.laf_stat == 6}">
											物归原主
										</c:if>
										</span></li>
									</ul>
									</div>
								</div>
							</a>
						</c:forEach>
						<hr>
						<c:if test="${!empty keyWord}">
							<c:if test="${!empty lafPage.pageData }">
							<p style="text-align: center;">
								搜索 : <span style="color: red;"> ${keyWord } </span> , 共检索到 <span
									style="color: red;"> ${lafPage.totalCount }</span> 条相关记录
							</p>
							</c:if>
							<c:if test="${empty lafPage.pageData }">
							<p style="text-align: center;">
								<span style="font-size: 2em;">ヽ(°◇° )ノ</span><br> 没能找到与 <span style="color: red;"> "${keyWord }" </span> 相关的信息
							</p>
							</c:if>
						</c:if>
						
						<c:if test="${empty lafPage.pageData }">
							<div style="text-align: center;">
							<a style="font-size: 1.3em;" href="laf_getAllValidInfo.hnuc">
								<img alt="" src="${pageContext.request.contextPath }/imgs/return.png"> 传送回家
							</a>
							</div>
						</c:if>
						<c:if test="${!empty lafPage.pageData }">
						<div style="margin-bottom: 50px;
						<c:if test="${lafPage.totalPage == 1 }">padding-bottom: 33px;</c:if>
						">
							<ul data-am-widget="pagination"
								class="am-pagination am-pagination-select">
								<li class="am-pagination-prev "><c:if
										test="${!empty keyWord }">
										<c:if test="${lafPage.currentPage gt 1 }">
											<a
												href="laf_searchValidInfo.hnuc?lafPage.currentPage=${lafPage.currentPage - 1}&keyWord=${keyWord}"
												class="">上一页</a>
										</c:if>
									</c:if> <c:if test="${empty keyWord}">
										<c:if test="${empty lostMark}">
											<c:if test="${empty findMark}">
												<c:if test="${lafPage.currentPage gt 1 }">

													<a
														href="laf_getAllValidInfo.hnuc?lafPage.currentPage=${lafPage.currentPage - 1}"
														class="">上一页</a>
												</c:if>
											</c:if>
										</c:if>
									</c:if> <c:if test="${!empty lostMark}">

										<c:if test="${lafPage.currentPage gt 1 }">
											<a
												href="laf_getAllLostInfo.hnuc?lafPage.currentPage=${lafPage.currentPage - 1}"
												class="">上一页</a>
										</c:if>
									</c:if> <c:if test="${!empty findMark}">

										<c:if test="${lafPage.currentPage gt 1 }">
											<a
												href="laf_getAllFindInfo.hnuc?lafPage.currentPage=${lafPage.currentPage - 1}"
												class="">上一页</a>
										</c:if>
									</c:if></li>

								<li class="am-pagination-select"><select
									onchange="mbar(this)">
										<%
											PageBean<LostAndFound> list = (PageBean<LostAndFound>) request
													.getAttribute("lafPage");
											for (int i = 1; i <= list.getTotalPage(); i++) {
												request.setAttribute("i", i);
										%>
										<c:if test="${!empty keyWord }">
											<option
												value="laf_searchValidInfo.hnuc?lafPage.currentPage=${i}&keyWord=${keyWord}"
												class=""
												<c:if test="${i == lafPage.currentPage}">selected="selected"</c:if>>
												<%=i%>/${lafPage.totalPage }
											</option>
										</c:if>
										<c:if test="${empty keyWord }">
											<c:if test="${empty lostMark}">
												<c:if test="${empty findMark}">
													<option
														value="laf_getAllValidInfo.hnuc?lafPage.currentPage=${i}"
														class=""
														<c:if test="${i == lafPage.currentPage}">selected="selected"</c:if>>
														<%=i%>/${lafPage.totalPage }
													</option>
												</c:if>
											</c:if>
										</c:if>

										<c:if test="${!empty lostMark}">
											<option
												value="laf_getAllLostInfo.hnuc?lafPage.currentPage=${i}"
												class=""
												<c:if test="${i == lafPage.currentPage}">selected="selected"</c:if>>
												<%=i%>/${lafPage.totalPage }
											</option>
										</c:if>

										<c:if test="${!empty findMark}">
											<option
												value="laf_getAllFindInfo.hnuc?lafPage.currentPage=${i}"
												class=""
												<c:if test="${i == lafPage.currentPage}">selected="selected"</c:if>>
												<%=i%>/${lafPage.totalPage }
											</option>
										</c:if>
										<%
											}
										%>
								</select></li>

								<li class="am-pagination-next "><c:if
										test="${!empty keyWord}">
										<c:if test="${lafPage.totalPage gt lafPage.currentPage }">
											<a
												href="laf_searchValidInfo.hnuc?lafPage.currentPage=${lafPage.currentPage + 1}&keyWord=${keyWord}"
												class="">下一页</a>
										</c:if>
									</c:if> <c:if test="${empty keyWord }">
										<c:if test="${empty lostMark}">
											<c:if test="${empty findMark}">
												<c:if test="${lafPage.totalPage gt lafPage.currentPage }">
													<a
														href="laf_getAllValidInfo.hnuc?lafPage.currentPage=${lafPage.currentPage + 1}"
														class="">下一页</a>
												</c:if>
											</c:if>
										</c:if>

										<c:if test="${!empty lostMark}">
											<c:if test="${lafPage.totalPage gt lafPage.currentPage }">
												<a
													href="laf_getAllLostInfo.hnuc?lafPage.currentPage=${lafPage.currentPage + 1}"
													class="">下一页</a>
											</c:if>
										</c:if>

										<c:if test="${!empty findMark}">
											<c:if test="${lafPage.totalPage gt lafPage.currentPage }">
												<a
													href="laf_getAllFindInfo.hnuc?lafPage.currentPage=${lafPage.currentPage + 1}"
													class="">下一页</a>
											</c:if>
										</c:if>

									</c:if></li>

							</ul>
						</div>
						</c:if>
						<%-- --%>
					</div>
				</div>
				<div class="weui_tab_bd_item" style="display: none;"></div>

				<%---------------------------------------------------------------------%>
				<div class="weui_tab_bd_item" style="display: none;">
					<div class="weui_cells_title"
						style="text-align: center;font-size:1.5em;padding-top: 10px;;margin:0;">失物相关信息填写</div>
					<c:if test="${!empty user || !empty admin }">
					<p style="text-align: center;padding: 0;margin:0;">(请尽量提供准确信息)</p>
					</c:if>
					<c:if test="${empty user && empty admin }">
					<p style="text-align: center;padding: 0;margin:0;">(登录后方能发布信息  <a href="${pageContext.request.contextPath }/login.jsp">点我登录 </a>)</p>
					</c:if>
					<form id="form" onsubmit="return subCheckText();" action="laf_releaseInfo.hnuc" method="post"
						enctype="multipart/form-data">
						<div class="weui_cells weui_cells_form">
							<%--选择类型  --%>
							<div class="weui_cells_title">您要？</div>
							<div class="weui_cells weui_cells_radio">
								<label class="weui_cell weui_check_label" for="x11">
									<div class="weui_cell_bd weui_cell_primary">
										<p>我要发布招领信息</p>
									</div>
									<div class="weui_cell_ft">
										<input type="radio" style="display:none" class="weui_check"
											name="laf_type" id="x11" value="0" checked="checked">
										<span class="weui_icon_checked"></span>
									</div>
								</label> <label class="weui_cell weui_check_label" for="x12">
									<div class="weui_cell_bd weui_cell_primary">
										<p>我要发布寻物信息</p>
									</div>
									<div class="weui_cell_ft">
										<input type="radio" style="display:none" name="laf_type"
											class="weui_check" id="x12" value="1"> <span
											class="weui_icon_checked"></span>
									</div>
								</label>
							</div>
							<%-- 时间 
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label for="" class="weui_label">时间</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" name="laf_laftime"
										type="datetime-local" value="YYYY-MM-DDThh:mm:ss"
										placeholder="">
								</div>
							</div>
							--%>
							<%--联系人姓名  --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label class="weui_label">联系人</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input name="laf_name" class="weui_input" type="text" required
										pattern="^[\u4E00-\u9FA5]{2,5}$" maxlength="10" value="${user.usr_name }"
										placeholder="输入您的姓名" emptyTips="请输入姓名" notMatchTips="请输入正确的姓名">
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
									<input name="laf_stuid" class="weui_input" type="number"
										required pattern="^[0-9]{9}$" maxlength="11" value="${user.usr_stuId }"
										placeholder="输入您的学号" emptyTips="请输入学号" notMatchTips="请输入正确的学号">
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
									<input name="laf_phone" class="weui_input" type="number" required
										pattern="^(1)\d{10}$" maxlength="11" placeholder="输入您的手机号"
										emptyTips="请输入手机号" notMatchTips="请输入正确的手机号">
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
									<input name="laf_qq" class="weui_input" type="number" required
										pattern="^[1-9][0-9]{4,14}$" maxlength="11"
										placeholder="输入您的QQ" emptyTips="请输入QQ" notMatchTips="请输入正确的QQ">
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
									<input name="laf_wechat" class="weui_input" type="tel" required
										pattern="^[\w\W]{1,20}$" maxlength="20" placeholder="输入您的微信号"
										emptyTips="请输入微信号" notMatchTips="请输入正确的微信号">
								</div>
								<div class="weui_cell_ft">
									<i class="weui_icon_warn"></i>
								</div>
							</div>
							<%-- 信息描述 --%>
							<div class="weui_cells_title">相关信息描述(请尽量描述清楚 在 15-500 字符之间) <span id="commentsInfo"></span></div>
							<div class="weui_cells weui_cells_form">
								<div class="weui_cell">
									<div class="weui_cell_bd weui_cell_primary">
										<textarea name="laf_detail" class="weui_textarea" required
											 placeholder="请完善失物相关信息 例如：时间 地点 等等....." rows="7" onkeyup="checkContentLength();"></textarea>
										<div class="weui_textarea_counter">
											<span id="span"><span style="color: #f00;">0</span>/500</span>
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


							<%-- 验证码 
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
							--%>
						</div>


						<div class="weui_btn_area" style="margin-bottom: 50px;">
							<!--
							<a id="formSubmitBtn" href="javascript:;"
								class="weui_btn weui_btn_primary"></a>
						-->
							<c:if test="${!empty user || !empty admin}">
								<button id="formSubmitBtn" class="weui_btn weui_btn_primary"
									type="submit">信息属实 确认提交</button>
							</c:if>
							<c:if test="${empty user && empty admin}">
								<button class="weui_btn weui_btn_primary" type="button">请先登录 再进行信息发布
								</button>
							</c:if>
						</div>
					</form>

				</div>
			</div>

			<%----------------------------------------------------------------------------------------%>
			<script src='<%=path %>/plugins/jquery/jquery.min.js'></script>
			<script src='<%=path %>/plugins/layer-v2.4/layer/layer.js'></script>
			<script src='<%=path %>/plugins/weui/dist/weui.min.js'></script>
			<script src='<%=path %>/plugins/AmazeUI-2.7.1/assets/js/amazeui.min.js'></script>
			<div class="weui_tabbar">
				<a href="loadIndexInfo.hnuc" class="weui_tabbar_item">
					<div class="weui_tabbar_icon" style="margin-top: 10px;">
						<img src="${pageContext.request.contextPath }/imgs/goBack.png"
							alt="">
					</div>
					<p class="weui_tabbar_label">微主页</p>
				</a> <a href="laf_getAllValidInfo.hnuc" class="weui_tabbar_item">
					<div class="weui_tabbar_icon" style="margin-top: 10px;">
						<img src="${pageContext.request.contextPath }/imgs/love.png"
							alt="">
					</div>
					<p class="weui_tabbar_label" style="color: rgb(237,79,79);">失物列表</p>
				</a> <a href="javascript:;" class="weui_tabbar_item">
					<div class="weui_tabbar_icon" style="margin-top: 10px;">
						<img src="${pageContext.request.contextPath }/imgs/release.png"
							alt="">
					</div>
					<p class="weui_tabbar_label" style="color: rgb(110,178,277);">发布信息</p>
				</a>
			</div>


		</div>
	</div>
	<script type="text/javascript" src="<%=path%>/js/index.js"></script>
	
</body>

<script type="text/javascript">
	function checkContentLength(){
		var a = document.getElementsByTagName('textarea')[0];
		var text = a.value;
		text = text.replace(/(\n)+|(\r\n)+/g, "");
		text = text.replace(/\s+/g, ' ');
		var b = document.getElementById('span');
		var c = text.length;
		if(c>500 || c<15 ) c = '<span style="color:#f00">'+ c +'</span>';
		else c = '<span style="color:#44AF00">' + c + '</span>';
		b.innerHTML = c + '/500';
	}
	
	function subCheckText(){
		var a = document.getElementsByTagName('textarea')[0];
		var text = a.value;
		text = text.replace(/(\n)+|(\r\n)+/g, "");
		text = text.replace(/\s+/g, ' ');
		var c = text.length;
		var tar = document.getElementById("commentsInfo");
		if(c>500 || c<15 ) {
			tar.innerHTML = '<br><span style="color:#f00"> 描述长度需在15-500字符之间ヾ(o◕∀◕)ﾉヾ</span>';
			return false;
		} else {
			tar.innerHTML = "";
			return true;
		}
	}

	function mbar(sobj) {
		var docurl = sobj.options[sobj.selectedIndex].value;
		if (docurl != "") {
			window.location = docurl;
		}
	}
	<%-- AJAX提交
	window.onload = function(){
		layer.msg("欢迎光顾 湖商失物招领 系统<br> 奉献爱心 ヾ(o◕∀◕)ﾉヾ");
	}
	$(document).ready(function(){
		$("#formSubmitBtn").click(function() {
			var btn = $('#formSubmitBtn');
			var url = "${pageContext.request.contextPath}/user_login.hnuc?time="+new Date().getTime();
			var stuId = $("#stuId").val();
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
	--%>
</script>
</html>

