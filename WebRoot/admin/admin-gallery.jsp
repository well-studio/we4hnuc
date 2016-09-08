<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!doctype html>
<html class="no-js">
<%@include file="../WEB-INF/common/admin/head.jsp" %>
  <title>Amaze UI Admin gallery Examples</title>
  <meta name="description" content="这是一个 gallery 页面">
  <meta name="keywords" content="gallery">
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
          <strong class="am-text-primary am-text-lg">相册</strong> / <small>Gallery</small>
        </div>
      </div>

      <hr>

      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt=""/>
            <div class="gallery-title">君可见漫天落霞</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt=""/>
            <div class="gallery-title">此刻鲜花满天幸福在身边</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-4.jpg" alt=""/>
            <div class="gallery-title">你当我是浮夸吧</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-4.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt=""/>
            <div class="gallery-title">斜阳染幽草 几度飞红</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt=""/>
            <div class="gallery-title">你当我是浮夸吧</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt=""/>
            <div class="gallery-title">君可见漫天落霞</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt=""/>
            <div class="gallery-title">你当我是浮夸吧</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt=""/>
            <div class="gallery-title">君可见漫天落霞</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt=""/>
            <div class="gallery-title">斜阳染幽草 几度飞红</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
      </ul>

      <div class="am-margin am-cf">
        <hr/>
        <p class="am-fl">共 15 条记录</p>
        <ol class="am-pagination am-fr">
          <li class="am-disabled"><a href="#">&laquo;</a></li>
          <li class="am-active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">&raquo;</a></li>
        </ol>
      </div>
    </div>

    <%@ include file="../WEB-INF/common/admin/footer.jsp"%>

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

