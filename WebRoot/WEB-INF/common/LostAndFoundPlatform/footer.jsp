<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<footer class="am-footer am-footer-default">
	<div class="am-footer-miscs">
		<p>由维尔创业工作室提供技术支持</p>
		<p><s:property value="#session.indexIteminfo[0][1]"/></p>
	</div>
</footer>
<script src='<%=path %>/plugins/jquery/jquery.min.js'></script>
<script src='<%=path %>/plugins/layer-v2.4/layer/layer.js'></script>
<script src='<%=path %>/plugins/weui/dist/weui.min.js'></script>
<script src='<%=path %>/plugins/AmazeUI-2.7.1/assets/js/amazeui.min.js'></script>
	<!-- 
	//用于预览
	private String[] indexbtn_ptitle[];
	private String[] indexbtn_picon[];
	private String[] indexbtn_phref[];
	//用于预览
	private String[] indexpic_ppicaddress[];
	private String[] indexpic_phref[];
	 -->