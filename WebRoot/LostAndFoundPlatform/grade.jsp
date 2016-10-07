<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'grade.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body topmargin="0" leftmargin="0">
<hr style="color:rgba(254,123,38,1)" />
<center>
	<h1 style='color:rgba(254,123,38,1)'>欢迎你~***莫丹***</h1>
</center>
<br />
<center>
	<h2 style='color:rgba(254,123,38,1)'>成绩信息如下</h2>
</center>
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
</html>
