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
<title>编辑页面</title>
<%@include file="../../WEB-INF/common/LostAndFoundPlatform/head.jsp"%>

<link rel='stylesheet prefetch' href='<%=path%>/css/lostandfound.css'>

<script type="text/javascript">
	function mbar(sobj) {
		var docurl = sobj.options[sobj.selectedIndex].value;
		if (docurl != "") {
			window.location = docurl;
		}
	}
</script>
</head>

<body translate="no">

	<div class="container">
		<div class="weui_tab">
			<div class="weui_tab_bd">
				<%---------------------------------------------------------------------%>
				<div class="weui_tab_bd_item" style="display: none;">
					<div class="weui_cells_title"
						style="text-align: center;font-size:1.5em;padding-top: 10px;;margin:0;">失物相关信息编辑</div>
					<form id="form" onsubmit="return subCheckText();" action="laf_updateInfo.hnuc" method="post">
						<input type="hidden" name="laf_id" value="${laf.laf_id }">
						<input type="hidden" name="laf_pubtime" value="${laf.laf_pubtime }">
						<input type="hidden" name="laf_pic" value="${laf.laf_pic }">
						<input type="hidden" name="laf_stat" value="${laf.laf_stat }">
						<%--
						<input type="hidden" name="laf_sucPhone" value="${laf.laf_sucPhone }">
						<input type="hidden" name="laf_sucName" value="${laf.laf_sucName }">
						<input type="hidden" name="laf_suctime" value="${laf.laf_suctime }">
						 --%>
						<div class="weui_cells weui_cells_form">
							<%--选择类型  --%>
							<div class="weui_cells weui_cells_radio">
								<label class="weui_cell weui_check_label" for="x11">
									<div class="weui_cell_bd weui_cell_primary">
										<p>招领信息</p>
									</div>
									<div class="weui_cell_ft">
										<input type="radio" style="display:none" class="weui_check" name="laf_type"
											id="x11" value="0" 
											<c:if test="${laf.laf_type == 0 }">
											checked="checked"
											</c:if>
											> <span
											class="weui_icon_checked"></span>
									</div>
								</label> <label class="weui_cell weui_check_label" for="x12">
									<div class="weui_cell_bd weui_cell_primary">
										<p>寻物信息</p>
									</div>
									<div class="weui_cell_ft">
										<input type="radio" style="display:none" name="laf_type" class="weui_check"
											id="x12" value="1"
											<c:if test="${laf.laf_type == 1 }">
											checked="checked"
											</c:if>
											> <span class="weui_icon_checked"></span>
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
										pattern="^[\u4E00-\u9FA5]{2,5}$" maxlength="10" value="${laf.laf_name }"
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
										required pattern="^[0-9]{9}$" maxlength="11" value="${laf.laf_stuid }"
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
									<input name="laf_phone" class="weui_input" type="number" required value="${laf.laf_phone }"
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
									<input name="laf_qq" class="weui_input" type="number" required value="${laf.laf_qq }"
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
									<input name="laf_wechat" class="weui_input" type="tel" required value="${laf.laf_wechat }"
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
											 placeholder="请输入相关信息描述" rows="7" onkeyup="checkContentLength();">${laf.laf_detail }</textarea>
										<div class="weui_textarea_counter">
											<span id="span">0/500</span>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="weui_btn_area" style="margin-bottom: 50px;">
								<button id="formSubmitBtn" class="weui_btn weui_btn_primary"
									type="submit">确认修改</button>
						</div>
					</form>

				</div>
			</div>

			<%----------------------------------------------------------------------------------------%>
			<%@ include file="../../WEB-INF/common/LostAndFoundPlatform/footer.jsp"%>

		</div>
	</div>
	<script type="text/javascript" src="<%=path%>/js/index.js"></script>
	<script type="text/javascript">
	
	window.onload = function() {
		var a = document.getElementsByTagName('textarea')[0];
		var text = a.value;
		text = text.replace(/(\n)+|(\r\n)+/g, "");
		text = text.replace(/\s+/g, ' ');
		var c = text.length;
		var b = document.getElementById('span');
		b.innerHTML = '<span style="color:#44AF00">' + c + '</span>' + '/500';
	}
	
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

</script>
</body>
</html>

