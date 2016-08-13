<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>湖商失物招领首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel='stylesheet prefetch'
	href='http://rawgit.com/weui/weui/develop/dist/style/weui.css'>
<script
		src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<style>
html, body, .container {
	height: 100%;
}

body {
	background-color: #efeff4;
}

.container {
	
}

.padding {
	padding: 15px;
}
</style>

<script>
	window.console = window.console || function(t) {
	};

	$("#search_bar").on('focus', '#search_input', function() {
		var $weuiSearchBar = $('#search_bar');
		$weuiSearchBar.addClass('weui_search_focusing');
	}).on('blur', '#search_input', function() {
		var $weuiSearchBar = $('#search_bar');
		$weuiSearchBar.removeClass('weui_search_focusing');
		if ($(this).val()) {
			$('#search_text').hide();
		} else {
			$('#search_text').show();
		}
	}).on('input', '#search_input', function() {
		var $searchShow = $("#search_show");
		if ($(this).val()) {
			$searchShow.show();
		} else {
			$searchShow.hide();
		}
	}).on('touchend', '#search_cancel', function() {
		$("#search_show").hide();
		$('#search_input').val('');
	}).on('touchend', '#search_clear', function() {
		$("#search_show").hide();
		$('#search_input').val('');
	});
</script>



</head>

<body translate="no">

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
							<form class="weui_search_outer">
								<div class="weui_search_inner">
									<i class="weui_icon_search"></i> <input type="search"
										class="weui_search_input" id="search_input" placeholder="搜索"
										required=""> <a href="javascript:"
										class="weui_icon_clear" id="search_clear"></a>
								</div>
								<label for="search_input" class="weui_search_text"
									id="search_text"> <i class="weui_icon_search"></i> <span>搜索</span>
								</label>
							</form>
							<a href="javascript:" class="weui_search_cancel"
								id="search_cancel">取消</a>
						</div>
						<div class="weui_panel_hd" style="text-align: center;">寻物 招领 列表</div>
						<hr />
					</div>

					<div class="weui_panel_bd">
						<a href="lostDetail.jsp">
						<div class="weui_media_box weui_media_text">
							<h4 class="weui_media_title"
								style="text-align: center;color: green;">寻物启示</h4>
							<p class="weui_media_desc">2016.8.13我一不小心把节操忘在实验室了，麻烦各位好心人帮我找回......</p>
							
								<p class="weui_media_desc" style="text-align: right;">
									<a href="lostDetail.jsp">
									<span style="color:#6699CC;">详情 ></span>
									</a>
								</p>
							<ul class="weui_media_info">
								<li class="weui_media_info_meta">愤怒的小苹果</li>
								<li class="weui_media_info_meta">2016-8-13</li>
								<li class="weui_media_info_meta weui_media_info_meta_extra"><span style="color:#FF6666;">未寻到</span></li>
							</ul>
						</div>
						</a>
						
						<div class="weui_media_box weui_media_text">
							<h4 class="weui_media_title"
								style="text-align: center;color: green;">招领启示</h4>
							<p class="weui_media_desc">2016.8.13我在实验室捡到一斤节操，妈黑妈黑的，求主人麻溜点认领走T T......</p>
							<a href="#">
								<p class="weui_media_desc" style="text-align: right;">
									<span style="color:#6699CC;">详情 ></span>
								</p>
							</a>
							<ul class="weui_media_info">
								<li class="weui_media_info_meta">愤怒的小西瓜</li>
								<li class="weui_media_info_meta">2016-8-13</li>
								<li class="weui_media_info_meta weui_media_info_meta_extra"><span style="color:#FF6666;">未认领</span></li>
							</ul>
						</div>
						
						<div class="weui_media_box weui_media_text">
							<h4 class="weui_media_title"
								style="text-align: center;color: green;">寻物启示</h4>
							<p class="weui_media_desc">2016.8.13我一不小心把节操忘在实验室了，麻烦各位好心人帮我找回......</p>
							<a href="#">
								<p class="weui_media_desc" style="text-align: right;">
									<span style="color:#6699CC;">详情 ></span>
								</p>
							</a>
							<ul class="weui_media_info">
								<li class="weui_media_info_meta">愤怒的小苹果</li>
								<li class="weui_media_info_meta">2016-8-13</li>
								<li class="weui_media_info_meta weui_media_info_meta_extra"><span style="color:#FF6666;">未寻到</span></li>
							</ul>
						</div>
						
						<div class="weui_media_box weui_media_text">
							<h4 class="weui_media_title"
								style="text-align: center;color: green;">招领启示</h4>
							<p class="weui_media_desc">2016.8.13我在实验室捡到一斤节操，妈黑妈黑的，求主人麻溜点认领走T T......</p>
							<a href="#">
								<p class="weui_media_desc" style="text-align: right;">
									<span style="color:#6699CC;">详情 ></span>
								</p>
							</a>
							<ul class="weui_media_info">
								<li class="weui_media_info_meta">愤怒的小西瓜</li>
								<li class="weui_media_info_meta">2016-8-13</li>
								<li class="weui_media_info_meta weui_media_info_meta_extra"><span style="color:#FF6666;">未认领</span></li>
							</ul>
						</div>
						
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
									</div>
								</label> <label class="weui_cell weui_check_label" for="x12">
									<div class="weui_cell_bd weui_cell_primary">
										<p>我要发布寻物信息</p>
									</div>
									<div class="weui_cell_ft">
										<input type="radio" name="radio1" class="weui_check" id="x12">
										<span class="weui_icon_checked"></span>
									</div>
								</label>
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
					<p class="weui_tabbar_label">失物信息</p>
				</a> <a href="javascript:;" class="weui_tabbar_item">
					<div class="weui_tabbar_icon">
						<img src="https://weui.github.io/weui/images/icon_nav_msg.png"
							alt="">
					</div>
					<p class="weui_tabbar_label">发布信息</p>
				</a>
			</div>
		</div>
	</div>


	<script
		src="//assets.codepen.io/assets/common/stopExecutionOnTimeout-53beeb1a007ec32040abaf4c9385ebfc.js"></script>
	<script src='http://rawgit.com/progrape/weui.js/master/dist/weui.js'></script>
	<%-- 
	<script src='./plugins/weui/dist/example/zepto.min.js'></script>
	<script src='./plugins/weui/dist/example/router.min.js'></script>
	<script src='./plugins/weui/dist/example/example.js'></script>
	--%>

	<script>
		document.body.setAttribute('ontouchstart', '');
		$(function() {
			$('.container').on('click', '#btnAlert', function(e) {
				$.weui.alert('\u8B66\u544A\u4F60', function() {
					console.log('\u77E5\u9053\u4E86...');
				});
			}).on(
					'click',
					'#btnConfirm',
					function(e) {
						$.weui.confirm('\u786E\u8BA4\u5220\u9664\u5417\uFF1F',
								function() {
									console.log('\u5220\u9664\u4E86...');
								}, function() {
									console.log('\u4E0D\u5220\u9664...');
								});
					}).on('click', '#btnDialog', function(e) {
				$.weui.dialog({
					title : '\u81EA\u5B9A\u4E49\u6807\u9898',
					content : '\u81EA\u5B9A\u4E49\u5185\u5BB9',
					buttons : [ {
						label : '\u77E5\u9053\u4E86',
						type : 'default',
						onClick : function() {
							console.log('\u77E5\u9053\u4E86......');
						}
					}, {
						label : '\u597D\u7684',
						type : 'primary',
						onClick : function() {
							console.log('\u597D\u7684......');
						}
					} ]
				});
			}).on('click', '#btnToast', function(e) {
				$.weui.toast('\u5DF2\u5B8C\u6210');
			}).on('click', '#btnLoading', function(e) {
				$.weui.loading('\u6570\u636E\u52A0\u8F7D\u4E2D...');
				setTimeout($.weui.hideLoading, 3000);
			}).on('click', '#btnTopTips', function(e) {
				$.weui.topTips('\u683C\u5F0F\u4E0D\u5BF9');
			}).on('click', '#btnActionSheet', function(e) {
				$.weui.actionSheet([ {
					label : '\u793A\u4F8B\u83DC\u5355',
					onClick : function() {
						console.log('click1');
					}
				}, {
					label : '\u793A\u4F8B\u83DC\u5355',
					onClick : function() {
						console.log('click2');
					}
				}, {
					label : '\u793A\u4F8B\u83DC\u5355',
					onClick : function() {
						console.log('click3');
					}
				} ]);
			});
			$('#uploader').uploader(
					{
						maxCount : 4,
						onChange : function(file) {
							var update = this.update;
							var success = this.success;
							var error = this.error;
							$.ajax({
								type : 'POST',
								url : '/api/v1/upload?format=base64',
								data : {
									data : file.data
								},
								xhr : function() {
									var xhr = new window.XMLHttpRequest();
									xhr.addEventListener('progress', function(
											evt) {
										if (evt.lengthComputable) {
											var percentComplete = evt.loaded
													/ evt.total;
											update(percentComplete + '%');
										}
									}, false);
									return xhr;
								},
								success : function(res) {
									success();
								},
								error : function(err) {
									error();
								}
							});
						}
					});
			var $form = $('#form');
			$form.form();
			$('#formSubmitBtn').on('click', function() {
				$form.validate();
			});
			$('.weui_tab').tab();
		});
		//# sourceURL=pen.js
	</script>


	<script>
		if (document.location.search.match(/type=embed/gi)) {
			window.parent.postMessage("resize", "*");
		}
	</script>


</body>
</html>


