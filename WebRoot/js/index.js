//window.console = window.console || function(t) {
//};
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
document.body.setAttribute('ontouchstart', '');
$(function() {
	$('.container').on('click', '#btnAlert', function(e) {
		$.weui.alert('\u8B66\u544A\u4F60', function() {
			console.log('\u77E5\u9053\u4E86...');
		});
	}).on('click', '#btnConfirm', function(e) {
		$.weui.confirm('\u786E\u8BA4\u5220\u9664\u5417\uFF1F', function() {
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
	$('#uploader').uploader({
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
					xhr.addEventListener('progress', function(evt) {
						if (evt.lengthComputable) {
							var percentComplete = evt.loaded / evt.total;
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
if (document.location.search.match(/type=embed/gi)) {
	window.parent.postMessage("resize", "*");
}
// # sourceURL=pen.js
