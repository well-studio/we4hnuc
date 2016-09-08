<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!doctype html>
<html class="no-js">
<%@include file="../WEB-INF/common/admin/head.jsp" %>
  <title>Amaze UI Admin help Examples</title>
  <meta name="description" content="这是一个 help 页面">
  <meta name="keywords" content="help">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<%@include file="../WEB-INF/common/admin/header.jsp" %>

<div class="am-cf admin-main">
  <%@include file="../WEB-INF/common/admin/sidebar.jsp" %>

  <!-- content start -->
  <div class="admin-content">
    <div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">帮助页面</strong> /
          <small>Help Page</small>
        </div>
      </div>

      <hr/>

      <div class="am-g">
        <div class="am-u-sm-12 am-u-sm-centered">
          <h2>Amaze UI 1.0.0 Beta</h2>
          <p>对于 Amaze UI，我们不是创造者。</p>
          <p>Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。</p>
          <p>感谢开源！感谢有你！</p>
          <hr/>
        </div>

        <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
          <h3>Bug 反馈</h3>
          <p>感谢对 Amaze UI 的关注和支持，如遇到 Bug 或者使用问题，可以通过以下途径反馈给我们：</p>
          <ol>
            <li>在 GitHub 项目主页提交 <a href="">Issue</a>。</li>
            <li>在 GitHub 项目主页提交 <a href="">Issue</a>。</li>
          </ol>
          <p>反馈注意事项</p>
          <p>为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。</p>
          <p>下面的几个链接是我们在几个在线调试工具上建的页面， 已经引入了 Amaze UI 样式和脚本，你可以选择你喜欢的工具【Fork】一份， 把要有问题的场景粘在里面，反馈给我们。</p>
          <ol>
            <li><a href="http://jsbin.com/kijiqu/1/edit?html,output" target="_blank">JSBin</a> </li>
            <li><a href="http://jsfiddle.net/hegfirose/W22fV/" target="_blank">JSFiddle</a> </li>
            <li><a href="http://codepen.io/minwe/pen/AEeup" target="_blank">CodePen</a> </li>
          </ol>
        </div>
      </div>
    </div>

    <%@include file="../WEB-INF/common/admin/footer.jsp" %>

  </div>
  <!-- content end -->

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="<%=path %>/plugins/AmazeUI-2.7.1/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
</body>
</html>

