package edu.hnuc.we.interceptor;


import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * @author xxmodd
 * 管理员权限限认证拦截器(仅管理员)
 * 
 */
public class AdminAuthInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session = context.getSession();
		if(session.get("admin")==null){
			return "reToAdminLogin";
		}
		return invocation.invoke();
	}
	
}
