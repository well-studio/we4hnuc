<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String courseTable = (String)request.getSession().getAttribute("course");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=path%>">

<title>查询课表结果 | HNUC</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="description" content="查询课表结果">
<%--
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
--%>
<link rel='stylesheet prefetch'
	href='<%=path%>/plugins/AmazeUI-2.7.1/assets/css/amazeui.min.css'>
<style type="text/css">
td  
{  
 white-space: nowrap;  
}
</style>
</head>
<body>
	<div class=".am-avg-sm-*">
	<h1>课表信息如下:</h1>
	<%= courseTable%>

		<%-- 
		<table border="1" width="98%" bordercolorlight="#588FC7"
			cellspacing="0" cellpadding="0" bordercolor="#588FC7"
			bordercolordark="#ffffff" height="78%">
			<tr>
				<td width="90" height="28" align="center"></td>
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
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001655课程编码：090428课程名称：计算机导论实验[东马校区]授课教师：曾阳艳开课时间：10102上课周次：4-15开课地点：基础实验室7（东马）上课班级：计科1501-03'>计算机导论实验[东马校区]<br>曾阳艳<br>4-15<br>基础实验室7（东马）<br>计科1501-03</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001790课程编码：030431课程名称：线性代数 A[东马校区]授课教师：李芸开课时间：20102上课周次：4-18开课地点：2305(东马)上课班级：计科1501-04'>线性代数
						A[东马校区]<br>李芸<br>4-18<br>2305(东马)<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001785课程编码：030412课程名称：高等数学（一）[东马校区]授课教师：吕翠芳开课时间：30102上课周次：4-18双周开课地点：2305(东马)上课班级：计科1501-04'>高等数学（一）[东马校区]<br>吕翠芳<br>4-18双周<br>2305(东马)<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001639课程编码：090164课程名称：C语言程序设计 A[东马校区]授课教师：申炳昕开课时间：40102上课周次：4-17开课地点：1206（东马）上课班级：计科1501-02'>C语言程序设计
						A[东马校区]<br>申炳昕<br>4-17<br>1206（东马）<br>计科1501-02</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001790课程编码：030431课程名称：线性代数 A[东马校区]授课教师：李芸开课时间：50102上课周次：4-18单周开课地点：2504（东马）上课班级：计科1501-04'>线性代数
						A[东马校区]<br>李芸<br>4-18单周<br>2504（东马）<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
			</tr>
			<tr>
				<td width="90" height="28" align="center">&nbsp;0304节</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001684课程编码：080104课程名称：大学英语（一）[东马校区]授课教师：徐俊林开课时间：20304上课周次：4-18开课地点：2302(东马)上课班级：计科1501-03'>大学英语（一）[东马校区]<br>徐俊林<br>4-18<br>2302(东马)<br>计科1501-03</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001645课程编码：090214课程名称：计算机导论[东马校区]授课教师：杨胜杰开课时间：30304上课周次：4-18开课地点：2505（东马）上课班级：计科1501-03'>计算机导论[东马校区]<br>杨胜杰<br>4-18<br>2505（东马）<br>计科1501-03</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001684课程编码：080104课程名称：大学英语（一）[东马校区]授课教师：徐俊林开课时间：50304上课周次：4-18单周开课地点：2304(东马)上课班级：计科1501-03'>大学英语（一）[东马校区]<br>徐俊林<br>4-18单周<br>2304(东马)<br>计科1501-03</a><br>------------<br>
					<a href=''
					title='开课编号：20152001684课程编码：080104课程名称：大学英语（一）[东马校区]授课教师：徐俊林开课时间：50304上课周次：4-18双周开课地点：语音室5（东马）上课班级：计科1501-03'>大学英语（一）[东马校区]<br>徐俊林<br>4-18双周<br>语音室5（东马）<br>计科1501-03</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
			</tr>
			<tr>
				<td width="90" height="28" align="center">&nbsp;0506节</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001931课程编码：160209课程名称：大学生心理健康教育[东马校区]授课教师：曾璐开课时间：20506上课周次：4-10开课地点：2302(东马)上课班级：计科1501-04'>大学生心理健康教育[东马校区]<br>曾璐<br>4-10<br>2302(东马)<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001659课程编码：090429课程名称：C语言程序设计实验[东马校区]授课教师：申炳昕开课时间：30506上课周次：4-17开课地点：基础实验室2（东马）上课班级：计科1501-02'>C语言程序设计实验[东马校区]<br>申炳昕<br>4-17<br>基础实验室2（东马）<br>计科1501-02</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001785课程编码：030412课程名称：高等数学（一）[东马校区]授课教师：吕翠芳开课时间：40506上课周次：4-18开课地点：2304(东马)上课班级：计科1501-04'>高等数学（一）[东马校区]<br>吕翠芳<br>4-18<br>2304(东马)<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001785课程编码：030412课程名称：高等数学（一）[东马校区]授课教师：吕翠芳开课时间：50506上课周次：4-18开课地点：2504（东马）上课班级：计科1501-04'>高等数学（一）[东马校区]<br>吕翠芳<br>4-18<br>2504（东马）<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
			</tr>
			<tr>
				<td width="90" height="28" align="center">&nbsp;0708节</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001639课程编码：090164课程名称：C语言程序设计 A[东马校区]授课教师：申炳昕开课时间：10708上课周次：4-15双周开课地点：1207（东马）上课班级：计科1501-02'>C语言程序设计
						A[东马校区]<br>申炳昕<br>4-15双周<br>1207（东马）<br>计科1501-02</a><br>------------<br>
					<a href=''
					title='开课编号：20152001659课程编码：090429课程名称：C语言程序设计实验[东马校区]授课教师：申炳昕开课时间：10708上课周次：4-15单周开课地点：基础实验室2（东马）上课班级：计科1501-02'>C语言程序设计实验[东马校区]<br>申炳昕<br>4-15单周<br>基础实验室2（东马）<br>计科1501-02</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001963课程编码：140401课程名称：思想道德修养与法律基础[东马校区]授课教师：许冬香开课时间：40708上课周次：4-18开课地点：东马实验楼512上课班级：计科1501-04'>思想道德修养与法律基础[东马校区]<br>许冬香<br>4-18<br>东马实验楼512<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;<a href=''
					title='开课编号：20152001877课程编码：100114课程名称：中国文化概论[东马校区]授课教师：胡军利开课时间：50708上课周次：4-18开课地点：2305(东马)上课班级：计科1501-04'>中国文化概论[东马校区]<br>胡军利<br>4-18<br>2305(东马)<br>计科1501-04</a>
				</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
			</tr>
			<tr>
				<td width="90" height="28" align="center">&nbsp;0910节</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
			</tr>
			<tr>
				<td width="90" height="28" align="center">&nbsp;1112节</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
				<td width="130" height="28" align="center">&nbsp;</td>
			</tr>
			<tr>
				<td height="28" align="center">备 &nbsp;注</td>
				<td height="28" colspan="7">&nbsp;计算机导论实验 曾阳艳; C语言程序设计实验 申炳昕;
					大学生心理健康教育 曾璐;</td>
			</tr>
		</table>
		--%>
</div>
<footer class="am-footer am-footer-default">
<div class="am-footer-miscs">
	<p>由维尔创业工作室提供技术支持</p>
	<p>Copyright &copy; 2016 校宣传部</p>
</div>
</footer>
</body>
</html>
