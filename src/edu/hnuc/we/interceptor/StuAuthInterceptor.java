package edu.hnuc.we.interceptor;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

/**
 * @author xxmodd
 * 管理员权限限认证拦截器(仅管理员)
 * 
 */
public class StuAuthInterceptor extends AbstractInterceptor {
//	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session = context.getSession();
		if(session.get("user")==null){
			return "reToLogin";
		}
		return invocation.invoke();
	}
	
}
