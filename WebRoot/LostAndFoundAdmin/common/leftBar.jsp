<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="admin">
	<!--<div class="am-g">-->
	<!-- ========== Left Sidebar Start ========== -->
	<!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
				<div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
	<!-- sidebar start -->
	<div class="admin-sidebar am-offcanvas  am-padding-0"
		id="admin-offcanvas">
		<div class="am-offcanvas-bar admin-offcanvas-bar">
			<!-- User -->
			<div class="user-box am-hide-sm-only">
				<div class="user-img">
					<a href="${pageContext.request.contextPath }/">
					<img src="${pageContext.request.contextPath}/imgs/hnuc2.jpg"
						class="img-circle img-thumbnail img-responsive">
					</a>
					<div class="user-status offline">
						<%--
	                            <i class="am-icon-dot-circle-o" aria-hidden="true"></i>
	                             --%>
					</div>
				</div>
				<h5>
					<a href="#">湖南商学院 | 校宣传部</a>
				</h5>
				<%--
	                        <ul class="list-inline">
	                            <li>
	                                <a href="#">
	                                    <i class="fa fa-cog" aria-hidden="true"></i>
	                                </a>
	                            </li>

	                            <li>
	                                <a href="#" class="text-custom">
	                                    <i class="fa fa-cog" aria-hidden="true"></i>
	                                </a>
	                            </li>
	                        </ul>
	                         --%>
			</div>
			<!-- End User -->

			<ul class="am-list admin-sidebar-list">
				<li>
					<a href="${pageContext.request.contextPath}/admin/admin_getIndexInfo.hnuc">
					<span class="am-icon-home"></span> 首页定制 </a>
				</li>
				<li class="admin-parent"><a class="am-cf"
					data-am-collapse="{target: '#collapse-nav1'}"><span
						class="am-icon-table"></span> 失物招领<span
						class="am-icon-angle-right am-fr am-margin-right"></span></a>
					<ul class="am-list am-collapse admin-sidebar-sub am-in"
						id="collapse-nav1">
						<li><a href="${pageContext.request.contextPath}/admin//laf_getAllDoingInfoAdmin.hnuc"
							class="am-cf"> 正在进行 </a></li>
						<li><a href="${pageContext.request.contextPath}/admin//laf_getAllSucInfoAdmin.hnuc" class="am-cf"> 已完成</a></li>
						<li><a href="${pageContext.request.contextPath}/admin//laf_getAllToCheckInfoAdmin.hnuc" class="am-cf"> 待审核</a></li>
						<li><a href="${pageContext.request.contextPath}/admin//laf_getAllTimeOutInfoAdmin.hnuc"> 已失效</a></li>
					</ul></li>
				<li>
					<a href="${pageContext.request.contextPath}/admin/admin_getAllImgNames.hnuc">
					<span class="am-icon-file-image-o"></span> 图片管理 </a>
				</li>
			</ul>

			<div style="position: fixed;bottom: 50px;left:100px;">
			<a target="_blank" href="${pageContext.request.contextPath }/admin/admin_changePsw.hnuc">修改密码</a>
			</div>
		</div>

</div>
<!-- sidebar end -->

<!--</div>
			</div>
		</div>-->
<!-- ========== Left Sidebar end ========== -->