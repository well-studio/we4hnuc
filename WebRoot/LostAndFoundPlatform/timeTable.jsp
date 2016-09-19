<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>课表及成绩信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel='stylesheet'
	href='/we4hnuc/plugins/AmazeUI-2.7.1/assets/css/amazeui.min.css'>

</head>
<hr style="color:rgba(254,123,38,1)" />
<center>
	<h1 style='color:rgba(254,123,38,1)'>欢迎你~***莫丹***</h1>
</center>
<br />
<center>
	<h2 style='color:rgba(254,123,38,1)'>课表信息如下</h2>
</center>
<%-- 1、去掉script标签 --%>
<%-- 2、去掉放大课表、打印课表 --%>
<%-- 3、去掉打印成绩 --%>
<%-- 4、去掉最后两个div --%>
<%-- 5、去掉最后一个Table --%>
<%-- 6、去掉第一个Table --%>
<%-- 7、加上amaziui的样式 --%>
<%-- 8、去掉 onClick="javascript:gb_bgcolor(this,'1_9');"
		  onMouseOver="this.style.cursor='hand'"
		  onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=01321&XH=140930021&Datetime=2016-9-5 15:22:59');"--%>


<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<LINK href="left/csdn.css" rel="stylesheet">
<title>成绩查询</title>


<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<LINK href="left/csdn.css" rel="stylesheet">
<title>湖南商学院曾胡洪学生课表</title>
</head>
<script LANGUAGE="javascript">  
  function js_callpage5(htmlurl) {
  var newwin=window.open(htmlurl,"_blank","toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,top=" + (screen.availheight / 2 - 150 ) + " ,left=" + (screen.availwidth / 2 - 220 ) + ",width=440,height=300");
} 
function showmsg()
{
reading.style.visibility="visible";
}
</script>
<body topmargin="0" leftmargin="0"
	style="overflow-x:hidden;overflow-y:auto" oncontextmenu="return false">

	<form method="post" action="Xk_XsxkRight_Kb.asp" name=Form1
		onsubmit="return CheckData()">
		<input type="hidden" name="Xnxqh" value="2015-2016-2"> <input
			type="hidden" name="Xh" value="140930021"> <input
			type="hidden" name="noshowtool" value="true">
		<div align="center" class="am-scrollable-horizontal">
			<table border="1" width="98%" bordercolorlight="#588FC7"
				cellspacing="0" cellpadding="0" bordercolor="#588FC7"
				bordercolordark="#ffffff" height="88%"
				class="am-table am-table-bordered .am-table-hover">
				<tr class="am-primary">
					<td width="90" height="28" align="center"><DIV ID=DIV2
							style="visibility:visible">
							<%--
							<nobr>
								<input type="checkbox" name="showKbmx" value="ON"
									onclick="javascript:creating.style.visibility='visible';document.Form1.submit();"
									checked>放大课表
							</nobr>
							<br>&nbsp;&nbsp;&nbsp;<a href="#"
								onclick="javascript:document.all('DIV2').style.visibility='hidden';window.print();document.all('DIV2').style.visibility='visible';"
								title="打印时请设置横向打印效果比较好!">打印课表</a>
							 --%>
						</DIV></td>
					<td width="130" height="28" align="center">星期一</td>

					<td width="130" height="28" align="center">星期二</td>

					<td width="130" height="28" align="center">星期三</td>

					<td width="130" height="28" align="center">星期四</td>

					<td width="130" height="28" align="center">星期五</td>

					<td width="130" height="28" align="center">星期六</td>

					<td width="130" height="28" align="center">星期天</td>
				</tr>

				<tr>
					<td width="90" height="28" align="center">&nbsp;0102节</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000126
课程编码：090256
课程名称：操作系统A
授课教师：史湘宁
开课时间：10102
上课周次：1-14
开课地点：F102*
上课班级：临班1043'>操作系统A<br>史湘宁<br>1-14<br>F102*<br>临班1043
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000151
课程编码：090307
课程名称：数字逻辑
授课教师：李桂梅
开课时间：20102
上课周次：1-10
开课地点：B107*
上课班级：临班1511'>数字逻辑<br>李桂梅<br>1-10<br>B107*<br>临班1511
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000305
课程编码：080117
课程名称：大学英语拓展课[英美社会与文化]
授课教师：吴静霓
开课时间：30102
上课周次：1-16
开课地点：A302*
上课班级：临班1067'>大学英语拓展课[英美社会与文化]<br>吴静霓<br>1-16<br>A302*<br>临班1067
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000151
课程编码：090307
课程名称：数字逻辑
授课教师：李桂梅
开课时间：40102
上课周次：1-10
开课地点：B107*
上课班级：临班1511'>数字逻辑<br>李桂梅<br>1-10<br>B107*<br>临班1511
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000054
课程编码：090113
课程名称：算法设计与分析（计）
授课教师：李姣燕
开课时间：50102
上课周次：1-10
开课地点：B409*
上课班级：临班1473'>算法设计与分析（计）<br>李姣燕<br>1-10<br>B409*<br>临班1473
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

				</tr>

				<tr>
					<td width="90" height="28" align="center">&nbsp;0304节</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161001680
课程编码：140207
课程名称：中国近现代史纲要
授课教师：刘定平
开课时间：20304
上课周次：1-8
开课地点：C405*
上课班级：临班0870'>中国近现代史纲要<br>刘定平<br>1-8<br>C405*<br>临班0870
					</a><br>------------<br> <a href='#'
						title='开课编号：20161001430
课程编码：140211
课程名称：毛泽东思想和中国特色社会主义理论体系概论（一）
授课教师：刘定平
开课时间：20304
上课周次：9-16
开课地点：C405*
上课班级：临班0850'>毛泽东思想和中国特色社会主义理论体系概论（一）<br>刘定平<br>9-16<br>C405*<br>临班0850
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000864
课程编码：030103
课程名称：概率论与数理统计A
授课教师：黄含其
开课时间：40304
上课周次：1-16
开课地点：B409*
上课班级：临班0931'>概率论与数理统计A<br>黄含其<br>1-16<br>B409*<br>临班0931
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000864
课程编码：030103
课程名称：概率论与数理统计A
授课教师：黄含其
开课时间：50304
上课周次：1-16
开课地点：B409*
上课班级：临班0931'>概率论与数理统计A<br>黄含其<br>1-16<br>B409*<br>临班0931
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

				</tr>

				<tr>
					<td width="90" height="28" align="center">&nbsp;0506节</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161001782
课程编码：150104
课程名称：体育（四）[羽毛球]
授课教师：李阳福
开课时间：10506
上课周次：1-16
开课地点：体育馆前坪
上课班级：临班0416'>体育（四）[羽毛球]<br>李阳福<br>1-16<br>体育馆前坪<br>临班0416
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000054
课程编码：090113
课程名称：算法设计与分析（计）
授课教师：李姣燕
开课时间：30506
上课周次：1-10
开课地点：B409*
上课班级：临班1473'>算法设计与分析（计）<br>李姣燕<br>1-10<br>B409*<br>临班1473
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000126
课程编码：090256
课程名称：操作系统A
授课教师：史湘宁
开课时间：50506
上课周次：1-14
开课地点：F102*
上课班级：临班1043'>操作系统A<br>史湘宁<br>1-14<br>F102*<br>临班1043
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

				</tr>

				<tr>
					<td width="90" height="28" align="center">&nbsp;0708节</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161001430
课程编码：140211
课程名称：毛泽东思想和中国特色社会主义理论体系概论（一）
授课教师：刘定平
开课时间：30708
上课周次：9-16
开课地点：C405*
上课班级：临班0850'>毛泽东思想和中国特色社会主义理论体系概论（一）<br>刘定平<br>9-16<br>C405*<br>临班0850
					</a><br>------------<br> <a href='#'
						title='开课编号：20161001680
课程编码：140207
课程名称：中国近现代史纲要
授课教师：刘定平
开课时间：30708
上课周次：1-8
开课地点：C405*
上课班级：临班0870'>中国近现代史纲要<br>刘定平<br>1-8<br>C405*<br>临班0870
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000060
课程编码：090121
课程名称：WEB程序设计
授课教师：曾强聪
开课时间：40708
上课周次：1-16
开课地点：F102*
上课班级：临班1036'>WEB程序设计<br>曾强聪<br>1-16<br>F102*<br>临班1036
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000187
课程编码：090445
课程名称：Web程序设计实验
授课教师：曾强聪
开课时间：50708
上课周次：4-15
开课地点：实203
上课班级：临班1040'>Web程序设计实验<br>曾强聪<br>4-15<br>实203<br>临班1040
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

				</tr>

				<tr>
					<td width="90" height="28" align="center">&nbsp;0910节</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000520
课程编码：100227X
课程名称：武侠小说与武侠文化X
授课教师：唐朝晖(中)
开课时间：2091011
上课周次：1-11
开课地点：B105*
上课班级：临班0097'>武侠小说与武侠文化X<br>唐朝晖(中)<br>1-11<br>B105*<br>临班0097
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

				</tr>

				<tr>
					<td width="90" height="28" align="center">&nbsp;1112节</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;<a href='#'
						title='开课编号：20161000520
课程编码：100227X
课程名称：武侠小说与武侠文化X
授课教师：唐朝晖(中)
开课时间：2091011
上课周次：1-11
开课地点：B105*
上课班级：临班0097'>武侠小说与武侠文化X<br>唐朝晖(中)<br>1-11<br>B105*<br>临班0097
					</a>
					</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

					<td width="130" height="28" align="center">&nbsp;</td>

				</tr>

				<tr>
					<td height="28" align="center">备 &nbsp;注</td>
					<td height="28" colspan="7">&nbsp;</td>
				</tr>

			</table>

			<%-- 
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="14" height="6"></td>
					<td width="217" height="6"></td>
					<td width="282" height="6"></td>
					<td width="245" height="6"></td>
				</tr>
				<tr>
					<td width="14"></td>
					<td width="217">本学期课程门数：11门</td>
					<td width="282">本学期课程学分：26.5学分</td>
					<td width="245">导师签字：</td>
				</tr>
			</table>
			--%>
		</div>

		<%-- 
		<div id="creating"
			style="position: absolute; top: 245; z-index: 0; visibility: hidden; height: 74">
			<table width=100% border=0 cellspacing=0 cellpadding=0 ID="Table1">
				<tr>
					<td width=2%></td>
					<td align="center">
						<table border=0 cellspacing=0 cellpadding=0 width=330>
							<tr>
								<td bgcolor=#ff9900 align="center">
									<table width="100%" height=70 border=0 cellspacing=2
										cellpadding=0 ID="Table2">
										<tr>
											<td bgcolor=#eeeeee align=center width="100%" height="100%"
												class="xz">系统正在缩小课表, 请稍候...</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td width=2%></td>
				</tr>
			</table>
		</div>
		<div id="reading"
			style="position: absolute; top: 245; z-index: 0; visibility: hidden; height: 74">
			<table width=100% border=0 cellspacing=0 cellpadding=0 ID="Table1">
				<tr>
					<td width=2%></td>
					<td align="center">
						<table border=0 cellspacing=0 cellpadding=0 width=330>
							<tr>
								<td bgcolor=#ff9900 align="center">
									<table width="100%" height=70 border=0 cellspacing=2
										cellpadding=0 ID="Table2">
										<tr>
											<td bgcolor=#eeeeee align=center width="100%" height="100%"
												class="xz">系统正在读取课表, 请稍候...</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td width=2%></td>
				</tr>
			</table>
		</div>
	--%>
	</form>
</body>


</html>
