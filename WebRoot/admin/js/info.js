/*
 * 获取各种分页信息
 */
function getInfo(pid) {
	var infoUrl = "laf_getLimitValidInfo.hnuc";//
	var sta = (pid-1) * 15 + 1;
	var len = 15;
	$.ajax({
		type : 'POST',
		url : infoUrl,
		data : {
			start : sta,
			length : len
		},
		dataType : 'json',
		success : function(json){
			var infos = json.Info;
			console.log(infos);
		}
	});
	
}