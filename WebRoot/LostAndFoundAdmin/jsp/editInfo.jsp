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
					<form id="form" action="laf_updateInfo.hnuc" method="post">
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
							<%-- 手机号 --%>
							<div class="weui_cell">
								<div class="weui_cell_hd">
									<label class="weui_label">手机号</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input name="laf_phone" class="weui_input" type="tel" required value="${laf.laf_phone }"
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
									<input name="laf_qq" class="weui_input" type="number" required
										pattern="[1-9][0-9]{4,14}" maxlength="11" placeholder="输入您的QQ" value="${laf.laf_qq }"
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
									<input name="laf_stuid" class="weui_input" type="number"
										required pattern="^[0-9]{9}$" maxlength="11" value="${laf.laf_stuid }"
										placeholder="输入您的学号" emptyTips="请输入学号" notMatchTips="请输入正确的学号">
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
										pattern="[\w\W]{1,20}" maxlength="20" placeholder="输入您的微信号" value="${laf.laf_wechat }"
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
										<textarea name="laf_detail" class="weui_textarea"
											placeholder="请输入相关信息描述" rows="5">${laf.laf_detail }</textarea>
										<div class="weui_textarea_counter">
											<span>0</span>/300
										</div>
									</div>
								</div>
							</div>

							<%--文件上传 
							<div class="weui_cells weui_cells_form">
								<div class="weui_cell">
									<div class="weui_cell_bd weui_cell_primary">
										<div class="weui_uploader">
											<div class="weui_uploader_hd weui_cell">
												<div class="weui_cell_bd weui_cell_primary">图片上传</div>
												<div class="weui_cell_ft js_counter">0/1</div>
											</div>
											<div class="weui_uploader_bd">
												<ul class="weui_uploader_files">
													<!-- 预览图插入到这 -->
												</ul>
												<div class="weui_uploader_input_wrp">
													<input class="weui_uploader_input js_file" type="file" name="images"
														accept="image/*"
														multiple="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							--%>
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
	<div class="weui_dialog_alert" style="display: none;">
		<div class="weui_mask"></div>
		<div class="weui_dialog">
			<div class="weui_dialog_hd">
				<strong class="weui_dialog_title">警告</strong>
			</div>
			<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
			<div class="weui_dialog_ft">
				<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
			</div>
		</div>
	</div>
	<script src="https://cdn.bootcss.com/zepto/1.1.6/zepto.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/index.js"></script>
	<script>
		$.weui = {};
		$.weui.alert = function(options) {
			options = $.extend({
				title : '警告',
				text : '警告内容'
			}, options);
			var $alert = $('.weui_dialog_alert');
			$alert.find('.weui_dialog_title').text(options.title);
			$alert.find('.weui_dialog_bd').text(options.text);
			$alert.on('touchend click', '.weui_btn_dialog', function() {
				$alert.hide();
			});
			$alert.show();
		};

		$(function() {
			// 允许上传的图片类型  
			var allowTypes = [ 'image/jpg', 'image/jpeg', 'image/png',
					'image/gif' ];
			// 最大2MB  
			var maxSize = 1024 * 1024 * 2;
			// 图片最大宽度  
			var maxWidth = 1000;
			// 最大上传图片数量  
			var maxCount = 1;
			$('.js_file')
					.on(
							'change',
							function(event) {
								var files = event.target.files;

								// 如果没有选中文件，直接返回  
								if (files.length === 0) {
									return;
								}

								for (var i = 0, len = files.length; i < len; i++) {
									var file = files[i];
									var reader = new FileReader();

									// 如果类型不在允许的类型范围内  
									if (allowTypes.indexOf(file.type) === -1) {
										$.weui.alert({
											text : '该类型不允许上传'
										});
										continue;
									}

									if (file.size > maxSize) {
										$.weui.alert({
											text : '图片太大，不允许上传'
										});
										continue;
									}

									if ($('.weui_uploader_file').length >= maxCount) {
										$.weui.alert({
											text : '最多只能上传' + maxCount + '张图片'
										});
										return;
									}

									reader.onload = function(e) {
										var img = new Image();
										img.onload = function() {
											// 不要超出最大宽度  
											var w = Math.min(maxWidth,
													img.width);
											// 高度按比例计算  
											var h = img.height
													* (w / img.width);
											var canvas = document
													.createElement('canvas');
											var ctx = canvas.getContext('2d');
											// 设置 canvas 的宽度和高度  
											canvas.width = w;
											canvas.height = h;
											ctx.drawImage(img, 0, 0, w, h);
											var base64 = canvas
													.toDataURL('image/png');

											// 插入到预览区  
											var $preview = $('<li class="weui_uploader_file weui_uploader_status" style="background-image:url('
													+ base64
													+ ')"><div class="weui_uploader_status_content">0%</div></li>');
											$('.weui_uploader_files').append(
													$preview);
											var num = $('.weui_uploader_file').length;
											$('.js_counter').text(
													num + '/' + maxCount);

											// 然后假装在上传，可以post base64格式，也可以构造blob对象上传，也可以用微信JSSDK上传  

											var progress = 0;
											function uploading() {
												$preview
														.find(
																'.weui_uploader_status_content')
														.text(++progress + '%');
												if (progress < 100) {
													setTimeout(uploading, 30);
												} else {
													// 如果是失败，塞一个失败图标  
													//$preview.find('.weui_uploader_status_content').html('<i class="weui_icon_warn"></i>');  
													$preview
															.removeClass(
																	'weui_uploader_status')
															.find(
																	'.weui_uploader_status_content')
															.remove();
												}
											}
											setTimeout(uploading, 30);
										};

										img.src = e.target.result;
									};
									reader.readAsDataURL(file);
								}
							});
		});
		//# sourceURL=pen.js
	</script>
</body>
</html>

