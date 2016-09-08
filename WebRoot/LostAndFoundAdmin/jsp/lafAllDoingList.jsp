<%@ page language="java"
	import="java.util.*,edu.hnuc.we.entity.PageBean,edu.hnuc.we.entity.LostAndFound"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>失物招领ing</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/amazeui.css" />
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/core.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/menu.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/index.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/admin.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/page/typography.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/css/page/form.css" />

<script type="text/javascript">
	function mbar(sobj) {
		var docurl = sobj.options[sobj.selectedIndex].value;
		if (docurl != "") {
			window.location = docurl;
		}
	}
</script>
</head>
<body>
	<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">
		<div class="am-topbar-left am-hide-sm-only">
			<a href="index.html" class="logo"><span>LostAndFound</span><i
				class="zmdi zmdi-layers"></i></a>
		</div>

		<div class="contain">
			<ul class="am-nav am-navbar-nav am-navbar-left">

				<li><h4 class="page-title">失物招领ing</h4></li>
			</ul>

			<ul class="am-nav am-navbar-nav am-navbar-right">
				<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
				<%--
				<li class="hidden-xs am-hide-sm-only">
					<form role="search" class="app-search">
						<input type="text" placeholder="Search${pageContext.request.contextPath }/LostAndFoundAdmin." class="form-control">
						<a href=""><img src="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/img/search.png"></a>
					</form>
				</li>
				 --%>
			</ul>
		</div>
	</header>
	<!-- end page -->

	<jsp:include page="../common/leftBar.jsp"></jsp:include>


		<!--	<div class="am-g">-->
		<!-- ============================================================== -->
<!-- Start right Content here -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
			<div class="card-box">
				<!-- Row start -->
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-6">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<button type="button" class="am-btn am-btn-default">
									<span class="am-icon-plus"></span> 新增
								</button>
								<button type="button" class="am-btn am-btn-default">
									<span class="am-icon-save"></span> 保存
								</button>
								<button type="button" class="am-btn am-btn-default">
									<span class="am-icon-archive"></span> 审核
								</button>
								<button type="button" class="am-btn am-btn-default">
									<span class="am-icon-trash-o"></span> 删除
								</button>
							</div>
						</div>
					</div>
					<div class="am-u-sm-12 am-u-md-3">
					<form action="laf_searchDoingInfo.hnuc" method="post">
						<div class="am-input-group am-input-group-sm">
							<input type="text" name="keyWord" class="am-form-field"> <span
								class="am-input-group-btn">
								<button class="am-btn am-btn-default" type="submit">搜索</button>
							</span>
						</div>
					</form>
					</div>
				</div>
				<!-- Row end -->

				<!-- Row start -->
				<div class="am-g">
					<div class="am-u-sm-12">
						<form class="am-form">
							<table
								class="am-table am-table-striped am-table-hover table-main">
								<thead>
									<tr>
										<th class="table-check"><input type="checkbox" /></th>
										<th class="table-id">ID</th>
										<th class="table-title">Detail</th>
										<th class="table-type">类别</th>
										<th class="table-author am-hide-sm-only">发布人</th>
										<th class="table-date am-hide-sm-only">发布日期</th>
										<th class="table-type">手机号</th>
										<th class="table-set">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${lafPage.pageData }" var="laf">
										<tr>
											<td><input type="checkbox" /></td>
											<td>${laf.laf_id}</td>
											<td>
											<a href="${pageContext.request.contextPath }/laf_getInfoById.hnuc?lafId=${laf.laf_id }" target="_blank">
												${laf.laf_mainDetail }
											</a>
											</td>
											<td><c:if test="${laf.laf_type == 0}">
												招领启示
											</c:if> <c:if test="${laf.laf_type == 1}">
												寻物启示
											</c:if></td>
											<td class="am-hide-sm-only">${laf.laf_name }</td>
											<td class="am-hide-sm-only">${laf.laf_pubtime}</td>
											<td>${laf.laf_phone }</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<a
															href="${pageContext.request.contextPath }/index.jsp">
														<button
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑
														</button>
														</a>
														<a
															href="${pageContext.request.contextPath }/laf_getInfoById.hnuc?lafId=${laf.laf_id }"
															target="_blank">
															<button
																class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
																<span class="am-icon-copy"></span> 详情
															</button>
														</a>
														<%-- 
														<button
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
														--%>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div>
							<c:if test="${empty soso}">
								<ul data-am-widget="pagination"
									class="am-pagination am-pagination-select">

									<li class="am-pagination-prev "><a
										href="laf_getAllDoingInfoAdmin.hnuc?lafPage.currentPage=${lafPage.currentPage - 1}"
										class="">上一页</a></li>

									<li class="am-pagination-select"><select
										onchange="mbar(this)">
											<% 
									          	PageBean<LostAndFound> list = (PageBean<LostAndFound>)request.getAttribute("lafPage");
												for(int i = 1 ; i <= list.getTotalPage(); i++){
													request.setAttribute("i", i);
												%>
											<option
												value="laf_getAllDoingInfoAdmin.hnuc?lafPage.currentPage=${i}"
												class=""
												<c:if test="${i == lafPage.currentPage}">selected="selected"</c:if>>
												<%=i %>
											</option>
											<% 
												}
											  %>
									</select></li>

									<li class="am-pagination-next "><a
										href="laf_getAllDoingInfoAdmin.hnuc?lafPage.currentPage=${lafPage.currentPage + 1}"
										class="">下一页</a></li>

								</ul>
							</c:if>
							</div>
							<hr />
							<c:if test="${! empty soso}">
							  	<p style="text-align: center;">共搜索到 <span style="color: red;"> ${fn:length(lafPage.pageData) }</span>  条记录</p>
							</c:if>
						</form>
					</div>

				</div>
				<!-- Row end -->
			</div>
		</div>
	</div>
	<!-- end right Content here -->
	<!--</div>-->

	<!-- navbar -->
	<a href="admin-offcanvas"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}">
		<!--<i class="fa fa-bars" aria-hidden="true"></i>-->
	</a>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/js/jquery-2.1.0.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/js/amazeui.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/js/app.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/LostAndFoundAdmin/assets/js/blockUI.js"></script>
</body>

</html>