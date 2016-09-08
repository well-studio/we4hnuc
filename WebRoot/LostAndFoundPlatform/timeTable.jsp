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
	<h1 style='color:rgba(254,123,38,1)'>欢迎您~***曾胡洪童鞋***</h1>
</center>
<br />
<center>
	<hr style='color:rgba(254,123,38,1)' />
	<h2 style='color:rgba(254,123,38,1)'>成绩信息如下</h2>
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
</head>
<body topmargin="0" leftmargin="0">
	<div align="center" class="am-scrollable-horizontal">
		<%-- 
		<table border="0" width="100%" height="12" cellspacing="0"
			cellpadding="0">
			<tr>
				<td height="26" bgcolor="#E8F8FF"><a
					href="Xk_CjZbfind.asp?datetime=2016-9-5 15:22:59"><img
						src="images/return.gif" border=0></td>
			</tr>
			<tr>
				<td height="23" bgcolor="#588FC7"><font color="#FFFFFF">&nbsp;
						成绩查询 </font></td>
			</tr>
		</table>
		--%>
		<form method="post" name="Form1"
			action='Xk_CjZblist.asp?datetime=2016-9-5 15:22:59'
			onsubmit="return submitpage()">
			<table border="1" width="100%" bordercolorlight="#588FC7"
				cellspacing="0" cellpadding="0" bordercolor="#588FC7"
				bordercolordark="#ffffff" id=mxh
				class="am-table am-table-bordered am-table-striped am-table-hover">
				<tr class="am-success">

					<td width="25" height="23" align="center">通过否</td>

					<td width="73" height="23" align="center">开课学期</td>

					<td width="162" height="23"><p align="center">课程名称</td>

					<td width="30" height="23" align="center">总成绩</td>

					<td width="30" headers="23" align="center">绩点</td>

					<td width="30" height="23" align="center">学分</td>

					<td width="30" height="23" align="center">学时</td>

					<td width="32" height="23" align="center">课程性质</td>

					<td width="96" height="23"><p align="center">课程类别</td>

					<td width="64" height="23"><p align="center">考试性质</td>

					<td width="28" height="23"><p align="center">考试方式</td>

					<td width="31" height="23"><p align="center">标志</p></td>

					<td width="83" height="23" align="center">补重学期</td>

				</tr>

				<tr ID='tr1_1' onClick="javascript:gb_bgcolor(this,'1_1');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=01192&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;WEB程序设计</td>

					<td width="30" height="22" align="center">优秀</td>

					<td width="30" height="22" align="center">7.4</td>

					<td width="30" height="22" align="center">2</td>

					<td width="30" height="22" align="center">32</td>

					<td width="32" height="22" align="center">限选</td>

					<td width="96" height="22" align="center">专业选修课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A1"></a>

				<tr ID='tr1_2' onClick="javascript:gb_bgcolor(this,'1_2');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=03655&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;Web程序设计实验</td>

					<td width="30" height="22" align="center">优秀</td>

					<td width="30" height="22" align="center">5.55</td>

					<td width="30" height="22" align="center">1.5</td>

					<td width="30" height="22" align="center">24</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">实践性教学环节</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A2"></a>

				<tr ID='tr1_3' onClick="javascript:gb_bgcolor(this,'1_3');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=02880&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;操作系统A</td>

					<td width="30" height="22" align="center">87</td>

					<td width="30" height="22" align="center">10.5</td>

					<td width="30" height="22" align="center">3.5</td>

					<td width="30" height="22" align="center">56</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">学科共同课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A3"></a>

				<tr ID='tr1_4' onClick="javascript:gb_bgcolor(this,'1_4');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=03745&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;大学英语拓展课</td>

					<td width="30" height="22" align="center">75</td>

					<td width="30" height="22" align="center">4</td>

					<td width="30" height="22" align="center">2</td>

					<td width="30" height="22" align="center">32</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">通识教育必修课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A4"></a>

				<tr ID='tr1_5' onClick="javascript:gb_bgcolor(this,'1_5');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=00862&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;概率论与数理统计A</td>

					<td width="30" height="22" align="center">91</td>

					<td width="30" height="22" align="center">13.2</td>

					<td width="30" height="22" align="center">4</td>

					<td width="30" height="22" align="center">64</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">学科共同课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A5"></a>

				<tr ID='tr1_6' onClick="javascript:gb_bgcolor(this,'1_6');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=03146&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;毛泽东思想和中国特色社会主义理论体系概论（一）</td>

					<td width="30" height="22" align="center">87</td>

					<td width="30" height="22" align="center">9</td>

					<td width="30" height="22" align="center">3</td>

					<td width="30" height="22" align="center">48</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">通识教育必修课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A6"></a>

				<tr ID='tr1_7' onClick="javascript:gb_bgcolor(this,'1_7');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=01211&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;数字逻辑</td>

					<td width="30" height="22" align="center">96</td>

					<td width="30" height="22" align="center">10</td>

					<td width="30" height="22" align="center">2.5</td>

					<td width="30" height="22" align="center">40</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">学科共同课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A7"></a>

				<tr ID='tr1_8' onClick="javascript:gb_bgcolor(this,'1_8');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=02848&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;算法设计与分析（计）</td>

					<td width="30" height="22" align="center">75</td>

					<td width="30" height="22" align="center">5</td>

					<td width="30" height="22" align="center">2.5</td>

					<td width="30" height="22" align="center">40</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">专业必修课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A8"></a>

				<tr ID='tr1_9' onClick="javascript:gb_bgcolor(this,'1_9');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=01321&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;体育（四）</td>

					<td width="30" height="22" align="center">78</td>

					<td width="30" height="22" align="center">3.45</td>

					<td width="30" height="22" align="center">1.5</td>

					<td width="30" height="22" align="center">30</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">通识教育必修课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A9"></a>

				<tr ID='tr1_10' onClick="javascript:gb_bgcolor(this,'1_10');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=02972&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;武侠小说与武侠文化X</td>

					<td width="30" height="22" align="center">80</td>

					<td width="30" height="22" align="center">5.4</td>

					<td width="30" height="22" align="center">2</td>

					<td width="30" height="22" align="center">32</td>

					<td width="32" height="22" align="center">任选</td>

					<td width="96" height="22" align="center">全院选修课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A10"></a>

				<tr ID='tr1_11' onClick="javascript:gb_bgcolor(this,'1_11');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=01400&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;形势与政策</td>

					<td width="30" height="22" align="center">优秀</td>

					<td width="30" height="22" align="center">1.85</td>

					<td width="30" height="22" align="center">.5</td>

					<td width="30" height="22" align="center">8</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">公共基础课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考查</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A11"></a>

				<tr ID='tr1_12' onClick="javascript:gb_bgcolor(this,'1_12');"
					onMouseOver="this.style.cursor='hand'"
					onDblClick="javascript:js_callpage5('Xk_CjZbBlist.asp?Xnxqh=2015-2016-2&Kcbm=01957&XH=140930021&Datetime=2016-9-5 15:22:59');">

					<td width="25" height="22" align="center">√</td>

					<td width="73" height="22" align="center"><nobr>2015-2016-2</nobr></td>

					<td width="162" height="22" align="left">&nbsp;中国近现代史纲要</td>

					<td width="30" height="22" align="center">78</td>

					<td width="30" height="22" align="center">4.6</td>

					<td width="30" height="22" align="center">2</td>

					<td width="30" height="22" align="center">32</td>

					<td width="32" height="22" align="center">必修</td>

					<td width="96" height="22" align="center">通识教育必修课</td>

					<td width="64" height="22" align="center"><nobr>正常考试</nobr></td>

					<td width="28" height="22" align="center">考试</td>

					<td height="22" align="center" width="31" title="">&nbsp;</td>

					<td height="22" align="center" width="83">&nbsp;</td>

				</tr>
				<a name="A12"></a>

				<input type="hidden" name="iCount" value=12>

			</table>

			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><nobr>
							应修总学分：27&nbsp;（必修：23&nbsp;限选：2&nbsp;院系任选：2&nbsp;全校选修：2）&nbsp;&nbsp;<br>

							<nobr>
								已获得总学分：27&nbsp;（必修：23&nbsp;限选：2&nbsp;院系任选：0&nbsp;全校选修：2）&nbsp;&nbsp;<br>平均学分绩点：2.96<br>所修总学时：438&nbsp;&nbsp;&nbsp;<br>课程总门数：12&nbsp;&nbsp;&nbsp;<br>不及格门数：0<br>
								<%--
								<INPUT TYPE="button" name="cmdok" value="打印成绩"
									class="buttonstyle" onMouseOver="this.style.cursor='hand'"
									onclick="javascript:printsetup();">&nbsp;&nbsp;&nbsp;&nbsp;
								--%>
							</nobr></td>
				</tr>
			</table>
		</form>
	</div>
</body>
<hr style='color:rgba(254,123,38,1)' />
<h2 style='color:rgba(254,123,38,1)'>课表信息如下</h2>
<html>

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
