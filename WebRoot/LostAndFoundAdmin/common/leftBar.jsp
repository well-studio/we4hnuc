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
					<img src="${pageContext.request.contextPath}/imgs/hnuc2.jpg"
						class="img-circle img-thumbnail img-responsive">
					<div class="user-status offline">
						<%--
	                            <i class="am-icon-dot-circle-o" aria-hidden="true"></i>
	                             --%>
					</div>
				</div>
				<h5>
					<a href="#">湖南商学院</a>
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
				<li><a
					href="${pageContext.request.contextPath}/LostAndFoundAdmin/jsp/index.jsp"><span
						class="am-icon-home"></span> 首页 </a></li>
				<li class="admin-parent"><a class="am-cf"
					data-am-collapse="{target: '#collapse-nav1'}"><span
						class="am-icon-table"></span> 失物招领 <span
						class="am-icon-angle-right am-fr am-margin-right"></span></a>
					<ul class="am-list am-collapse admin-sidebar-sub am-in"
						id="collapse-nav1">
						<li><a href="${pageContext.request.contextPath}/laf_getAllDoingInfoAdmin.hnuc"
							class="am-cf"> 正在进行 </span></a></li>
						<li><a href="${pageContext.request.contextPath}/laf_getAllSucInfoAdmin.hnuc" class="am-cf"> 已完成 </span></a></li>
						<li><a href="${pageContext.request.contextPath}/laf_getAllToCheckInfoAdmin.hnuc" class="am-cf"> 待审核 </span></a></li>
						<li><a href="${pageContext.request.contextPath}/laf_getAllTimeOutInfoAdmin.hnuc"> 已失效</a></li>
					</ul></li>
			</ul>
		</div>
</div>
<!-- sidebar end -->

<!--</div>
			</div>
		</div>-->
<!-- ========== Left Sidebar end ========== -->