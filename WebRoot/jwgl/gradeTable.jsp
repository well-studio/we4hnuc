<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String gradeTable = (String)request.getSession().getAttribute("grade");
	//System.out.print(gradeTable);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=path%>">

<title>查询成绩结果 | HNUC</title>
<%--
<meta name="viewport" content="width=device-width, initial-scale=1.0">
--%>
<meta http-equiv="description" content="查询成绩结果">
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
		<h1>成绩信息如下:</h1>
		<%= gradeTable%>
		<%-- 
		<table class="am-table am-table-striped am-table-hover">
			<tr>
				<td>通过否</td>
				<td>开课学期</td>
				<td><p align="center">课程名称
				</td>
				<td>总成绩</td>
				<td>绩点</td>
				<td>学分</td>
				<td>学时</td>
				<td>课程性质</td>
				<td><p align="center">课程类别
				</td>
				<td><p align="center">考试性质
				</td>
				<td><p align="center">考试方式
				</td>
				<td><p align="center">标志</p></td>
				<td>补重学期</td>
			</tr>
			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;C语言程序设计 A</td>
				<td>72</td>
				<td>5</td>
				<td>2.5</td>
				<td>40</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;C语言程序设计实验</td>
				<td>优秀</td>
				<td>9.25</td>
				<td>2.5</td>
				<td>40</td>
				<td>必修</td>
				<td>实践性教学环节</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;大学生心理健康教育</td>
				<td>88</td>
				<td>1.65</td>
				<td>.5</td>
				<td>8</td>
				<td>必修</td>
				<td>公共基础课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>Ｘ</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;大学英语（一）</td>
				<td><font color=red>56</font></td>
				<td>0</td>
				<td>0</td>
				<td>64</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;大学英语（一）</td>
				<td>60</td>
				<td>4</td>
				<td>4</td>
				<td>64</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>补考1</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>2015-2016-2</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;高等数学（一）</td>
				<td>74</td>
				<td>10</td>
				<td>5</td>
				<td>80</td>
				<td>必修</td>
				<td>公共基础课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考试</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;计算机导论</td>
				<td>61</td>
				<td>2</td>
				<td>2</td>
				<td>32</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;计算机导论实验</td>
				<td>73</td>
				<td>3</td>
				<td>1.5</td>
				<td>24</td>
				<td>必修</td>
				<td>实践性教学环节</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;入学教育及军事理论与训练</td>
				<td>70</td>
				<td>2.55</td>
				<td>1.5</td>
				<td>0</td>
				<td>必修</td>
				<td>实践性教学环节</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;思想道德修养与法律基础</td>
				<td>良好</td>
				<td>8.1</td>
				<td>3</td>
				<td>48</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;体育（一）</td>
				<td>63</td>
				<td>1.5</td>
				<td>1.5</td>
				<td>30</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;线性代数 A</td>
				<td>74</td>
				<td>6</td>
				<td>3</td>
				<td>48</td>
				<td>必修</td>
				<td>学科共同课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;形势与政策</td>
				<td>良好</td>
				<td>1.35</td>
				<td>.5</td>
				<td>8</td>
				<td>必修</td>
				<td>公共基础课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>Ｘ</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;中国文化概论</td>
				<td><font color=red>48</font></td>
				<td>0</td>
				<td>0</td>
				<td>32</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>正常考试</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td>√</td>
				<td><nobr>2015-2016-1</nobr></td>
				<td>&nbsp;中国文化概论</td>
				<td>60</td>
				<td>2</td>
				<td>2</td>
				<td>32</td>
				<td>必修</td>
				<td>通识教育必修课</td>
				<td><nobr>补考1</nobr></td>
				<td>考查</td>
				<td>&nbsp;</td>
				<td>2015-2016-2</td>
			</tr>

			<input type="hidden" name="iCount" value=15>
		</table>
		<table class="am-table am-table-striped am-table-hover">
			<tr>
				<td><nobr>
						应修总学分：23.5&nbsp;（必修：23.5&nbsp;限选：0&nbsp;院系任选：0&nbsp;全校选修：0）&nbsp;&nbsp;<br>
						<nobr>
							已获得总学分：29.5&nbsp;（必修：29.5&nbsp;限选：0&nbsp;院系任选：0&nbsp;全校选修：0）&nbsp;&nbsp;<br>平均学分绩点：1.59<br>所修总学时：454&nbsp;&nbsp;&nbsp;<br>课程总门数：13&nbsp;&nbsp;&nbsp;<br>不及格门数：0<br>&nbsp;&nbsp;&nbsp;&nbsp;
						</nobr>
				</td>
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
