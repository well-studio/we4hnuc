<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
 %>
<!DOCTYPE html>
<html>
<head>
<title>跳转提示</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel='stylesheet prefetch'
	href='<%=path%>/plugins/bootstrap/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='<%=path %>/plugins/font-awesome-4.6.3/css/font-awesome.min.css'>
<style type="text/css">
.box {
	height: 200px;
	position: fixed;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	margin: auto;
}
body{

	background: <s:if test="#session.info=='success'">
          				 #5eb95e;
     				</s:if>
				    <s:else>
				        #dd514c;
				    </s:else>
}
</style>
</head>
<body>
	<div class="box">
		<div class="container-fluid">
		 <div class="row">
				<div class="col-sm-4 col-sm-offset-4">
					<div class="panel  
					<s:if test="#session.info=='success'">
          				 panel-success
     				</s:if>
				    <s:else>
				         panel-danger
				    </s:else>
					">
						<div class="panel-heading" style="text-align: center; font-size: 40px">
							<s:if test="#session.info=='success'">
		          				修改成功<i class="fa fa-check" style="font-size: 40px" aria-hidden="true"></i>
		     				</s:if>
						    <s:else>
						    	修改失败
						    </s:else>
						</div>
						<div class="panel-body" style="text-align: center; font-size: 40px">
							<label id="second">
								<s:if test="#session.info=='success'">
         						  3
							    </s:if> <s:else>
							      5
							    </s:else>
							</label>秒后自动跳转
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">  
	    var t=document.getElementById("second").innerHTML;
	    //获取显示秒数的元素，通过定时器来更改秒数。
	    var second = document.getElementById("second");
	    //document.write(second.innerHTML);
	    function settime(){
	    	second.innerHTML = t-1;
	    	t--;
	    	if(t<=0){
	    		clearInterval(time);
	    		window.location.href = "<%=path %>/admin/admin_getIndexInfo.hnuc";
	    		
	    	}
	    }
    	var time = setInterval(settime,1000);
 </script>
</body>
</html>