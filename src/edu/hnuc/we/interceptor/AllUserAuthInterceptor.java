package edu.hnuc.we.interceptor;


import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * @author xxmodd
 * 用户权限认证拦截器(包括管理员和普通用户)
 * 
 */
public class AllUserAuthInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session = context.getSession();
		if(session.get("user")==null&&session.get("admin")==null){
			return "reToLogin";
		}
		return invocation.invoke();
	}
	
}
